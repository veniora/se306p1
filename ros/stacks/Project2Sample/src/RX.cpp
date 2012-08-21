#include <ros/ros.h>
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
double new_x_pos;
double new_y_pos;
double final_theta;

// DONT START VARIABLE NAMES WITH CAPITALS!
int id;
int leader_id;
int group_id;
int position_id;
int follow_id = -2;

//boolean to make sure they don't subscribe to follow twice
bool subscribed_follow;
bool robot_pos_found = false;

// states
enum State {
	IDLE = 0,
	FORMING_GROUP = 1,
	MOVING_INTO_POS = 2,
	FETCH_INSTRUCTIONS = 3,
	CIRCLING = 4,
	FORM_SQUARE = 5,
	FORM_CIRCLE = 6,
	FOLLOWING = 7
};

State current_state = IDLE;

//vector of nodes = x, y, theta, R_ID
vector<Project2Sample::R_ID> nodes;
//vector of nodes that are in the same group
vector<Project2Sample::R_ID> group;

int count;

// returns the angle needed to reach next position.
float rotateFinalAngleInstructions(vector<float> currentPosition,
		vector<float> newPosition) {

	//ROS_INFO("start of rotate instructions");

	float delta_y = newPosition[1] - currentPosition[1];
	float delta_x = newPosition[0] - currentPosition[0];

	float delta_theta;

	// the angle from the origin to the new position and convert to degrees
	float alpha = atan(delta_y / delta_x);
	alpha = 180 * alpha / PI;

	//Find the quadrant to work out difference
	if (delta_x >= 0 && delta_y >= 0) { // right and up
		delta_theta = alpha - currentPosition[2];
	} else if (delta_x >= 0 && delta_y <= 0) { // right and down
		delta_theta = (alpha) - currentPosition[2];
	} else if (delta_x <= 0 && delta_y >= 0) { // left and up
		delta_theta = 180 - currentPosition[2] + alpha;
	} else if (delta_x <= 0 && delta_y <= 0) { // left and down
		delta_theta = alpha - 180 - currentPosition[2];
	} else {
		ROS_INFO("no quadrant found");
	}

	//modulate deltaTheta
	delta_theta = fmodf(delta_theta, 360.0);
	return delta_theta;
}
// returns velocity direction to rotate for next position
float rotateDirectionInstructions(float d_theta) {
	d_theta = fmodf(d_theta, 360.0);
	float AngularV = 0;
	if (d_theta <= 2 && d_theta > 358) {
		AngularV = 0;
	} else if (d_theta >= 2 && d_theta <= 180) {
		AngularV = 1;
	} else if (d_theta <= 358 && d_theta > 180) {
		AngularV = -1;
	} else if (d_theta < 2 && d_theta >= -2) {
		AngularV = 0;
	} else if (d_theta <= -2 && d_theta >= -180) {
		AngularV = -1;
	} else if (d_theta <= -180) {
		AngularV = 1;
	} else {
		ROS_INFO("no angular velocity assigned");
	}

	return AngularV;
}

//this method is called when the robot in front publishes its coordinates when it moves
//HARD CODE THE RESULTS FOR NOW
/*void poseCallbackFollow(Project2Sample::R_ID msg){
 //check that it should be following, if not then just return
 if (currentState != FOLLOWING){
 return;
 }


 ros::NodeHandle nb;
 ros::Publisher RobotNode_stage_pub = nb.advertise<geometry_msgs::Twist>("Robot1_vel",1000);
 //gets in a message with the position of who its following

 //ask for velocity instructions
 vector<float> current(3);
 current[0] = px;
 current[1] = py;
 current[2] = theta;

 vector<float> next(3);
 next[0] = msg.x;
 next[1] = msg.y;
 next[2] = msg.theta;

 float rotateInst = rotateDirectionInstructions(rotateFinalAngleInstructions(current, next));

 //then find linear
 //vector<float> linearInst = linearInstructions(current, next);

 //HARD CODED LINEAR VELOCITY FOR NOW
 float linearInst = 0.5;

 //set them to this
 geometry_msgs::Twist RobotNode_cmdvel;
 RobotNode_cmdvel.linear.x = linearInst;
 RobotNode_cmdvel.angular.z = rotateInst;

 //then move
 RobotNode_stage_pub.publish(RobotNode_cmdvel);
 }
 */

