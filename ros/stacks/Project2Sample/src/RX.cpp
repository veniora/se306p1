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
// number of robots (NEEDS TO BE SET FROM LAUNCHER)
//int num_robots = 24;

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

bool robot_pos_found = false;
bool obstacle; 
//boolean to check whether or not the robot has been added to the array or not
int exist_robots = 0;

// states
enum State {
	IDLE = 0,
	FORMING_GROUP = 1,
	MOVING_INTO_POS = 2,
	FETCH_INSTRUCTIONS = 3,
	CIRCLING = 4,
	FORM_SQUARE = 5,
	FORM_CIRCLE = 6,
	FOLLOWING = 7,
	IN_POSITION = 8,
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


// passeed in new position , x y theta in a msg
vector<float> moveToNewPoint() {

	// NEED TO ADD GLOBAL BOOLEAN
	// aka in position and only calls this while
	// its not in final position
    // or just use states?

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
	float ANGULAR_TOL = 2.1;
	float upperX = next[0] + LINEAR_TOL;
	float lowerX = next[0] - LINEAR_TOL;
	float upperY = next[1] + LINEAR_TOL;
	float lowerY = next[1] - LINEAR_TOL;
	float upperOriginAngle = next[2] + ANGULAR_TOL;
	float lowerOriginAngle = next[2] - ANGULAR_TOL;
	float upperFinalAngle = finalAngle + ANGULAR_TOL;
	float lowerFinalAngle = finalAngle - ANGULAR_TOL;

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
			current_state = IN_POSITION;
		}
	}
	return instructions;

}


