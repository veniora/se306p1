/*
 * CalculatePositions.cpp
 *
 *  Created on: 6/08/2012
 *      
 */

#include <iostream>
#include <vector>
#include <math.h>
#include <cmath>
#include "ros/ros.h"
#include "std_msgs/String.h"
#include "Project2Sample/R_ID.h"
#include <geometry_msgs/Twist.h>
#include <nav_msgs/Odometry.h>
#include <sensor_msgs/LaserScan.h>
#include "Project2Sample/DetermineLeader.h"
#include "Project2Sample/R_ID_Follow.h"

#define PI 3.14159265

using namespace std;

struct msg {
	int id;
	int followID;
	float x;
	float y;
	float theta;
} ;

vector<msg> coordinates;
vector<msg> results;
msg item;
int leader = -1;
bool kl = true;

// Similar to the find leader algorithm.
// It takes the vector of all unassigned robots and calculates their distances to the next available position in line. It then assigns the closest one that place.
int findClosestRobot(float newX, float newY, vector <msg> messages) {
	int minDistance = 9999999; //make the biggest number
	int closestRobotID = -1;
	
	// Iterate through list of unassigned robots and calculate distance from next point
	for (int i = 0; i < messages.size(); i++){
		msg m = messages[i];
		float distance = sqrt(pow(newX - m.x, 2) + pow(newY - m.y, 2));
		distance = abs(distance);
		
		// If closer, update robot id
		if (distance < minDistance){
			closestRobotID = m.id;
			minDistance = distance;
		}
	}
	return closestRobotID;
}

// Function to be called once the list of current positions is known and the leader ID has been calculated
vector <msg> calculatePositions(vector <msg> messages, int leaderID) {
	float currentX; // initialised as leader positions
	float currentY;
	float leaderTheta;
	float deltaX;
	float deltaY;
	float fiveRobots = 5 * 0.35; // Assuming robot length of 0.35

	// Initialise output format
	vector <msg> newPositions(messages.size());
	//cout << messages.size() << "\n";

	int first;
	//loop through R_IDs to find which one matches the leader ID
	for (int i = 0; i < messages.size(); i++){
		msg m = messages[i];
		//find leader's x,y
		if (m.id == leaderID){
			first = i;
			currentX = m.x;
			currentY = m.y;

			newPositions[0] = m; // Add to output
		}
	}

	//calculate the angle the robot position vector makes with the positive x axis
	// Angles in radians
	float lineAngle = atan(currentY/currentX);

	// This is the change in x and y each time a robot is added on the line through the origin and leader at 5 robot lengths away
	deltaX = fiveRobots * cos(lineAngle);
	deltaY = fiveRobots * sin(lineAngle);


	// ROS uses degrees by default so convert back
	lineAngle = lineAngle * 180 / PI; // to degrees
	leaderTheta = 180 + lineAngle;

	// Different behaviour when in the negative x axis
	if (currentX < 0){
				deltaX = -deltaX;
				deltaY = -deltaY;
				leaderTheta += 180;

			}
		//cout << "deltaX: " << deltaX << "\n";
		//cout << "deltaY: " << deltaY << "\n";
		//cout << "leaderTheta: " << leaderTheta << "\n";


	newPositions[0].theta = leaderTheta; // store in output
	//finished with leader so erase from vector of messages.
	//use begin() + 1 for second element, etc.
	messages.erase(messages.begin()+first);

	// Populates the position values in the output array. They are in order of distance from origin (but lack battery and id values as yet)
	for (int i = 0; i < messages.size(); i++){
		// Find next position on the line
		currentX += deltaX;
		currentY += deltaY;
		//assign to positions vector
		newPositions[i+1].x = currentX; //Arrays are now different sizes
		newPositions[i+1].y = currentY;
		newPositions[i+1].theta = leaderTheta;
		}

	//assign robots to those positions


	int size = messages.size();
	for (int i = 1; i <= size; i++){
		//assign remaining fields, just giving them all the leader's battery life (for now)
		
		//find closest robot to the next available position to be filled
		newPositions[i].id = findClosestRobot(newPositions[i].x, newPositions[i].y, messages);

		//find and erase finished robot from original vector of messages. This cleans up the vector which is passed each time to 			findClosestRobot
		for (int j = 0; j <= messages.size(); j++){
			if (messages[j].id == newPositions[i].id){
				messages.erase(messages.begin()+j);
			}
		}
	}

	//Loop through to add follow id
	//Set leader to -1 first
	newPositions[0].followID = -1;
	//loop through remaining robots
	for (int i = 1; i < newPositions.size(); i++){
		cout << "following: " << newPositions[i-1].id << "\n";
		newPositions[i].followID = newPositions[i-1].id;
	}


	return newPositions;   //WORK OUT HOW TO TELL ROS ALL ABOUT IT

}

