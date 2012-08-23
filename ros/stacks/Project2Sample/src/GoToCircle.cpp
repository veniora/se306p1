/*
 * GoToCircle.cpp
 *
 *  Created on: Aug 15, 2012
 *      Author: charu
 */

#include "GoToCircle.h"
#include <vector>
#include <iostream>
#include <cmath>
#include "math.h"
#include <algorithm>

#define PI 3.14159265

using namespace std;


// returns coordinates [x,y] of a robot as to where they belong in a circle
vector<float> formCircle(Project2Sample::R_ID inputs) {
	int posID = inputs.Pos_ID;
	float leaderX = 3*inputs.x; //random scaling factor to move them away from the origin
	float leaderY = 3*inputs.y;
	float leaderTheta = inputs.theta;
	// Outputs
	vector<float> circleCoord;
	int numOfRobots = 6; //Hard code for now
	float fiveRobotLength = 5 * 0.35;
	float circumference = float(numOfRobots+1) * fiveRobotLength;
	float radius = circumference / (2*PI);

	//get new theta to find [x,y] of radius
	float newTheta = leaderTheta - 180.00;
	float centreX = (radius*cos(newTheta)) + leaderX;
	float centreY = (radius*sin(newTheta)) + leaderY;
	float angle = (360.0/(float)numOfRobots)/180.00 * PI;


	// Needs to be changed, leader position is wrong.
	if(posID == 0){
		circleCoord.push_back(leaderX);
		circleCoord.push_back(leaderY);
	}else{
		circleCoord.push_back((radius*(cos((posID+1)*angle))) + centreX);
		circleCoord.push_back((radius*(sin((posID+1)*angle))) + centreY);
	}
	// Use the position id to find the correct coordinates



	return circleCoord;
}
