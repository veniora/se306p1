/*
 *  stageros
 *  Copyright (c) 2008, Willow Garage, Inc.
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program; if not, write to the Free Software
 *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

/**

 @mainpage

 @htmlinclude manifest.html
 **/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

// basic file operations
#include <iostream>
#include <fstream>

#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <signal.h>

// libstage
#include <stage.hh>

// roscpp
#include <ros/ros.h>
#include <boost/thread/mutex.hpp>
#include <boost/thread/thread.hpp>
#include <sensor_msgs/LaserScan.h>
#include <nav_msgs/Odometry.h>
#include <geometry_msgs/Twist.h>
#include <rosgraph_msgs/Clock.h>

#include "tf/transform_broadcaster.h"

#define USAGE "stageros_Project2 <worldfile>"
#define ODOM "odom"
#define BASE_SCAN "base_scan"
#define BASE_POSE_GROUND_TRUTH "base_pose_ground_truth"
#define CMD_VEL "cmd_vel"

//added by chandimal
#define ODOM2 "odom2"
#define BASE_SCAN2 "base_scan2"
#define BASE_POSE_GROUND_TRUTH2 "base_pose_ground_truth2"
#define CMD_VEL2 "cmd_vel2"

class StageNode {
private:
	// Messages that we'll send or receive
	sensor_msgs::LaserScan *laserMsgs;
	nav_msgs::Odometry *odomMsgs;
	nav_msgs::Odometry *groundTruthMsgs;
	rosgraph_msgs::Clock clockMsg;

	// roscpp-related bookkeeping
	ros::NodeHandle n_;

	// A mutex to lock access to fields that are used in message callbacks
	boost::mutex msg_lock;
	//boost::mutex msg_lock2;
	//boost::mutex msg_lock3;
	//boost::mutex msg_lock4;
	//boost::mutex msg_lock5;

	// The models that we're interested in
	std::vector<Stg::ModelLaser *> lasermodels;
	std::vector<Stg::ModelPosition *> positionmodels;
	std::vector<ros::Publisher> laser_pubs_;
	std::vector<ros::Publisher> odom_pubs_;
	std::vector<ros::Publisher> ground_truth_pubs_;
	std::vector<ros::Subscriber> cmdvel_subs_;
	ros::Publisher clock_pub_;

	// A helper function that is executed for each stage model.  We use it
	// to search for models of interest.
	static void ghfunc(Stg::Model* mod, StageNode* node);

	static bool s_update(Stg::World* world, StageNode* node) {
		node->WorldCallback();
		// We return false to indicate that we want to be called again (an
		// odd convention, but that's the way that Stage works).
		return false;
	}

	// Appends the given robot ID to the given message name.  If omitRobotID
	// is true, an unaltered copy of the name is returned.
	const char *mapName(const char *name, size_t robotID);

	tf::TransformBroadcaster tf;

	// Last time that we received a velocity command
	ros::Time base_last_cmd;
	ros::Duration base_watchdog_timeout;

	// Current simulation time
	ros::Time sim_time;

public:
	// Constructor; stage itself needs argc/argv.  fname is the .world file
	// that stage should load.
	StageNode(int argc, char** argv, bool gui, const char* fname, const char* numbots);
	~StageNode();

	// Subscribe to models of interest.  Currently, we find and subscribe
	// to the first 'laser' model and the first 'position' model.  Returns
	// 0 on success (both models subscribed), -1 otherwise.
	int SubscribeModels();

	// Our callback
	void WorldCallback();

	// Do one update of the world.  May pause if the next update time
	// has not yet arrived.
	bool UpdateWorld();

	// Message callback for a MsgBaseVel message, which set velocities.
	void cmdvelReceived(int idx,
			const boost::shared_ptr<geometry_msgs::Twist const>& msg);

	// The main simulator object
	Stg::World* world;
};

