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

//fields to hold its current position
float xField;
float yField;
float thetaField;
int followField;

int Id;
int LeaderID;
int GroupID;
int PositionID;
int FollowID;


//boolean to make sure they don't subscribe to follow twice
bool subscribedFollow;


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

// returns the angle needed to reach next position.
float rotateFinalAngleInstructions(vector<float> currentPosition, vector<float> newPosition){

    //ROS_INFO("start of rotate instructions");

    float deltaY = newPosition[1] - currentPosition[1];
    float deltaX = newPosition[0] - currentPosition[0];


    float deltaTheta;

    // the angle from the origin to the new position and convert to degrees
    float alpha = atan(deltaY/deltaX);
    alpha = 180 * alpha / PI;

    //Find the quadrant to work out difference
    if (deltaX >= 0 && deltaY >= 0){ // right and up
        deltaTheta = alpha - currentPosition[2];
    } else if (deltaX >= 0 && deltaY <= 0){ // right and down
        deltaTheta = (alpha) - currentPosition[2];
    } else if (deltaX <= 0 && deltaY >= 0){ // left and up
        deltaTheta = 180 - currentPosition[2] + alpha;
    } else if (deltaX <= 0 && deltaY <= 0){ // left and down
        deltaTheta = alpha - 180 - currentPosition[2];
    } else {
        ROS_INFO("no quadrant found");
    }

    //modulate deltaTheta
    deltaTheta = fmodf(deltaTheta, 360.0);
    return deltaTheta;
}
// returns velocity direction to rotate for next position
float rotateDirectionInstructions(float deltaTheta){
    deltaTheta = fmodf(deltaTheta, 360.0);
    float AngularV = 0;
    if (deltaTheta <= 2 && deltaTheta > 358){
        AngularV = 0;
    } else if (deltaTheta >= 2 && deltaTheta <= 180){
        AngularV = 1;
    } else if (deltaTheta <= 358 && deltaTheta > 180){
        AngularV = -1;
    } else if (deltaTheta < 2 && deltaTheta >= -2){
        AngularV = 0;
    } else if (deltaTheta <= -2 && deltaTheta >= -180){
        AngularV = -1;
    } else if (deltaTheta <= -180){
        AngularV = 1;
    } else {
        ROS_INFO("no angular velocity assigned");
    }

    return AngularV;
}

//Tells the robot where it is now and sets fields
void poseCallback(nav_msgs::Odometry msg){

    float theta;
    double thetaRadians = msg.pose.pose.position.z+ PI/2;
    if (fabs(thetaRadians) < 0.0001) {
        theta = 0.0;
    } else {
        if (thetaRadians < 0.0) {
            theta = 360.0 - (fabs(thetaRadians) * 180.0/PI);
        } else {
            theta = thetaRadians * 180.0/PI;
        }
    }

    xField = msg.pose.pose.position.x;
    yField = msg.pose.pose.position.y;
    thetaField = theta;
    // give robots current position
    //ROS_INFO("%f",msg.pose.pose.position.x);
    //ROS_INFO("%f",msg.pose.pose.position.y);
    //ROS_INFO("%f",theta);

}