// passeed in new position , x y theta in a msg
vector<float> moveToNewPoint() {

	// NEED TO ADD GLOBAL BOOLEAN
	// aka in position and only calls this while
	// its not in final position

	vector<float> instructions(2);
	//ask for velocity instructions
	vector<float> current(3);
	current[0] = px;
	current[1] = py;
	current[2] = theta;

	vector<float> next(3);
	next[0] = new_x_pos;
	next[1] = new_y_pos;
	next[2] = final_theta;

	bool rightSpot = false;
	float linearInst = 1.0;
	float deltaAngle = rotateFinalAngleInstructions(current, next);
	float finalAngle = deltaAngle + theta;

	if (finalAngle < 0) {
		finalAngle = 360 + finalAngle;
	}
	// setting tolerances
	float LINEAR_TOL = 0.2;
	float ANGULER_TOL = 2.1;
	float upperX = next[0] + LINEAR_TOL;
	float lowerX = next[0] - LINEAR_TOL;
	float upperY = next[1] + LINEAR_TOL;
	float lowerY = next[1] - LINEAR_TOL;
	float upperOriginAngle = next[2] + ANGULER_TOL;
	float lowerOriginAngle = next[2] - ANGULER_TOL;
	float upperFinalAngle = finalAngle + ANGULER_TOL;
	float lowerFinalAngle = finalAngle - ANGULER_TOL;

	//
	//ROS_INFO("start of while2 %f", theta);
	if (current[0] >= (upperX) || current[0] <= (lowerX)
			|| current[1] >= (upperY) || current[1] <= (lowerY)) {
		//set them to this
		rightSpot = false;
		//ROS_INFO("BAD SPOT: %f < %f < %f && %f < %f < %f", lowerX, current[0], upperX, lowerY, current[1], upperY);
	} else {
		rightSpot = true;
	}

	if (!rightSpot) {
		if (current[2] >= upperFinalAngle || current[2] <= lowerFinalAngle) {
			float rotateInst = 0.1
					* rotateDirectionInstructions(
							rotateFinalAngleInstructions(current, next));
			//set them to this
			instructions[0] = 0.0;
			instructions[1] = rotateInst;
			return instructions;
		} else {
			instructions[0] = 1.0;
			instructions[1] = 0;
		}
	}

	if (!rightSpot) {
		//set them to this
		instructions[0] = linearInst;
		instructions[1] = 0;
	} else {
		rightSpot = true;
		instructions[0] = 0;
		instructions[1] = 0;
	}

	if (rightSpot) {
		if (current[2] >= upperOriginAngle || current[2] <= lowerOriginAngle) {
			// could add in to make more efficient if they worked
			//float turnTheta = fmodf((current[2] - next[2]), 360.0);
			//float rotateInst = rotateDirectionInstructions(turnTheta);

			instructions[0] = 0.0;
			instructions[1] = 0.5;
		} else {
			instructions[0] = 0.0;
			instructions[1] = 0.0;
			current_state = FORM_SQUARE;
		}
	}
	return instructions;

}

void RobotNode_callback(Project2Sample::R_ID msg) {
	if (robot_pos_found == false) {
		return;
	}
	int i;
	bool alreadyExists = false;
	for (i = 0; i < nodes.size(); i++) {
		if (nodes.at(i).R_ID == msg.R_ID) {
			nodes.erase(nodes.begin() + i); //deletes the old values
			nodes.push_back(msg); //adds new values
			//if(ready) {
			//ROS_INFO("id: %d", nodes.at(i).R_ID);
			//ROS_INFO("x: %f", nodes.at(i).x);
			//ROS_INFO("y: %f", nodes.at(i).y);
			//}
			alreadyExists = true;
		}
	}
	if (!alreadyExists) {
		//ROS_INFO("x--: %f", tx);
		nodes.push_back(msg);
	}

}