// since stageros is single-threaded, this is OK. revisit if that changes!
const char *
StageNode::mapName(const char *name, size_t robotID) {
	if (positionmodels.size() > 1) {
		static char buf[100];
		snprintf(buf, sizeof(buf), "/robot_%u/%s", (unsigned int) robotID,
				name);
		return buf;
	} else
		return name;
}

// ghfunc looks like its the function that adds models
void StageNode::ghfunc(Stg::Model* mod, StageNode* node) {
	if (dynamic_cast<Stg::ModelLaser *>(mod))
		node->lasermodels.push_back(dynamic_cast<Stg::ModelLaser *>(mod));
	if (dynamic_cast<Stg::ModelPosition *>(mod))
		node->positionmodels.push_back(dynamic_cast<Stg::ModelPosition *>(mod));
}

void StageNode::cmdvelReceived(int idx,
		const boost::shared_ptr<geometry_msgs::Twist const>& msg) {
	boost::mutex::scoped_lock lock(msg_lock);
	this->positionmodels[idx]->SetSpeed(msg->linear.x, msg->linear.y,
			msg->angular.z);
	//ROS_INFO("cmdvelReceived %f", msg->linear.x);
	//ROS_INFO("RobotID %i", idx);
	this->base_last_cmd = this->sim_time;
}

StageNode::StageNode(int argc, char** argv, bool gui, const char* fname, const char* numBots) {
	this->sim_time.fromSec(0.0);
	this->base_last_cmd.fromSec(0.0);
	double t;
	ros::NodeHandle localn("~");
	if (!localn.getParam("base_watchdog_timeout", t))
		t = 0.2;
	this->base_watchdog_timeout.fromSec(t);

	// We'll check the existence of the world file, because libstage doesn't
	// expose its failure to open it.  Could go further with checks (e.g., is
	// it readable by this user).
	struct stat s;
	if (stat(fname, &s) != 0) {
		ROS_FATAL("The world file %s does not exist.", fname);
		ROS_BREAK();
	}

	// initialize libstage
	Stg::Init(&argc, &argv);

	if (gui)
		this->world = new Stg::WorldGui(800, 700, "Stage (ROS)");
	else
		this->world = new Stg::World();

	std::stringstream ss;

	ss << "cp " << fname << "/bin/Project2Sample.world temp.world";
	system(ss.str().c_str());
	ss.str(""); // clear ss

	ss << "cp " << fname << "/bin/swarm_world.pgm swarm_world.pgm";
	system(ss.str().c_str());
	ss.str("");

	int i;
	srand(time(NULL));
	std::ofstream worldfile;
	worldfile.open("temp.world", std::ios::out | std::ios::app);
	if (worldfile.is_open()) {
		for (i = 0; i < std::atoi(numBots); ++i){
			// pose [ x:<float> y:<float> z:<float> heading:<float> ]
			// myRobot( pose [ 5 10 0 0 ] name "r0" color "blue")
			//float pose_x = rand()%50;
			//float pose_y = rand()%50;
			float pose_x= 50 * (double)rand() / (double)RAND_MAX - 25;
			float pose_y= 50 * (double)rand() / (double)RAND_MAX - 25;
			ss << "myRobot( pose [ " << pose_x << " " << pose_y << " 0 0 ] name \"r" << i <<"\" color \"blue\")\n";
			worldfile << ss.str();
			ss.str(""); // clear ss
		}
		//command nodes
		ss << "msgRobot( pose [ 26.00 2.00 1.0 0 ] name \"Circling\" color \"red\")\n";
		worldfile << ss.str();
		ss.str("");
		ss << "msgRobot( pose [ -26.00 2.00 1.0 0 ] name \"GoToCircle\" color \"green\")\n";
		worldfile << ss.str();
		ss.str("");
		ss << "msgRobot( pose [ 26.00 -2.00 1.0 0 ] name \"GoToSquare\" color \"orange\")\n";
		worldfile << ss.str();
		ss.str("");
		ss << "msgRobot( pose [ -26.00 -2.00 1.0 0 ] name \"Added\" color \"yellow\")\n";
		worldfile << ss.str();
		ss.str("");
		
		worldfile.close();
	} else {
		std::cout << "Unable to open file";
	}


	// Apparently an Update is needed before the Load to avoid crashes on
	// startup on some systems.
	this->UpdateWorld();
	this->world->Load("temp.world");
	
	// We add our callback here, after the Update, so avoid our callback
	// being invoked before we're ready.
	this->world->AddUpdateCallback((Stg::stg_world_callback_t) s_update, this);

	this->world->ForEachDescendant((Stg::stg_model_callback_t) ghfunc, this);
	if (lasermodels.size() != positionmodels.size()) {
		ROS_FATAL("number of position models and laser models must be equal in "
		"the world file.");
		ROS_BREAK();
	}
	size_t numRobots = positionmodels.size();
	ROS_INFO(
			"found %u position/laser pair%s in the file", (unsigned int)numRobots, (numRobots==1) ? "" : "s");

	this->laserMsgs = new sensor_msgs::LaserScan[numRobots];
	this->odomMsgs = new nav_msgs::Odometry[numRobots];
	this->groundTruthMsgs = new nav_msgs::Odometry[numRobots];
}

