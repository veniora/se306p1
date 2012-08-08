/*
 * CalculateLeaderCircle.cpp
 *
 *  Created on: 8/08/2012
 *      Author: levipatel
 */

#include <iostream>
#include <vector>
#include <math.h>
#include <cmath>

#define PI 3.14159265
#define ROBOT_LENGTH 0.35
#define LinearV 1

using namespace std;

vector<float> circleInstructions (int robotNumber){
	int scalingFactor = 1; // variable to resize the circle

	//calculate circle size based on number of robots
	float circumference = scalingFactor * robotNumber * 5 * ROBOT_LENGTH;
	float radius = circumference / (2 * PI);

	//find angular velocity in relation to a set linear velocity
	float angularV = LinearV / radius;

	//note: all other robots need to go to leader's position before beginning to move in the circle following

	circleInstructions[0] = LinearV;
	circleInstructions[1] = angularV;

	return circleInstructions;
}

