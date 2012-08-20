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
bool sortByDistance(Project2Sample::R_ID robot1, Project2Sample::R_ID robot2) {
	float distance1 = sqrt(pow(robot1.x, 2.0) + pow(robot1.y, 2.0));
	float distance2 = sqrt(pow(robot2.x, 2.0) + pow(robot2.y, 2.0));
	return (distance1 < distance2);
}

/**
 * Returns an array of integers representing the leaderID, groupID and posID.
 * format: [leaderID, groupID, posID]
 */
int* formGroup(vector<Project2Sample::R_ID> nodes, int robotID) {

	int* robotGroupInfo;
	//find number of leaders
	int groupID, posID, i;

	//number of leaders
	int numOfLeaders = nodes.size() / 2;
	sort(nodes.begin(), nodes.end(), sortByDistance);
	if ((fabs(nodes.at(0).x) < 0.0001) && (fabs(nodes.at(0).y) < 0.0001)) {
		nodes.insert(nodes.begin() + numOfLeaders + 1, nodes.at(0));
		nodes.erase(nodes.begin());
	}
	// Find the robot instance in the vector
	for (i = 0; i < nodes.size(); i++) {
		if (nodes.at(i).R_ID == robotID) {
			groupID = i % numOfLeaders;
			posID = i / numOfLeaders;
			robotGroupInfo[0] = nodes.at(groupID).R_ID;
			robotGroupInfo[1] = groupID;
			robotGroupInfo[2] = posID;
			break;
		}
	}
	return robotGroupInfo; //[LeaderID, groupID, posID]
}
//only need values for leader
/**
 * Calculates the position in line that the robot must go to
 * returns an array of floats representing X, Y and theta values
 * format: [X, Y, theta]
 */
float* calculatePosition(Project2Sample::R_ID leader, int posID) {

	float* newCoordinates;
	float fiveRobots = 5 * 0.35; // Assuming robot length of 0.35
	float newX, newY;
	//calculate the angle the robot position vector makes with the positive x axis
	// Angles in radians
	float lineAngle = atan(leader.y / leader.x);
	lineAngle = lineAngle * 180 / PI;
	float leaderTheta = 180 + lineAngle;

	// new value of x and y for the robot in the posID

	int check = 2 * (leader.x / fabs(leader.x)) + (leader.y / fabs(leader.y));

	switch (check) {
	case 3:
		newX = (fiveRobots * cos(lineAngle) * posID) + leader.x;
		newY = (fiveRobots * sin(lineAngle) * posID) + leader.y;
		break;
	case 1:
		newX = (fiveRobots * cos(lineAngle) * posID) + leader.x;
		newY = -(fiveRobots * sin(lineAngle) * posID) + leader.y;
		break;
	case -1:
		newX = -(fiveRobots * cos(lineAngle) * posID) + leader.x;
		newY = (fiveRobots * sin(lineAngle) * posID) + leader.y;
		break;
	case -3:
		newX = -(fiveRobots * cos(lineAngle) * posID) + leader.x;
		newY = -(fiveRobots * sin(lineAngle) * posID) + leader.y;
		break;
	}

	newCoordinates[0] = newX;
	newCoordinates[1] = newY;
	newCoordinates[2] = leaderTheta;

	return newCoordinates;

}