//This is the call back function to process odometry messages coming from Stage
void StageOdom_callback(nav_msgs::Odometry msg) {
	robot_pos_found = true;
	px = msg.pose.pose.position.x;
	py = msg.pose.pose.position.y;
	//ROS_INFO("px: %f", px);
	//ROS_INFO("py: %f", py);
	double thetaRadians = msg.pose.pose.position.z + PI / 2;
	if (fabs(thetaRadians) < 0.0001) {
		theta = 0.0;
	} else {
		if (thetaRadians < 0.0) {
			theta = 360.0 - (fabs(thetaRadians) * 180.0 / PI);
		} else {
			theta = thetaRadians * 180.0 / PI;
		}
	}
}

void StageLaser_callback(sensor_msgs::LaserScan msg) {
	//This is the callback function to process laser scan messages
	//you can access the range data from msg.ranges[i]. i = sample number

}

void RobotState_callback(Project2Sample::State msg) {
	std::stringstream ss;
	ss << "Robot " << id << " changed state from " << current_state << " to "
			<< msg.state;
	ROS_INFO(ss.str().c_str());
	switch (msg.state) {
	// There is an implicit conversion from any enum type to int.
	// On the other hand, there is not an implicit conversion from int to an enum type.
	// This means we cant just set currentState to msg.state.
	case IDLE:
		current_state = IDLE;
		break;
	case FORMING_GROUP:
		current_state = FORMING_GROUP;
		break;
	case MOVING_INTO_POS:
		current_state = MOVING_INTO_POS;
		break;
	case FETCH_INSTRUCTIONS:
		current_state = FETCH_INSTRUCTIONS;
		break;
	case CIRCLING:
		current_state = CIRCLING;
		break;
	case FORM_SQUARE:
		current_state = FORM_SQUARE;
		break;
	case FORM_CIRCLE:
		current_state = FORM_CIRCLE;
		break;
	case FOLLOWING:
		current_state = FOLLOWING;
		break;
	}
}

