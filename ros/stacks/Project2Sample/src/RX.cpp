/** 
* @file RX.cpp
* @brief this file contains most of the logic for an individual robot
*
* @author team brett
*
* @date 23/08/12
*/


#include <ros/ros.h>
#include "std_msgs/String.h"
#include "Project2Sample/R_ID.h"
#include "geometry_msgs/Twist.h"
#include "sensor_msgs/LaserScan.h"
#include "nav_msgs/Odometry.h"
#include "Project2Sample/State.h"
#include "FindGroup.h"
#include "GetGroup.h"
#include "GoToSquare.h"
#include "GoToCircle.h"
#include <sstream>
#include "math.h"
#include <stdlib.h>
#include "GoToTriangle.h"
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
double lineHeadX;
double lineHeadY;
double lineHeadTheta;

vector<float> shape;

// DONT START VARIABLE NAMES WITH CAPITALS!
int id;
int leader_id;
int group_id = -1;
int position_id;
int follow_id = -2;
int group_size;

bool robot_pos_found = false;
bool obstacle; 

//boolean to check whether or not the robot has been added to the array or not
int exist_robots = 0;
bool has_instructions = false;
bool final_move = false;

// Movement tolerances
float LINEAR_TOL = 0.2;
float ANGULAR_TOL = 2.1;

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
	FORM_TRIANGLE = 9,
	RETURN_INSTRUCTIONS = 10,
};
Project2Sample::State state;
State current_state = IDLE;

//vector of nodes = x, y, theta, R_ID UPDATE THIS WITH ALL THE VALUES
vector<Project2Sample::R_ID> nodes;
//vector of nodes that are in the same group
vector<Project2Sample::R_ID> group;

int count;

/**
* This method returns the angle needed to reach next position.
* @author team brett
* @param vector current positon
* @param vector new position
* @date 16/08/2012
*/
float rotateFinalAngleInstructions(vector<float> currentPosition, vector<float> newPosition) {

	float delta_x = newPosition[0] - currentPosition[0];
	float delta_y = newPosition[1] - currentPosition[1];

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

	//modulate deltaTheta to -360 to 360
	delta_theta = fmodf(delta_theta, 360.0);
	return delta_theta;
}

/**
* This method returns velocity direction to rotate for next position.
* @author team brett
* @param float angle to destination
* @date 7/08/2012
*/
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

/**
* This method moves the robots to their new positions which they are passed via a message.
* @author team brett
* @date 18/08/2012
*/
vector<float> moveToNewPoint() { // no arguments but uses global variables :(

	vector<float> instructions(2); // prepare output

	// prepare inputs
	vector<float> current(3); // Current position
	current[0] = px;
	current[1] = py;
	current[2] = theta;

	vector<float> next(3); // Target position
	next[0] = new_x_pos;
	next[1] = new_y_pos;
	next[2] = final_theta;

	// Used to check if it is in position
	bool rightSpot = false;
	// Default linear velocity
	float linearInst = 1.0;
	/*
	 * Calculate the change in angle the robot will have to rotate through
	 */
	float deltaAngle = rotateFinalAngleInstructions(current, next);
	// The final angle
	float finalAngle = deltaAngle + theta;

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


	if (current[0] >= (upperX) || current[0] <= (lowerX) // Checking tolerances in x
			|| current[1] >= (upperY) || current[1] <= (lowerY)) { // in y
		rightSpot = false; // beyond ranges
	} else {
		rightSpot = true;
	}

	if (!rightSpot) {
		if (current[2] >= upperFinalAngle || current[2] <= lowerFinalAngle) { //angular tolerances
			float rotateInst = 0.12
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
			if (current_state == FORM_SQUARE || current_state == FORM_CIRCLE || current_state == FORM_TRIANGLE) {
				current_state = IDLE;
			} else if(final_move){
				current_state = IDLE;                
			}else{
				current_state = IN_POSITION;
			}

		}
	}
	return instructions;

}

/**
* this callback Adds robots into nodes vector from callback
* @author team brett
* @param float angle to destination
* @date 7/08/2012
*/
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

/**
* This is the call back function to process odometry messages coming from Stage
* @author team brett
* @date 11/08/2012
*/
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

