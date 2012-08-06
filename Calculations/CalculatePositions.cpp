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

vector <msg> calculatePositions(vector <msg> messages, int leaderID) {
	float currentX;
	float currentY;
	float leaderTheta;
	float leaderBattery;
	float deltaX;
	float deltaY;
	float fiveRobots = 5 * 0.35;

	vector <msg> newPositions(messages.size());

	//loop through R_IDs to find leader
	for (int i = 0; i < messages.size(); i++){
			msg m = messages[i];
			//find leader's x,y
			if (m.id == leaderID){
				currentX = m.x;
				currentY = m.y;
				leaderBattery = m.batteryLife;
				newPositions[0] = m;
			}
	}

	//calculate angle
	float lineAngle = atan(currentY/currentX);
	lineAngle = lineAngle * 180 / PI;

	deltaX = fiveRobots * cos(lineAngle);
	deltaY = fiveRobots * sin(lineAngle);

	leaderTheta = 180 + lineAngle;  // ASSUMING DEGREES NOT RADIANS!!!!!!!!!!!!!!!

	newPositions[0].theta = leaderTheta;
	//finished with leader so erase from vector of messages.
	//use begin() + 1 for second element, etc.
	messages.erase(messages.begin());

	//sets new positions
	for (int i = 0; i < messages.size(); i++){
				//add change in position
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
		//find closest robot
		newPositions[i].id = findClosestRobot(newPositions[i].x, newPositions[i].y, messages);

		//find and erase finished robot from original vector of messages
		for (int j = 0; j < messages.size(); j++){
			if (messages[j].id == newPositions[i].id){
				messages.erase(messages.begin()+j);
			}
		}
	}

	return newPositions;   //WORK OUT HOW TO TELL ROSS ALL ABOUT IT

}


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