// Subscribe to models of interest.  Currently, we find and subscribe
// to the first 'laser' model and the first 'position' model.  Returns
// 0 on success (both models subscribed), -1 otherwise.
//
// Eventually, we should provide a general way to map stage models onto ROS
// topics, similar to Player .cfg files.
int StageNode::SubscribeModels() {
	n_.setParam("/use_sim_time", true);

	for (size_t r = 0; r < this->positionmodels.size(); r++) {
		if (this->lasermodels[r]) {
			this->lasermodels[r]->Subscribe();
		} else {
			ROS_ERROR("no laser");
			return (-1);
		}
		if (this->positionmodels[r]) {
			this->positionmodels[r]->Subscribe();
		} else {
			ROS_ERROR("no position");
			return (-1);
		}

		std::stringstream ss;
		ss << "Robot" << r << "_laser";
		laser_pubs_.push_back(
				n_.advertise<sensor_msgs::LaserScan>(ss.str(), 10));
		ss.str(""); // clear the stringstream
		ss << "Robot" << r << "_odo";
		odom_pubs_.push_back(n_.advertise<nav_msgs::Odometry>(ss.str(), 10));
		ss.str("");
		ss << "Robot" << r << "_truth";
		ground_truth_pubs_.push_back(
				n_.advertise<nav_msgs::Odometry>(ss.str(), 10));
		ss.str("");
		ss << "Robot" << r << "_vel";
		cmdvel_subs_.push_back(
				n_.subscribe<geometry_msgs::Twist>(ss.str(), 10,
						boost::bind(&StageNode::cmdvelReceived, this, r, _1)));

		ROS_INFO("subscribed to Robot%i_vel", r);
		ROS_INFO("RobotID: %i", r);

	}
	clock_pub_ = n_.advertise<rosgraph_msgs::Clock>("/clock", 10);
	return (0);
}

StageNode::~StageNode() {
	delete[] laserMsgs;
	delete[] odomMsgs;
	delete[] groundTruthMsgs;
}

bool StageNode::UpdateWorld() {
	return this->world->UpdateAll();
}