/**
* This is the callback function to process laser scan messages 
* used to detect objects and potential obstacles for the robots.
* @author team brett
* @date 11/08/2012
*/
void StageLaser_callback(sensor_msgs::LaserScan msg) {
	obstacle = false;

	for (int i = 30; i < 150; i++){
		if ( i < 110 && i >= 70){
			if (msg.ranges[i] < 1.50){
				obstacle = true;
			}
		}else{
			if (msg.ranges[i] < 0.8){
				obstacle = true;
			}
		}
	}
}
/**
* This is the callback function to process the state changes of the robots
* @author team brett
* @date 11/08/2012
*/
void RobotState_callback(Project2Sample::State msg) {
	std::stringstream ss;
	ss << "Robot " << id << " changed state from " << current_state << " to "
			<< msg.state;

	/*
	 * These change in state commands will only ever come from a leader
	 * The leader has its state changed independently and so must be excluded from this callback
	 * Note: it will run fine for every behaviour but Following as the leader must be in
	 * the CIRCLING state on its own
	 */
	// Change if in default state or if it is a broadcast from a robot in the same group
	if (msg.group == -1 || msg.group == group_id) {
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
			// The leader cannot be allowed to go into this state
			if (position_id != 0){
				current_state = FOLLOWING;
			}
			break;
		case IN_POSITION:
			current_state = IN_POSITION;
			break;
		case FORM_TRIANGLE:
			current_state = FORM_TRIANGLE;
			break;
		case RETURN_INSTRUCTIONS:
			current_state = RETURN_INSTRUCTIONS;
			break;
		}
	}
}

