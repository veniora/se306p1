#include "ros/ros.h"
#include "std_msgs/String.h"
#include "Project2Sample/R_ID.h"
#include "geometry_msgs/Twist.h"
#include "nav_msgs/Odometry.h"
#include "sensor_msgs/LaserScan.h"
#include "Project2Sample/State.h"
#include "FindGroup.h"
#include "GetGroup.h"

#include <sstream>
#include "math.h"
#include <stdlib.h>

/**
 *This is a single robot in a robot swarm. The robot will be simulated on stage by sending messages
 **/

#define PI 3.14159265

//namespace
using namespace std;

//velocity of the robot
double linear_x;
double angular_z;

//pose of the robot
double px;
double py;
double theta;

int Id;
int LeaderID;
int GroupID;
int PositionID;
int FollowID = -2;

// states
enum State {IDLE = 0,
	FORMING_GROUP = 1,
	MOVING_INTO_POS = 2,
	FETCH_INSTRUCTIONS = 3,
	CIRCLING = 4,
	FORM_SQUARE = 5,
	FORM_CIRCLE = 6};

State currentState = IDLE;


//vector of nodes = x, y, theta, R_ID
vector <Project2Sample::R_ID> nodes;
//vector of nodes that are in the same group
vector <Project2Sample::R_ID> group;

int count;

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

//This is the call back function to process odometry messages coming from Stage
void StageOdom_callback(nav_msgs::Odometry msg) {
	px = msg.pose.pose.position.x;
	py = msg.pose.pose.position.y;
	double thetaRadians = msg.pose.pose.position.z+ PI/2;
	if (fabs(thetaRadians) < 0.0001) {
		theta = 0.0;
	} else {
		if (thetaRadians < 0.0)  {
			theta = 360.0 - (fabs(thetaRadians) * 180.0/PI);
		} else {
			theta = thetaRadians * 180.0/PI;
		}
	}
}

void StageLaser_callback(sensor_msgs::LaserScan msg) {
	//This is the callback function to process laser scan messages
	//you can access the range data from msg.ranges[i]. i = sample number

}

void RobotState_callback(Project2Sample::State msg) {
	switch (msg.state) {
	// There is an implicit conversion from any enum type to int.
	// On the other hand, there is not an implicit conversion from int to an enum type.
	// This means we cant just set currentState to msg.state.
	case IDLE:
		currentState = IDLE;
		break;
	case FORMING_GROUP:
		currentState = FORMING_GROUP;
		break;
	case MOVING_INTO_POS:
		currentState = MOVING_INTO_POS;
		break;
	case FETCH_INSTRUCTIONS:
		currentState = FETCH_INSTRUCTIONS;
		break;
	case CIRCLING:
		currentState = CIRCLING;
		break;
	case FORM_SQUARE:
		currentState = FORM_SQUARE;
		break;
	case FORM_CIRCLE:
		currentState = FORM_CIRCLE;
		break;
	}
}

int main(int argc, char **argv) {

	//initialize robot parameters
	//Initial pose. This is same as the pose that you used in the world file to set	the robot pose.
	theta = 45;
	px = 5;
	py = 10;
	Id = atoi(argv[1]);

	//Initial velocity
	linear_x = 0.0;
	angular_z = 0.0;

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
	ros::Publisher RobotNode_pub = n.advertise<Project2Sample::R_ID>("Robot_msg",
			1000);
	//to stage
	ss.str("");
	ss << "Robot" << argv[1] << "_vel";
	ros::Publisher RobotNode_stage_pub = n.advertise<geometry_msgs::Twist>(
			ss.str(), 1000);

	//subscribe to listen to messages of other robots
	ss.str("");
	ros::Subscriber RobotNode_sub = n.subscribe<Project2Sample::R_ID>(
			"Robot_msg", 1000, RobotNode_callback);

	//subscribe to listen to messages coming from stage
	ss.str("");
	ss << "Robot" << argv[1] << "_truth";
	ros::Subscriber StageOdo_sub = n.subscribe<nav_msgs::Odometry>(ss.str(),
			1000, StageOdom_callback);

	ss.str("");
	ss << "Robot" << argv[1] << "_laser";
	ros::Subscriber StageLaser_sub = n.subscribe<sensor_msgs::LaserScan>(
			ss.str(), 1000, StageLaser_callback);
	ss.str("");

	//ros::Subscriber StageTruth_sub = n.subscribe<nav_msgs::Odometry>("Robot0_truth",1000,StageTruth_callback);

	//subscribe to listen to their current states
	ros::Subscriber Robot_state = n.subscribe<Project2Sample::State>("Robot_state",
			1000, RobotState_callback);

	ros::Rate loop_rate(10);

	//a count of how many messages we have sent
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
		switch (currentState) {
		ROS_INFO("current state %d",currentState);
		case IDLE:
			msg.R_ID = Id;
			//ROS_INFO("id: %d", msg.R_ID);
			msg.x = px;
			//ROS_INFO("id: %f", msg.x);
			msg.y = py;
			//ROS_INFO("id: %f", msg.y);
			RobotNode_pub.publish(msg);
			//ros::spinOnce();
			break;
		case FORMING_GROUP:
			Project2Sample::R_ID msg;
			FindGroup f;
			GetGroup g;
			//[leaderID, groupID, posID]
			vector<int> robotInfo = f.formGroup(nodes, Id);
			int i;
			for (i = 0; i < nodes.size(); ++i) {
				if (nodes.at(i).R_ID == robotInfo.at(0)) {
					msg.R_ID = nodes.at(i).R_ID;
					msg.x = nodes.at(i).x;
					msg.y = nodes.at(i).y;
					msg.theta = nodes.at(i).theta;
					msg.Group_ID = robotInfo.at(1);
					msg.Pos_ID = robotInfo.at(2);
					LeaderID = robotInfo.at(0);
					GroupID = robotInfo.at(1);
					PositionID = robotInfo.at(2);
					RobotNode_pub.publish(msg);
					break;
				}
			}
			// [newX, newY, Theta]
			    vector<float> robotCoordinates = f.calculatePosition(msg, PositionID);
			    msg.leaderTheta = robotCoordinates.at(2);
			    msg.newX = robotCoordinates.at(0);
			    msg.newY = robotCoordinates.at(1);
			    RobotNode_pub.publish(msg);
			    //vector group
			    group = g.getGroup(nodes, Id);
			    ROS_INFO("leader id %d", LeaderID);
			    if (PositionID == 0) {
			    	FollowID = -1;
			    } else {
			    	FollowID = group.at(PositionID-1).R_ID;
			    }
			    break;

			    //			case MOVING_INTO_POS:
			    //				break;
			    //			case FETCH_INSTRUCTIONS:
			    //				break;
			    //			case CIRCLING:
			    //				break;
			    //			case FORM_SQUARE:
			    //				break;
			    ///			case FORM_CIRCLE:
			    //				break;
		}

		RobotNode_stage_pub.publish(RobotNode_cmdvel);

		ros::spinOnce();

		loop_rate.sleep();
		++count;

	}

	return 0;

}