void RobotNode_callback(Project2Sample::R_ID msg) {    
	int i;

	bool already_exists = false;

	for ( i = 0; i < nodes.size(); i++){
		if(nodes[i].R_ID == msg.R_ID){
			already_exists = true;
			nodes[i] = msg;
		}
	}

	if(!already_exists){
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
    obstacle = false;

    for (int i = 30; i < 150; i++){
        if ( i < 110 && i >= 70){
            if (msg.ranges[i] < 2.00){
                obstacle = true;
            }
        }else{
            if (msg.ranges[i] < 0.8){
                obstacle = true;
            }
        } 
    }


}

void RobotState_callback(Project2Sample::State msg) {
	std::stringstream ss;
	ss << "Robot " << id << " changed state from " << current_state << " to "
			<< msg.state;

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
	case IN_POSITION:
		current_state = IN_POSITION;
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
	//ROS_INFO(ss.str().c_str());
	//NodeHandle is the main access point to communicate with ros.
	ros::NodeHandle n;

	ss.str("");
	ss << "Robot" << argv[1] << "_truth";
	ros::Subscriber StageOdo_sub = n.subscribe<nav_msgs::Odometry>(ss.str(),
			1000, StageOdom_callback);

	while (ros::ok()) {
		if (robot_pos_found == true) {
			//ROS_INFO("node %d found robo pos" , id);
			break;
		}
		ros::spinOnce();
		ros::Rate(100).sleep();
	}

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

	////messages
	//velocity of this RobotNode
	geometry_msgs::Twist RobotNode_cmdvel;
	//message object to other robots
	Project2Sample::R_ID msg;


	//initialise variables to be used in case statements
	vector<float> robotCoordinates;
	vector<int> robotInfo;
	vector<float> instructionsMove;
	Project2Sample::R_ID leader_msg;

	while (ros::ok()) {
		//ROS_INFO("Current state: %d",current_state);

		//publish all robot info to nodes array
		msg.R_ID = id;
		msg.x = px;
		msg.y = py;
		msg.R_State = current_state;
		msg.Follow_ID = follow_id;
		RobotNode_pub.publish(msg);

		//messages to stage
		RobotNode_cmdvel.linear.x = linear_x;
		RobotNode_cmdvel.angular.z = angular_z;

		switch (current_state) {
		case IDLE: {
			// idle does nothing but continually publish its own position
			// we need this for the nodes array to be properly created

			// shouldnt moce on till all robots have reported in
			// debugging attempt, shouldnt stop publishing/ leave idle until all robots have checked in

			//         RobotNode_pub.publish(msg);


			// By definition this state does nothing!
			// (note the R_ID message is published after this switch statement)
			break;
		}
		case FORMING_GROUP: {
			//FindGroup f;
			//ROS_INFO("in forming group");
			GetGroup g;
			//[leaderID, groupID, posID]

			robotInfo = formGroup(nodes, id);
			int i;
			//changed to i++
			//ROS_INFO("nodes size %d",nodes.size());
			for (i = 0; i < nodes.size(); i++) {
				//ROS_INFO("form group loop %i",i);
				if (nodes.at(i).R_ID == robotInfo.at(0)) {
					msg.R_ID = nodes.at(i).R_ID;
					msg.x = nodes.at(i).x;
					msg.y = nodes.at(i).y;
					msg.theta = nodes.at(i).theta;
					msg.Group_ID = robotInfo.at(1);
					position_id = robotInfo.at(2);
					msg.Pos_ID = robotInfo.at(2);
					leader_id = robotInfo.at(0);
					group_id = robotInfo.at(1);
					position_id = robotInfo.at(2);
					RobotNode_pub.publish(msg);
					break;
				}
			}

			for( i = 0; i < nodes.size(); i++){
				if(nodes.at(i).R_ID == leader_id){
					leader_msg = nodes.at(i);
				}
			}

			robotCoordinates = calculatePosition(leader_msg, msg.Pos_ID);
			// maybe not needed as now assigned to fields of robot...
			msg.newX = robotCoordinates.at(0);
			msg.newY = robotCoordinates.at(1);
			msg.leaderTheta = robotCoordinates.at(2);
			new_x_pos = robotCoordinates.at(0);
			new_y_pos = robotCoordinates.at(1);
			ROS_INFO("size: %d, id: %d, leader id %d, group id %d, posID %d, newx %f, newy %f",nodes.size(),id, leader_id, group_id, position_id,new_x_pos, new_y_pos);
			//ROS_INFO("id: %d, newX: %f , newY %f, pos: %d, group: %d, leader: %d", id, new_x_pos, new_y_pos, position_id, group_id, leader_id);
			final_theta = robotCoordinates.at(2);

			RobotNode_pub.publish(msg);
			//vector group
			//ROS_INFO("leader id %d", LeaderID);
			group = g.getGroup(nodes, id);
			//for (i = 0; i < group.size();i++){
			//    ROS_INFO("id = %d", id);
			//}

			if (position_id == 0) {
				follow_id = -1;
				//ROS_INFO("FollowID %d", FollowID);
			} else {
				//follow_id = group.at(position_id - 1).R_ID;
				//ROS_INFO("FollowID %d", follow_id);
			}
			// ROS_INFO(" %d in position %d is following %d", id, position_id, follow_id);
			current_state = MOVING_INTO_POS;
			// ROS_INFO("should be movinng nowwww!");
			break;
		}
		case MOVING_INTO_POS: {
			//ROS_INFO(" MOVING " );
			// After moving, set new behaviour
			// If its current coordinates equal the target coords, change state
			if (fabs(new_x_pos - px)< 0.01){ // check x coordinate
				if (fabs(new_y_pos - py)< 0.01){
					if (fabs(final_theta - theta)< 2.1){
						current_state = IN_POSITION;
						break;
					}
				}
			};
			// If not in position, give new instructions
			instructionsMove = moveToNewPoint();
			//set them to this
			RobotNode_cmdvel.linear.x = instructionsMove[0];
			RobotNode_cmdvel.angular.z = instructionsMove[1];

			break;
		}
		case IN_POSITION:{
			//			ROS_INFO("In Position");
			bool group_ready = true;

			for (int i = 0; i<nodes.size(); i++){
				if (nodes[i].Group_ID == group_id){ //if it is in the same group
					//ROS_INFO("Group_ID: %d", nodes[i].Group_ID);
					//if a group member is in the wrong state
					//ROS_INFO("R_State: %d", nodes[i].R_State);
					if (nodes[i].R_State != IN_POSITION && nodes[i].R_State != FOLLOWING && nodes[i].R_State != CIRCLING ){
						//some group member is not ready
						group_ready = false;
						//ROS_INFO("Group not ready");
						break;
					}
				}
			}
			//if the group is ready, move on
			if (group_ready){
				//the leader is given one task, which later will be getting a message
				if (position_id == 0){
					current_state = CIRCLING;
					ROS_INFO("SWITCHING LEADER TO CIRCLING");
					//other members can go to another state here, or wait for instructions
				} else {
					current_state = FOLLOWING;
					ROS_INFO("SWITCHING TO FOLLOWING");
				}
			}
			break;
		}
		case FOLLOWING: { 
			//If the follow_id has not been found, find it
			if (follow_id == -2){
				if (position_id == 0){ // if leader
					follow_id = -1;
				} else {
					for (int i=0; i<nodes.size(); i++){
						if (nodes[i].Group_ID == group_id){ // if in same group
							if (nodes[i].Pos_ID == (position_id-1)){ // before it in the group
								follow_id = nodes[i].R_ID; //set follow id to the prevous id
							}
						}
					}
				}
			} else {
            //if it has found the follow_id already, then do the following behaviour
                //ask for velocity instructions
	    	    vector<float> current(3);
	    	    current[0] = px;
	    	    current[1] = py;
	    	    current[2] = theta;

                //find the position of the next one
	    	    vector<float> next(3);

                for (int k = 0; k < nodes.size(); k++){ //loop through nodes
                    if (nodes[k].R_ID == follow_id){
                    //if the node is of the robot it should be following
                    //set the next position to its position
                        next[0] = nodes[k].x;
                        next[1] = nodes[k].y;
                        next[2] = nodes[k].theta;
                    }
                }
                //use the next position to get velocity instructions
	    	    float rotateInst = rotateDirectionInstructions(rotateFinalAngleInstructions(current, next));
                
                float linearInst;
                if (obstacle){
                    linearInst = 0;
                } else {
	    	    //HARD CODED LINEAR VELOCITY
	    	    linearInst = 0.6;
                }

	        	//set them to this
	        	RobotNode_cmdvel.linear.x = linearInst;
	        	RobotNode_cmdvel.angular.z = rotateInst;
            }
			break;
		}
		case CIRCLING: {
			RobotNode_cmdvel.linear.x = 0.8;
			RobotNode_cmdvel.angular.z = 0.2;
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
		Project2Sample::R_ID msgb;
		msgb.R_ID = id;
		msgb.x = px;
		msgb.y = py;
		msgb.theta = theta;
		msgb.R_State = current_state;
		msgb.Follow_ID = follow_id;
		msgb.Group_ID = group_id;
		msgb.Pos_ID = position_id;

		RobotNode_stage_pub.publish(RobotNode_cmdvel);

		ros::spinOnce();
		ros::Rate(10).sleep();
		count++;

	}

	return 0;

}