int main(int argc, char **argv) {

	//initialize robot parameters
	id = atoi(argv[1]);

	//Initial velocity
	linear_x = 0.0;
	angular_z = 0.0;

	//You must call ros::init() first of all. ros::init() function needs to see argc and argv. The third argument is the name of the node
	std::stringstream ss;
	ss << "RobotNode" << argv[1];
	ros::init(argc, argv, ss.str());
	ss << " running";
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
	ros::Publisher RobotNodeState_pub = n.advertise<Project2Sample::State>(
			"Robot_state", 1000);
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

	ss.str("");

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

	/*
	 * This is the main loop which will run and update everthing
	 */
	while (ros::ok()) {
		//ROS_INFO("Current state: %d",current_state);

		//messages to stage
		RobotNode_cmdvel.linear.x = linear_x;
		RobotNode_cmdvel.angular.z = angular_z;

		switch (current_state) {
		case IDLE: {
			// Currently does nothing but robots are initialsied like this
			break;
		}
		case FORMING_GROUP: {
			/*
			 * Input the list of known nodes and receive back:
			 * leaderID
			 * groupID
			 * positionID
			 */
			//ROS_INFO("Before forming group, nodes has %d robots", nodes.size());
			robotInfo = formGroup(nodes, id);
			// Store the 3 return values as fields
			leader_id = robotInfo[0];
			group_id = robotInfo[1];
			position_id = robotInfo[2];
			group_size = robotInfo[3];
			ROS_INFO("ROBOT ID: %d, GROUP ID: %d, POS ID: %d, GROUP SIZE: %d", id, group_id, position_id, group_size);

			// Find the message of the leader
			for (int i = 0; i<nodes.size(); i++){
				// if the id of that element is the same as the leader_id, we want to store it
				if (nodes[i].R_ID == leader_id){
					leader_msg = nodes[i];
					// Store these globally
					lineHeadX = leader_msg.x;
					lineHeadY = leader_msg.y;
					lineHeadTheta = leader_msg.theta;
				}
			}
			/*
			 * Finds the vector of 3 coordinates that the robot wants to move to
			 * x
			 * y
			 * theta
			 */
			robotCoordinates = calculatePosition(leader_msg, position_id);
			// Store fields
			new_x_pos = robotCoordinates[0];
			new_y_pos = robotCoordinates[1];
			final_theta = robotCoordinates[2];

			/*
			 * This attempts to retrieve the vector of all nodes in a particular group
			 */
			//group = g.getGroup(nodes, id);
			//ROS_INFO("Group %d has %d members", group_id, group.size());
			// Currently all robots getting assigned to all groups

			// All numbers are calculated and fields assign so move into the move state
			current_state = MOVING_INTO_POS;
			break;
		}
		case MOVING_INTO_POS: {
			/*
			 * This is an all purpose movement state. It compares the current coordinates to the
			 * desired ones
			 */

			// Check if it is within range of the target position
			if (fabs(new_x_pos - px)< LINEAR_TOL){ // check x coordinate
				if (fabs(new_y_pos - py)< LINEAR_TOL){ // check y
					if (fabs(final_theta - theta)< ANGULAR_TOL){ // check angle
						current_state = IN_POSITION;
						break; // It is no longer moving so it is in position
					}
				}
			};
			// If it gets to here, it is not in position and should ask for new instructions
			// They are in the form: angular and linear velocity
			instructionsMove = moveToNewPoint();
			// Prepare to publish to the stage
			RobotNode_cmdvel.linear.x = instructionsMove[0];
			RobotNode_cmdvel.angular.z = instructionsMove[1];

			//Set it to go half the speed if there is an obstacle
			//			if (obstacle) {
			//				RobotNode_cmdvel.linear.x = RobotNode_cmdvel.linear.x/2;
			//			}
			// State can only be left once it is in position
			break;
		}
		case IN_POSITION:{
			/*
			 * In position is an ambiguous state. It was designed to mean that it had stopped moving
			 * and then decide what to do next.
			 * In this case it will cause each robot to check whether its group mates
			 * are also in position and once they are, the leader will go get a message (change state)
			 */
			bool group_ready = true; // Is every other robot also in position

			// Check each robot in nodes
			for (int i = 0; i<nodes.size(); i++){
				if (nodes[i].Group_ID == group_id){ //if it is in the same group
					// If a member is not IN_POSITIONm, the group is not ready
					if (nodes[i].R_State != IN_POSITION){
						//some group member is not ready
						group_ready = false;
						break; // No point checking further
					}
				}
			}
			// If the group has survived the cut and all are in position
			if (group_ready){
				// Single out leader
				if (position_id ==0){
					if (!has_instructions){
						// Store its current position as it will need to return here
						lineHeadX = px;
						lineHeadY = py;
						lineHeadTheta = theta;
						// Send it to go and get instructions
						current_state = FETCH_INSTRUCTIONS;
						ROS_INFO("SWITCHING LEADER TO FETCH INSTRUCTIONS");
					} else { // Already has instructions
						/*
						 * We are going to assign behaviours based on the group id
						 * Currently it is hard coded in here rather than actually getting any instructions
						 * THIS IS ALL STILL JUST FOR THE LEADER
						 */
						switch(group_id % 4){
						case 0:{ // Following! Change leader to CIRCLING and its other group members to follow
							current_state = CIRCLING;
							break;
						}
						case 1:{ // Form a square
							current_state = FORM_SQUARE;
							break;
						}
						case 2:{ // Form a circle
							current_state = FORM_CIRCLE;
							break;
						}
						case 3:{ // Form a triangle
							current_state = FORM_TRIANGLE;
							break;
						}
						}

					}
				}
			}
			break; // It is no longer IN_POSITION as it has new instructions to carry out
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
					linearInst = 0.4;
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
		case FETCH_INSTRUCTIONS: {
			/*
			 * This state applies to each leader once they are lined up in position
			 * It will send each leader off to a designated point to receive a message
			 */
			// This is a continuation of the hard coded behaviour
			// There are four destinations and four specified locations
			switch (group_id % 4) {
			// Each case must set a new x, y and theta to move to
			case 0:{
				//Circling
				new_x_pos = 26.0;
				new_y_pos = 2.0;
				break;
			}
			case 1:{
				//FormSquare
				new_x_pos = 26.0;
				new_y_pos = -2.0;
				break;
			}
			case 2:{
				//FormCircle
				new_x_pos = -26.0;
				new_y_pos = 2.0;
				break;
			}
			case 3:{
				//FormTriangle
				new_x_pos = -26.0;
				new_y_pos = -2.0;
				break;
			}
			}
			//ROS_INFO("Robot %d received the %d instruction", id, group_id%4);

			// Check if the robot has arrived
			// If it has, change its state to RETURN_INSTRUCTIONS
			if (fabs(new_x_pos - px)< LINEAR_TOL){ // check x coordinate
				if (fabs(new_y_pos - py)< LINEAR_TOL){
					if (fabs(final_theta - theta)< ANGULAR_TOL){
						current_state = RETURN_INSTRUCTIONS;
						break;
					}
				}
			};
			// Global variables are set now it is free to move
			instructionsMove = moveToNewPoint();
			//set them to this
			RobotNode_cmdvel.linear.x = instructionsMove[0];
			RobotNode_cmdvel.angular.z = instructionsMove[1];
			break;

		}
		case RETURN_INSTRUCTIONS: {
			/*
			 * This state will make the leader backtrack to its position at the head of the line
			 */
			has_instructions = true; // It has the message!
			// Load those stored variables back as the target destination
			new_x_pos = lineHeadX;
			new_y_pos = lineHeadY;
			final_theta = lineHeadTheta;

			// Again check if it is in place
			if (fabs(new_x_pos - px)< LINEAR_TOL){ // check x coordinate
				if (fabs(new_y_pos - py)< LINEAR_TOL){ // y coord
					if (fabs(final_theta - theta)< ANGULAR_TOL){ // check robot at correct rotation
						// Congratulations! You are back at the head of the line with
						// A tasty new message to share
						// Better get back into position
						current_state = IN_POSITION;
						break;
					}
				}
			};
			instructionsMove = moveToNewPoint();
			//set them to this
			RobotNode_cmdvel.linear.x = instructionsMove[0];
			RobotNode_cmdvel.angular.z = instructionsMove[1];
			break;
		}
		/*
		 * These last four states are used firstly by the leader to tell the other robots to change state
		 * and secondly to calculate the positions for each robot to go to.
		 */
		case CIRCLING: {
			// Leader only state
			// Step1: Set the leader to move in a circle
			RobotNode_cmdvel.linear.x = 0.6;
			RobotNode_cmdvel.angular.z = 0.1;
			// Step2: Tell the other members of the group to change their state to FOLLOWING
			state.group = group_id; // ALWAYS LEADER
			state.state = FOLLOWING;
			// Publish state here
			/*
			 * STATE PUBLISHING MUST GO HERE AS IT IS NOT ALWAYS INVOKED AND ONLY EVER BY THE LEADER
			 */
			RobotNodeState_pub.publish(state);
			break;
		}
		case FORM_SQUARE: {
			/*
			 * All access
			 * Leader will enter first and tell its henchmen to be squares too
			 */
			// Get coordinates from position_id and leader coords
			// LineHead is the position of the leader when it is in line
			Project2Sample::R_ID inputs;
			inputs.Pos_ID = position_id; inputs.x = lineHeadX; inputs.y = lineHeadY;
			vector<float> Coord = formSquare(inputs, group_size);
			// Update global variables
			new_x_pos = Coord[0];
			new_y_pos = Coord[1];
			//ROS_INFO("Robot %d should go to x coordinate: %f", id, new_x_pos);
			instructionsMove = moveToNewPoint();
			//set them to this
			RobotNode_cmdvel.linear.x = instructionsMove[0];
			RobotNode_cmdvel.angular.z = instructionsMove[1];
			// Change the rest of the group
			state.group = group_id;
			state.state = FORM_SQUARE;
			RobotNodeState_pub.publish(state);
			break;
		}
		case FORM_CIRCLE: {
			// Get coordinates from position_id and leader coords
			Project2Sample::R_ID inputs;
			inputs.Pos_ID = position_id; inputs.x = lineHeadX; inputs.y = lineHeadY;inputs.theta = lineHeadTheta;
			vector<float> Coord = formCircle(inputs, group_size);

			// Update global variables
			new_x_pos = Coord[0];
			new_y_pos = Coord[1];
			instructionsMove = moveToNewPoint();
			//set them to this
			RobotNode_cmdvel.linear.x = instructionsMove[0];
			RobotNode_cmdvel.angular.z = instructionsMove[1];

			state.group = group_id;
			state.state = FORM_CIRCLE;
			RobotNodeState_pub.publish(state);
			break;
		}
		case FORM_TRIANGLE: {
			// Get coordinates from position_id and leader coords
			Project2Sample::R_ID inputs;
			inputs.Pos_ID = position_id; inputs.x = lineHeadX; inputs.y = lineHeadY;inputs.theta = lineHeadTheta;
			vector<float> Coord = formTriangle(inputs, group_size);

			// Update global variables
			new_x_pos = Coord[0];
			new_y_pos = Coord[1];
			instructionsMove = moveToNewPoint();
			//set them to this
			RobotNode_cmdvel.linear.x = instructionsMove[0];
			RobotNode_cmdvel.angular.z = instructionsMove[1];

			state.group = group_id;
			state.state = FORM_TRIANGLE;
			RobotNodeState_pub.publish(state);
			break;
		}
		}

		/*
		 * Broadcast new details
		 */
		Project2Sample::R_ID msg;
		msg.R_ID = id;
		msg.x = px;
		msg.y = py;
		msg.theta = theta;
		msg.R_State = current_state;
		msg.Follow_ID = follow_id;
		msg.Group_ID = group_id;
		msg.Pos_ID = position_id;
		msg.newX = new_x_pos;
		msg.newY = new_y_pos;
		msg.leaderTheta = final_theta;

		RobotNode_pub.publish(msg);
		RobotNode_stage_pub.publish(RobotNode_cmdvel);



		ros::spinOnce();
		ros::Rate(10).sleep();
		count++;

	}

	return 0;

}