int findLeader() {
	double minDistance = 9999999.00; //make the biggest number
	for (int i = 0; i < coordinates.size(); i++){
		float distance = sqrt(pow(coordinates.at(i).x, 2.0) + pow(coordinates.at(i).y, 2.0));
		distance = fabs(distance); // Confirm positive value
		// Check if the robot distance is less than the current closest robot but not at the node itself
		if (distance > 0.00001 && distance < minDistance){
			leader = coordinates.at(i).id; // Set as new leader
			minDistance = distance;
		}
	}
	return leader;
}

bool addCoordinates_callback(Project2Sample::DetermineLeader::Request &req, Project2Sample::DetermineLeader::Response &res) {
    item.id = req.R_ID;
    item.x  =  req.x;
    item.y  =  req.y;
    item.theta = req.theta;
    coordinates.push_back(item);
    if (coordinates.size() == 6) {
	res.L_ID = findLeader();
        leader = res.L_ID;
        results = calculatePositions(coordinates, leader);
        
        kl = false;

        //ros::shutdown();
    }
    return true;
}

int main(int argc, char **argv) {

    ros::init(argc, argv, "CalculatePositions");
    ros::NodeHandle n;
    Project2Sample::R_ID_Follow node0;
    Project2Sample::R_ID_Follow node1;
    Project2Sample::R_ID_Follow node2;
    Project2Sample::R_ID_Follow node3;
    Project2Sample::R_ID_Follow node4;
    Project2Sample::R_ID_Follow node5;
    int count = 1;

    ros::ServiceServer service = n.advertiseService("Determine_Leader", addCoordinates_callback);

    while(kl){
       ros::spinOnce();
    }

    ros::Publisher Robot0_coord = n.advertise<Project2Sample::R_ID_Follow>("Robot0_new",1000); 
    ros::Publisher Robot1_coord = n.advertise<Project2Sample::R_ID_Follow>("Robot1_new",1000); 
    ros::Publisher Robot2_coord = n.advertise<Project2Sample::R_ID_Follow>("Robot2_new",1000); 
    ros::Publisher Robot3_coord = n.advertise<Project2Sample::R_ID_Follow>("Robot3_new",1000); 
    ros::Publisher Robot4_coord = n.advertise<Project2Sample::R_ID_Follow>("Robot4_new",1000); 
    ros::Publisher Robot5_coord = n.advertise<Project2Sample::R_ID_Follow>("Robot5_new",1000); 
 
    int i;
    for (i = 0; i < results.size(); i++) {
      	if (results.at(i).id == 0) {
             node0.followID = results.at(i).followID;
    	     node0.x = results.at(i).x;
             node0.y = results.at(i).y;
             node0.theta = results.at(i).theta;
        } else if (results.at(i).id == 1) {
             node1.followID = results.at(i).followID;
	     node1.x = results.at(i).x;
	     node1.y = results.at(i).y;
             node1.theta = results.at(i).theta;
        } else if (results.at(i).id == 2) {
             node2.followID = results.at(i).followID;
	     node2.x = results.at(i).x;
	     node2.y = results.at(i).y;
             node2.theta = results.at(i).theta;
        } else if (results.at(i).id == 3) {
             node3.followID = results.at(i).followID;
	     node3.x = results.at(i).x;
	     node3.y = results.at(i).y;
             node3.theta = results.at(i).theta;
        } else if (results.at(i).id == 4) {
             node4.followID = results.at(i).followID;
	     node4.x = results.at(i).x;
	     node4.y = results.at(i).y;
             node4.theta = results.at(i).theta;
        } else {
             node5.followID = results.at(i).followID;
	     node5.x = results.at(i).x;
	     node5.y = results.at(i).y;
             node5.theta = results.at(i).theta;
        }
    }
    ros::Rate loop_rate(10);
    while (ros::ok()) {

	Robot0_coord.publish(node0);
	Robot1_coord.publish(node1);
	Robot2_coord.publish(node2);
	Robot3_coord.publish(node3);
	Robot4_coord.publish(node4);
	Robot5_coord.publish(node5);
	ros::spinOnce();

	loop_rate.sleep();
	++count;

}
return 0;	
    return 0;
}