void StageNode::WorldCallback() {
	boost::mutex::scoped_lock lock(msg_lock);

	this->sim_time.fromSec(world->SimTimeNow() / 1e6);
	// We're not allowed to publish clock==0, because it used as a special
	// value in parts of ROS, #4027.
	if (this->sim_time.sec == 0 && this->sim_time.nsec == 0) {
		ROS_DEBUG(
				"Skipping initial simulation step, to avoid publishing clock==0");
		return;
	}

	// TODO make this only affect one robot if necessary
	if ((this->base_watchdog_timeout.toSec() > 0.0)
			&& ((this->sim_time - this->base_last_cmd)
					>= this->base_watchdog_timeout)) {
		for (size_t r = 0; r < this->positionmodels.size(); r++)
			this->positionmodels[r]->SetSpeed(0.0, 0.0, 0.0);
	}

	// Get latest laser data
	for (size_t r = 0; r < this->lasermodels.size(); r++) {
		std::vector<Stg::ModelLaser::Sample> samples =
				this->lasermodels[r]->GetSamples();
		if (samples.size()) {
			// Translate into ROS message format and publish
			Stg::ModelLaser::Config cfg = this->lasermodels[r]->GetConfig();
			this->laserMsgs[r].angle_min = -cfg.fov / 2.0;
			this->laserMsgs[r].angle_max = +cfg.fov / 2.0;
			this->laserMsgs[r].angle_increment = cfg.fov
					/ (double) (cfg.sample_count - 1);
			this->laserMsgs[r].range_min = 0.0;
			this->laserMsgs[r].range_max = cfg.range_bounds.max;
			this->laserMsgs[r].ranges.resize(cfg.sample_count);
			this->laserMsgs[r].intensities.resize(cfg.sample_count);
			for (unsigned int i = 0; i < cfg.sample_count; i++) {
				this->laserMsgs[r].ranges[i] = samples[i].range;
				this->laserMsgs[r].intensities[i] =
						(uint8_t) samples[i].reflectance;
			}

			this->laserMsgs[r].header.frame_id = mapName("base_laser_link", r);
			this->laserMsgs[r].header.stamp = sim_time;
			this->laser_pubs_[r].publish(this->laserMsgs[r]);
		}

		// Also publish the base->base_laser_link Tx.  This could eventually move
		// into being retrieved from the param server as a static Tx.
		Stg::Pose lp = this->lasermodels[r]->GetPose();
		tf::Quaternion laserQ;
		laserQ.setRPY(0.0, 0.0, lp.a);
		tf::Transform txLaser = tf::Transform(laserQ,
				tf::Point(lp.x, lp.y, 0.15));
		tf.sendTransform(
				tf::StampedTransform(txLaser, sim_time, mapName("base_link", r),
						mapName("base_laser_link", r)));

		// Send the identity transform between base_footprint and base_link
		tf::Transform txIdentity(tf::createIdentityQuaternion(),
				tf::Point(0, 0, 0));
		tf.sendTransform(
				tf::StampedTransform(txIdentity, sim_time,
						mapName("base_footprint", r), mapName("base_link", r)));

		// Get latest odometry data
		// Translate into ROS message format and publish
		this->odomMsgs[r].pose.pose.position.x =
				this->positionmodels[r]->est_pose.x;
		//ROS_INFO("x: %f",this->positionmodels[r]->est_pose.x);
		this->odomMsgs[r].pose.pose.position.y =
				this->positionmodels[r]->est_pose.y;
		//ROS_INFO("y: %f",this->positionmodels[r]->est_pose.y);
		this->odomMsgs[r].pose.pose.orientation =
				tf::createQuaternionMsgFromYaw(
						this->positionmodels[r]->est_pose.a);
		Stg::Velocity v = this->positionmodels[r]->GetVelocity();
		this->odomMsgs[r].twist.twist.linear.x = v.x;
		this->odomMsgs[r].twist.twist.linear.y = v.y;
		this->odomMsgs[r].twist.twist.angular.z = v.a;

		//@todo Publish stall on a separate topic when one becomes available
		//this->odomMsgs[r].stall = this->positionmodels[r]->Stall();
		//
		this->odomMsgs[r].header.frame_id = mapName("odom", r);
		this->odomMsgs[r].header.stamp = sim_time;

		this->odom_pubs_[r].publish(this->odomMsgs[r]);

		// broadcast odometry transform
		tf::Quaternion odomQ;
		tf::quaternionMsgToTF(odomMsgs[r].pose.pose.orientation, odomQ);
		tf::Transform txOdom(odomQ,
				tf::Point(odomMsgs[r].pose.pose.position.x,
						odomMsgs[r].pose.pose.position.y, 0.0));
		tf.sendTransform(
				tf::StampedTransform(txOdom, sim_time, mapName("odom", r),
						mapName("base_footprint", r)));

		// Also publish the ground truth pose and velocity
		Stg::Pose gpose = this->positionmodels[r]->GetGlobalPose();
		Stg::Velocity gvel = this->positionmodels[r]->GetGlobalVelocity();
		// Note that we correct for Stage's screwed-up coord system.
		tf::Quaternion q_gpose;
		q_gpose.setRPY(0.0, 0.0, gpose.a - M_PI / 2.0);
		tf::Transform gt(q_gpose,
				tf::Point(gpose.x, gpose.y, gpose.a - M_PI / 2.0));
		tf::Quaternion q_gvel;
		q_gvel.setRPY(0.0, 0.0, gvel.a - M_PI / 2.0);
		tf::Transform gv(q_gvel,
				tf::Point(gvel.x, gvel.y, gvel.a - M_PI / 2.0));

		this->groundTruthMsgs[r].pose.pose.position.x = gt.getOrigin().x();
		this->groundTruthMsgs[r].pose.pose.position.y = gt.getOrigin().y();
		this->groundTruthMsgs[r].pose.pose.position.z = gt.getOrigin().z();
		this->groundTruthMsgs[r].pose.pose.orientation.x = gt.getRotation().x();
		this->groundTruthMsgs[r].pose.pose.orientation.y = gt.getRotation().y();
		this->groundTruthMsgs[r].pose.pose.orientation.z = gt.getRotation().z();
		this->groundTruthMsgs[r].pose.pose.orientation.w = gt.getRotation().w();
		this->groundTruthMsgs[r].twist.twist.linear.x = gv.getOrigin().x();
		this->groundTruthMsgs[r].twist.twist.linear.y = gv.getOrigin().y();
		//this->groundTruthMsgs[r].twist.twist.angular.z = tf::getYaw(gv.getRotation());
		//this->groundTruthMsgs[r].twist.twist.linear.x = gvel.x;
		//this->groundTruthMsgs[r].twist.twist.linear.y = gvel.y;
		this->groundTruthMsgs[r].twist.twist.angular.z = gvel.a;

		this->groundTruthMsgs[r].header.frame_id = mapName("odom", r);
		this->groundTruthMsgs[r].header.stamp = sim_time;

		this->ground_truth_pubs_[r].publish(this->groundTruthMsgs[r]);
	}

	this->clockMsg.clock = sim_time;
	this->clock_pub_.publish(this->clockMsg);
}

static bool quit = false;
void sigint_handler(int num) {
	quit = true;
}

int main(int argc, char** argv) {
	if (argc < 2) {
		puts(USAGE);
		exit(-1);
	}

	ros::init(argc, argv, "stageros");

	bool gui = true;
	for (int i = 0; i < (argc - 1); i++) {
		if (!strcmp(argv[i], "-g"))
			gui = false;
	}

	StageNode sn(argc - 1, argv, gui, argv[argc -2], argv[argc - 1]);

	if (sn.SubscribeModels() != 0)
		exit(-1);

	boost::thread t = boost::thread(boost::bind(&ros::spin));

	// TODO: get rid of this fixed-duration sleep, using some Stage builtin
	// PauseUntilNextUpdate() functionality.
	ros::WallRate r(10.0);
	while (ros::ok() && !sn.world->TestQuit()) {
		if (gui)
			Fl::wait(r.expectedCycleTime().toSec());
		else {
			sn.UpdateWorld();
			r.sleep();
		}
	}
	t.join();

	exit(0);
}