//this method is called when the robot in front publishes its coordinates when it moves
//HARD CODE THE RESULTS FOR NOW
void poseCallbackFollow(Project2Sample::R_ID msg){
    //check that it should be following, if not then just return
    if (currentState != FOLLOWING){
        return;
    }


    ros::NodeHandle nb;
    ros::Publisher RobotNode_stage_pub = nb.advertise<geometry_msgs::Twist>("Robot1_vel",1000);
    //gets in a message with the position of who its following
  
    //ask for velocity instructions
    vector<float> current(3);
    current[0] = xField;
    current[1] = yField;
    current[2] = thetaField;

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

// passeed in new position , x y theta in a msg
vector<float> moveToNewPoint(){


    // NEED TO ADD GLOBAL BOOLEAN
    // aka in position and only calls this while
    // its not in final position

    vector<float> instructions(2);
    //ask for velocity instructions
    vector<float> current(3);
    current[0] = xField;
    current[1] = yField;
    current[2] = thetaField;

    vector<float> next(3);
    next[0] = -2.0;
    next[1] = -2.0;
    next[2] = 45.0;

    bool rightSpot = false;
    float linearInst = 1.0;
    float deltaAngle = rotateFinalAngleInstructions(current, next);
    float finalAngle = deltaAngle + thetaField;
    
    if(finalAngle < 0){
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
    //ROS_INFO("start of while2 %f", thetaField);
    if(current[0] >= (upperX) || current[0] <= (lowerX) || current[1] >= (upperY) || current[1] <= (lowerY)){
        //set them to this      
        rightSpot = false;
        //ROS_INFO("BAD SPOT: %f < %f < %f && %f < %f < %f", lowerX, current[0], upperX, lowerY, current[1], upperY);            
    }else{
        rightSpot = true;    
    }   

    if(!rightSpot){
        if(current[2] >= upperFinalAngle || current[2] <= lowerFinalAngle){
            float rotateInst = 0.1 * rotateDirectionInstructions(rotateFinalAngleInstructions(current, next));
          //set them to this
            instructions[0] = 0.0;
            instructions[1] = rotateInst;
            return instructions;
        }else {
            instructions[0] = 1.0;
            instructions[1] = 0;
        }
    }

      if(! rightSpot){
        //set them to this     
        instructions[0] = linearInst;
        instructions[1] = 0;
    } else {
        rightSpot = true;
        instructions[0] = 0;
        instructions[1] = 0;
    }

    if(rightSpot){
        if(current[2] >= upperOriginAngle || current[2] <= lowerOriginAngle){  
            // could add in to make more efficient if they worked            
            //float turnTheta = fmodf((current[2] - next[2]), 360.0); 
            //float rotateInst = rotateDirectionInstructions(turnTheta);
            
            instructions[0] = 0.0;
            instructions[1] = 0.5;
        }else{
            instructions[0] = 0.0;
            instructions[1] = 0.0;
            currentState = IDLE;       
        }
    }
    return instructions;

}

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

//subscribe to listen to messages about where it is now
	ss.str("");
	ss << "Robot" << argv[1] << "_truth";
	ros::Subscriber Truth_sub = n.subscribe(
			ss.str(), 1000, &poseCallback);

//publish its own position for other robots to follow
	ss.str("");
	ss << "Robot" << argv[1] << "_follow";
	ros::Publisher Follow_pub = n.advertise<Project2Sample::R_ID>(
			ss.str(), 1000);



//subscribe to listen to messages coming from stage
	ss.str("");
	ss << "Robot" << argv[1] << "_odo";
	ros::Subscriber StageOdo_sub = n.subscribe<nav_msgs::Odometry>(ss.str(),
			1000, StageOdom_callback);
	ss.str("");
	ss << "Robot" << argv[1] << "_laser";
	ros::Subscriber StageLaser_sub = n.subscribe<sensor_msgs::LaserScan>(
			ss.str(), 1000, StageLaser_callback);

	ss.str("");

	//subscribe to listen to their current states
	ros::Subscriber Robot_state = n.subscribe<Project2Sample::State>("Robot_state",
			1000, RobotState_callback);

	ros::Rate loop_rate(10);

//a count of how many messages we have sent
	int count = 0;

    //initialise followField to -2
    followField = -2;
    //initialise subscribedFollow field
    subscribedFollow = false;

////messages
//velocity of this RobotNode
	geometry_msgs::Twist RobotNode_cmdvel;
//message object to other robots
	Project2Sample::R_ID msg;

    //HARD CODE FOLLOWFIELD JUST TO TEST
    followField = 2;

    //initialise variables to be used in case statements
    vector<float> robotCoordinates;
    vector<int> robotInfo;
    vector<float> instructionsMove;

	while (ros::ok()) {
		ROS_INFO("currentState, %d", currentState);

        //subscribe to follow the one in front of it if this has been found, it is not the leader, and it hasn't subscribed already
        if (followField != -2 && PositionID != 0 && subscribedFollow == false){
        //subscribe to the robot it should follow's position
        //note: need to set followField before this can be called
	        ss.str("");
	        ss << "Robot" << PositionID << "_follow";
	        ros::Subscriber Follow_sub = n.subscribe(
			ss.str(), 1000, &poseCallbackFollow);
            subscribedFollow = true;
        }
        

		//messages to stage
		RobotNode_cmdvel.linear.x = linear_x;
		RobotNode_cmdvel.angular.z = angular_z;
		switch (currentState) {
			case IDLE:
						msg.R_ID = Id;
						//ROS_INFO("id: %d", msg.R_ID);
						msg.x = px;
						//ROS_INFO("id: %f", msg.x);
						msg.y = py;
						//ROS_INFO("id: %f", msg.y);
						RobotNode_pub.publish(msg);
						ros::spinOnce();
                        currentState = MOVING_INTO_POS;
						break;
            case MOVING_INTO_POS:
                        instructionsMove = moveToNewPoint();
                        //set them to this
                        RobotNode_cmdvel.linear.x = instructionsMove[0];
                        RobotNode_cmdvel.angular.z = instructionsMove[1];
				        break;
			case FORMING_GROUP:
						FindGroup f;
						GetGroup g;
						//[leaderID, groupID, posID]
						robotInfo = f.formGroup(nodes, Id);
						int i;
						for (i = 0; i < nodes.size(); ++i) {
							if (nodes.at(i).R_ID == robotInfo.at(0)) {
								msg.R_ID = nodes.at(i).R_ID;
								msg.x = nodes.at(i).x;
								msg.y = nodes.at(i).y;
								msg.theta = nodes.at(i).theta;
								msg.Group_ID = robotInfo.at(1);                            PositionID = robotInfo.at(2);
								ROS_INFO("group id: %d", msg.Group_ID);

								msg.Pos_ID = robotInfo.at(2);
								LeaderID = robotInfo.at(0);
								GroupID = robotInfo.at(1);
								PositionID = robotInfo.at(2);
								RobotNode_pub.publish(msg);
								break;
							}
						}
						robotCoordinates = f.calculatePosition(msg, msg.Pos_ID);
						ROS_INFO("newX: %f", robotCoordinates.at(0));
						ROS_INFO("newY: %f", robotCoordinates.at(1));
						ROS_INFO("theta: %f", robotCoordinates.at(2));
						msg.leaderTheta = robotCoordinates.at(2);
						break;
//			case FOLLOWING:
//				break;
//			case CIRCLING:
//				break;
//			case FORM_SQUARE:
//				break;
///			case FORM_CIRCLE:
//				break;
		}

        Project2Sample::R_ID msg;
        msg.R_ID = Id;
        msg.x = xField;
        msg.y = yField;
        msg.theta = thetaField;

        //broadcast its own position
        Follow_pub.publish(msg);
		RobotNode_stage_pub.publish(RobotNode_cmdvel);

		ros::spinOnce();

		loop_rate.sleep();
		++count;

	}

	return 0;

}