int main(int argc, char **argv) {

	//initialize robot parameters
	//Initial pose. This is same as the pose that you used in the world file to set	the robot pose.
	//theta = 45;
	//px = 5;
	//py = 10;
	id = atoi(argv[1]);

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
	ros::Publisher RobotNode_pub = n.advertise<Project2Sample::R_ID>(
			"Robot_msg", 1000);
	//to stage
	ss.str("");
	ss << "Robot" << argv[1] << "_vel";
	ros::Publisher RobotNode_stage_pub = n.advertise<geometry_msgs::Twist>(
			ss.str(), 1000);

	//subscribe to listen to messages of other robots
	ss.str("");
	ros::Subscriber RobotNode_sub = n.subscribe<Project2Sample::R_ID>(
			"Robot_msg", 1000, RobotNode_callback);

	//publish its own position for other robots to follow
	ss.str("");
	ss << "Robot" << argv[1] << "_follow";
	ros::Publisher Follow_pub = n.advertise<Project2Sample::R_ID>(ss.str(),
			1000);

	ss.str("");
	ss << "Robot" << argv[1] << "_truth";
	ros::Subscriber StageOdo_sub = n.subscribe<nav_msgs::Odometry>(ss.str(),
			1000, StageOdom_callback);

	ss.str("");
	ss << "Robot" << argv[1] << "_laser";
	ros::Subscriber StageLaser_sub = n.subscribe<sensor_msgs::LaserScan>(
			ss.str(), 1000, StageLaser_callback);

	ss.str("");
	//subscribe to listen to their current states
	ros::Subscriber Robot_state = n.subscribe<Project2Sample::State>(
			"Robot_state", 1000, RobotState_callback);

	//a count of how many messages we have sent
	int count = 0;

	subscribed_follow = false;

	////messages
	//velocity of this RobotNode
	geometry_msgs::Twist RobotNode_cmdvel;
	//message object to other robots
	Project2Sample::R_ID msg;

	//HARD CODE FollowID JUST TO TEST
	follow_id = 2;

	//initialise variables to be used in case statements
	vector<float> robotCoordinates;
	vector<int> robotInfo;
	vector<float> instructionsMove;

	while (ros::ok()) {
		//ROS_INFO("currentState, %d", currentState);

		//subscribe to follow the one in front of it if this has been found, it is not the leader, and it hasn't subscribed already
		/*if (FollowID != -2 && PositionID != 0 && subscribedFollow == false){
		 //subscribe to the robot it should follow's position
		 //note: need to set FollowID before this can be called
		 ss.str("");
		 ss << "Robot" << PositionID << "_follow";
		 ros::Subscriber Follow_sub = n.subscribe(
		 ss.str(), 1000, &poseCallbackFollow);
		 subscribedFollow = true;
		 }
		 */
		//messages to stage
		RobotNode_cmdvel.linear.x = linear_x;
		RobotNode_cmdvel.angular.z = angular_z;

		switch (current_state) {
		case IDLE: {
			// By definition this state does nothing!
			// (note the R_ID message is published after this switch statement)
			break;
		}
		case FORMING_GROUP: {
			//FindGroup f;
			GetGroup g;
			//[leaderID, groupID, posID]
			robotInfo = formGroup(nodes, id);
			int i;
			for (i = 0; i < nodes.size(); ++i) {
				if (nodes.at(i).R_ID == robotInfo.at(0)) {
					msg.R_ID = nodes.at(i).R_ID;
					msg.x = nodes.at(i).x;
					msg.y = nodes.at(i).y;
					msg.theta = nodes.at(i).theta;
					msg.Group_ID = robotInfo.at(1);
					position_id = robotInfo.at(2);
					//ROS_INFO("group id: %d", msg.Group_ID);
					msg.Pos_ID = robotInfo.at(2);
					leader_id = robotInfo.at(0);
					group_id = robotInfo.at(1);
					position_id = robotInfo.at(2);
					//ROS_INFO("Id %d", Id);
					//ROS_INFO("LeaderId %d", LeaderID);
					//ROS_INFO("GroupID %d", GroupID);
					//ROS_INFO("PositionID %d", PositionID);
					RobotNode_pub.publish(msg);
					break;
				}
			}
			robotCoordinates = calculatePosition(msg, msg.Pos_ID);
			msg.newX = robotCoordinates.at(0);
			msg.newY = robotCoordinates.at(1);
			msg.leaderTheta = robotCoordinates.at(2);
			new_x_pos = robotCoordinates.at(0);
			new_y_pos = robotCoordinates.at(1);
			ROS_INFO("id: %d, newX: %f , newY %f", id, msg.newX, msg.newY);
			final_theta = robotCoordinates.at(2);

			//ROS_INFO("Id %d", Id);
			//ROS_INFO("newX %f", msg.newX);
			//ROS_INFO("newY %f", msg.newY);
			//ROS_INFO("leaderTheta %f", msg.leaderTheta);
			RobotNode_pub.publish(msg);
			//vector group
			//ROS_INFO("leader id %d", LeaderID);
			group = g.getGroup(nodes, id);
			if (position_id == 0) {
				follow_id = -1;
				//ROS_INFO("FollowID %d", FollowID);
			} else {
				follow_id = group.at(position_id - 1).R_ID;
				//ROS_INFO("FollowID %d", FollowID);
			}
			current_state = MOVING_INTO_POS;
			break;
		}
		case MOVING_INTO_POS: {
			instructionsMove = moveToNewPoint();
			//set them to this
			RobotNode_cmdvel.linear.x = instructionsMove[0];
			RobotNode_cmdvel.angular.z = instructionsMove[1];
			break;
		}
		case FOLLOWING: {
			break;
		}
		case CIRCLING: {
			break;
		}
		case FORM_SQUARE: {
			break;
		}
		case FORM_CIRCLE: {
			break;
		}
		}

		// Broadcast updated position now
		Project2Sample::R_ID msg;
		msg.R_ID = id;
		msg.x = px;
		msg.y = py;
		msg.theta = theta;
		msg.R_State = current_state;
		msg.Follow_ID = follow_id;
		msg.Group_ID = group_id;
		msg.Pos_ID = position_id;

		//broadcast its own position
		Follow_pub.publish(msg);

		RobotNode_stage_pub.publish(RobotNode_cmdvel);

		ros::spinOnce();
		ros::Rate(10).sleep();
		++count;

	}

	return 0;

}
