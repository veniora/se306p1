/*
 * CalculatePositions.cpp
 *
 *  Created on: 6/08/2012
 *      Author: levipatel
 */

#include <iostream>
#include <vector>
#include <math.h>
#include <cmath>

#define PI 3.14159265

using namespace std;

struct msg {
	int id;
  float x;
  float y;
  float theta;
  float batteryLife;
} ;

// Function to be called once the list of current positions is known and the leader ID has been calculated
vector <msg> calculatePositions(vector <msg> messages, int leaderID) {
	float currentX; // initialised as leader positions
	float currentY;
	float leaderTheta;
	float leaderBattery;
	float deltaX;
	float deltaY;
	float fiveRobots = 5 * 0.35; // Assuming robot length of 0.35
	
	// Initialise output format
	vector <msg> newPositions(messages.size());

	//loop through R_IDs to find which one matches the leader ID
	for (int i = 0; i < messages.size(); i++){
			msg m = messages[i];
			//find leader's x,y
			if (m.id == leaderID){
				currentX = m.x;
				currentY = m.y;
				leaderBattery = m.batteryLife; // To conform to the batteryLife parameter in R_ID
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

	newPositions[0].theta = leaderTheta; // store in output
	//finished with leader so erase from vector of messages.
	//use begin() + 1 for second element, etc.
	messages.erase(messages.begin());

	// Populates the position values in the output array. They are in order of distance from origin (but lack battery and id values as yet)
	for (int i = 0; i < messages.size(); i++){
				// Find next position on the line
				currentX += deltaX;
				currentY += deltaY;
				//assign to positions vector
				newPositions[i].x = currentX;
				newPositions[i].y = currentY;
				newPositions[i].theta = leaderTheta;

		}

	//assign robots to those positions


	//loop through positions and find the closest robot to give this position
	for (int i = 0; i < messages.size(); i++){
		//assign remaining fields, just giving them all the leader's battery life (for now)
		newPositions[i].batteryLife = leaderBattery;
		//find closest robot to the next available position to be filled
		newPositions[i].id = findClosestRobot(newPositions[i].x, newPositions[i].y, messages);

		//find and erase finished robot from original vector of messages. This cleans up the vector which is passed each time to findClosestRobot
		for (int j = 0; j < messages.size(); j++){
			if (messages[j].id == newPositions[i].id){
				messages.erase(messages.begin()+j);
			}
		}
	}

	return newPositions;   //WORK OUT HOW TO TELL ROS ALL ABOUT IT

}

// Similar to the find leader algorithm.
// It takes the vector of all unassigned robots and calculates their distances to the next available position in line. It then assigns the closest one that place.
int findClosestRobot(float newX, float newY, vector <msg> messages) {
	int minDistance = 9999999; //make the biggest number
	int closestRobotID = -1;

	for (int i = 0; i < messages.size(); i++){
		msg m = messages[i];
		float distance = sqrt((newX - m.x)^2 + (newY - m.y)^2);
		distance = abs(distance);

		if (distance < minDistance){
			closestRobotID = m.id;
			minDistance = distance;
		}
	}
	return closestRobotID;
}


