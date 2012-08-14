#include "ros/ros.h"
#include "std_msgs/String.h"
#include "Project2Sample/R_ID.h"
#include "geometry_msgs/Twist.h"
#include "nav_msgs/Odometry.h"
#include "sensor_msgs/LaserScan.h"
#include "Project2Sample/State.h"
#include "FindGroup.h"
//#include "RobotStates.h"

#include <sstream>
#include "math.h"
#include <stdlib.h>

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

int Id;

// states
enum State {IDLE = 0,
			FORMING_GROUP = 1,
			MOVING_INTO_POS = 2,
			FOLLOWING = 3,
			CIRCLING = 4,
			FORM_SQUARE = 5};

State currentState = IDLE;


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
	//px = 5 + msg.pose.pose.position.x;
	//py = 10 + msg.pose.pose.position.y;
//	ROS_INFO("Current x position is: %f", px);
//	ROS_INFO("Current y position is: %f", py);
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
			case FOLLOWING:
				currentState = FOLLOWING;
				break;
			case CIRCLING:
				currentState = CIRCLING;
				break;
			case FORM_SQUARE:
				currentState = FORM_SQUARE;
				break;
			}
}

int main(int argc, char **argv) {

	//initialize robot parameters
	//Initial pose. This is same as the pose that you used in the world file to set	the robot pose.
	theta = M_PI / 2.0;
	px = 5;
	py = 10;
	Id = atoi(argv[1]);

	//Initial velocity
	linear_x = 0.2;
	angular_z = 0.2;

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
	ss.str("");
	ss << "Robot" << argv[1] << "_msg";
	ros::Subscriber RobotNode_sub = n.subscribe<Project2Sample::R_ID>(
			ss.str(), 1000, RobotNode_callback);

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

	//subscribe to listen to their current states
	ros::Subscriber Robot_state = n.subscribe<Project2Sample::State>("Robot_state",
			1000, RobotState_callback);

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
		ROS_INFO("currentState: %d", currentState);
		switch (currentState) {
		    // IDLE = 0
			case 0:
						msg.R_ID = Id;
						//ROS_INFO("id: %d", msg.R_ID);
						msg.x = px;
						//ROS_INFO("id: %f", msg.x);
						msg.y = py;
						//ROS_INFO("id: %f", msg.y);
						RobotNode_pub.publish(msg);
						ros::spinOnce();
						break;
		    // FORMING_GROUP = 1
			case 1:
				       //[leaderID, groupID, posID]
						Project2Sample::R_ID msg;
						FindGroup f;
						int j;
						for (j = 0; j < nodes.size(); ++j) {
							ROS_INFO("robots:  %d", nodes.at(j).R_ID);
						}
						vector<int> robotInfo = f.formGroup(nodes, Id);
						int i;
						for (i = 0; i < nodes.size(); ++i) {
							if (nodes.at(i).R_ID == robotInfo.at(0)) {
								msg.R_ID = nodes.at(i).R_ID;
								ROS_INFO("leader id: %d", msg.R_ID);
								msg.x = nodes.at(i).x;
								ROS_INFO("leader x: %f", msg.x);
								msg.y = nodes.at(i).y;
								ROS_INFO("leader y: %f", msg.y);
								msg.theta = nodes.at(i).theta;
								ROS_INFO("leader theta: %f", msg.theta);
								msg.Group_ID = robotInfo.at(1);
								ROS_INFO("group id: %d", msg.Group_ID);
								break;
							}
						}
						// [newX, newY, Theta]

						vector<float> robotCoordinates = f.calculatePosition(msg, robotInfo.at(2));
						ROS_INFO("newX: %f", robotCoordinates.at(0));
						ROS_INFO("newY: %f", robotCoordinates.at(1));
						ROS_INFO("theta: %f", robotCoordinates.at(2));
						break;
			// MOVING_INTO_POS = 2
			/*\case 2:
				break;
			// FOLLOWING = 3
			case 3:
				break;
			// CIRCLING = 4
			case 4:
				break;
			// FORM_SQUARE = 5
			case 5:
				break;*/
		}

		RobotNode_stage_pub.publish(RobotNode_cmdvel);

		ros::spinOnce();

		loop_rate.sleep();
		++count;

	}

	return 0;

}
