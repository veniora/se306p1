/*
 * FindGroup.cpp
 *
 *  Created on: Aug 13, 2012
 *      Author: pauline
 */

#include "FindGroup.h"
#include <vector>
#include <iostream>
#include <cmath>
#include "math.h"
#include <algorithm>

#define PI 3.14159265

using namespace std;

//checks distance
bool sortByDistance (Project2Sample::R_ID robot1, Project2Sample::R_ID robot2) {
	float distance1 = sqrt(pow(robot1.x, 2.0) + pow(robot1.y, 2.0));
	float distance2 = sqrt(pow(robot2.x, 2.0) + pow(robot2.y, 2.0));
	//	ROS_INFO("Distance1: %f", distance1);
	if ( fabs(distance1) < 0.001){ // If within a tolerance of the origin, put at the end
		distance1 = 0.0; // meaning robot1 will be placed after robot2
	}
	return (distance1 < distance2);
}


vector<int> formGroup(vector<Project2Sample:: R_ID> nodes, int robotID) {

	vector<int> robotGroupInfo;
	//find number of leaders
	int groupID, posID, i;

	//number of leaders
	int numOfLeaders = nodes.size()/6;
	sort(nodes.begin(), nodes.end(), sortByDistance);

	// Find the robot instance in the vector
	for (i = 0; i < nodes.size(); i++) {
		if (nodes.at(i).R_ID == robotID) {
			groupID = i % numOfLeaders;
			posID = i / numOfLeaders;
			robotGroupInfo.push_back(nodes.at(groupID).R_ID);
			robotGroupInfo.push_back(groupID);
			robotGroupInfo.push_back(posID);
			break;
		}
	}
	return robotGroupInfo;      //[LeaderID, groupID, posID]
}
//only need values for leader

vector<float> calculatePosition(Project2Sample::R_ID leader, int posID) {
    ROS_INFO("CalculatePosition() method");

	vector<float> newCoordinates;
	float fiveRobots = 5 * 0.35; // Assuming robot length of 0.35
	float newX, newY, leaderTheta;
	float deltaX, deltaY;
	//calculate the angle the robot position vector makes with the positive x axis
	// Angles in radians
	double lineAngle = atan2(fabs(leader.y),fabs(leader.x));
	//lineAngle = lineAngle * 180 / PI; // convert to degrees
	//float leaderTheta = PI + lineAngle; // keep in radians

	// These are the changes in each coordinate based on the angle it makes with the origin
	deltaX = (posID * fiveRobots * cos(lineAngle));
	deltaY = (posID * fiveRobots * sin(lineAngle));

	// Find new position based on position on the leader

	if (leader.x >= 0){ // leader is on the right side
		if (leader.y >= 0) { // leader on top right
			newX = leader.x + deltaX;
			newY = leader.y + deltaY;
			leaderTheta = lineAngle + PI;
		} else { // leader on bottom right
			newX = leader.x + deltaX;
			newY = leader.y - deltaY;
			leaderTheta = -lineAngle + PI;
		}
	} else { // leader is on the left side
		if (leader.y >= 0) { // leader on top left
			newX = leader.x - deltaX;
			newY = leader.y + deltaY;
			leaderTheta = lineAngle + 3*PI/2;
		} else { // leader on bottom left
			newX = leader.x - deltaX;
			newY = leader.y - deltaY;
			leaderTheta = lineAngle;
		}
	}

	newCoordinates.push_back(newX);
	newCoordinates.push_back(newY);
	newCoordinates.push_back(leaderTheta*180/PI);

	return newCoordinates;

}

