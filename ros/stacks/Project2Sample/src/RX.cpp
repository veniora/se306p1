#include "ros/ros.h"
#include "std_msgs/String.h"
#include <Project2Sample/R_ID.h>
#include <geometry_msgs/Twist.h>
#include <nav_msgs/Odometry.h>
#include <sensor_msgs/LaserScan.h>
#include "RobotStates.h"

#include <sstream>
#include "math.h"

/**
 *This is a single robot in a robot swarm. The robot will be simulated on stage by sending messages
 **/

//namespace
using namespace std;

//velocity of the robot
double linear_x;
double angular_z;

//pose of the robot
double px;
double py;
double theta;

//battery lives

int R0_life;
int R1_life;

//cluster head
int clusterHead;

//vector of nodes = x, y, theta, R_ID
vector <Project2Sample::R_ID> nodes;

void RobotNode_callback(Project2Sample::R_ID msg) {
	int i;
	bool alreadyExists = false;
	for (i = 0; i < nodes.size(); ++i) {
		if (nodes.at(i).R_ID == msg.R_ID) {
			nodes.erase(nodes.begin()+i); //deletes the old values
			nodes.push_back(msg); //adds new values
			alreadyExists = true;
		}
	}
	if (!alreadyExists) {
		nodes.push_back(msg);
	}
}

void StageOdom_callback(nav_msgs::Odometry msg) {
	//This is the call back function to process odometry messages coming from Stage.
	px = 5 + msg.pose.pose.position.x;
	py = 10 + msg.pose.pose.position.y;
//	ROS_INFO("Current x position is: %f", px);
//	ROS_INFO("Current y position is: %f", py);
}

void StageLaser_callback(sensor_msgs::LaserScan msg) {
	//This is the callback function to process laser scan messages
	//you can access the range data from msg.ranges[i]. i = sample number

}

int main(int argc, char **argv) {

	//initialize robot parameters
	//Initial pose. This is same as the pose that you used in the world file to set	the robot pose.
	theta = M_PI / 2.0;
	px = 5;
	py = 10;

	//Initial velocity
	linear_x = 0.2;
	angular_z = 0.2;

	//Batters life
	R0_life = 80;
	R1_life = -1;

//You must call ros::init() first of all. ros::init() function needs to see argc and argv. The third argument is the name of the node
	std::stringstream ss;
	ss << "RobotNode" << argv[1];
	ros::init(argc, argv, ss.str());
	ss << " running";
	ROS_INFO(ss.str().c_str());
//NodeHandle is the main access point to communicate with ros.
	ros::NodeHandle n;

//advertise() function will tell ROS that you want to publish on a given topic_
//for other robots
	ss.str("");
	ss << "Robot" << argv[1] << "_msg";
	ros::Publisher RobotNode_pub = n.advertise<Project2Sample::R_ID>(ss.str(),
			1000);
//to stage
	ss.str("");
	ss << "Robot" << argv[1] << "_vel";
	ros::Publisher RobotNode_stage_pub = n.advertise<geometry_msgs::Twist>(
			ss.str(), 1000);

//subscribe to listen to messages of other robots

	ros::Subscriber RobotNode1_sub = n.subscribe<Project2Sample::R_ID>(
			"Robot1_msg", 1000, RobotNode_callback);

//subscribe to listen to messages coming from stage
	ss.str("");
	ss << "Robot" << argv[1] << "_odo";
	ros::Subscriber StageOdo_sub = n.subscribe<nav_msgs::Odometry>(ss.str(),
			1000, StageOdom_callback);
	ss.str("");
	ss << "Robot" << argv[1] << "_laser";
	ros::Subscriber StageLaser_sub = n.subscribe<sensor_msgs::LaserScan>(
			ss.str(), 1000, StageLaser_callback);
//ros::Subscriber StageTruth_sub = n.subscribe<nav_msgs::Odometry>("Robot0_truth",1000,StageTruth_callback);

	ros::Rate loop_rate(10);

//a count of howmany messages we have sent
	int count = 0;

////messages
//velocity of this RobotNode
	geometry_msgs::Twist RobotNode_cmdvel;
//message object to other robots
	Project2Sample::R_ID msg;
	while (ros::ok()) {

		//messages to stage
		RobotNode_cmdvel.linear.x = linear_x;
		RobotNode_cmdvel.angular.z = angular_z;

		//message to other robots
		msg.R_ID = 0;
//		msg.life = R0_life;
		msg.x = px;
		msg.y = py;

		//publish the message
		RobotNode_pub.publish(msg);
		RobotNode_stage_pub.publish(RobotNode_cmdvel);

		ros::spinOnce();

		loop_rate.sleep();
		++count;

	}

	return 0;

}
