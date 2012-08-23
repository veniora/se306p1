/*
 * GoToTriangle.cpp
 *
 *  Created on: Aug 23, 2012
 *      Author: charu
 */

#include "GoToTriangle.h"


#include <vector>
#include <iostream>
#include <cmath>
#include "math.h"
#include <algorithm>
#define PI 3.14159265

using namespace std;

// returns coordinates [x,y] of a robot as to where they belong in a square
vector<float> formTriangle(Project2Sample::R_ID inputs) {
	vector<float> triangleCoord; //  Outputs
	//int numOfRobots = 6; //Hard code for now
	int posID = inputs.Pos_ID;
	float fiveRobotLength = 5 * 0.35;

	float leaderX = 3*inputs.x; // random scaling factor to move them away from the origin a bit
	float leaderY = 3*inputs.y;
	float leaderTheta = inputs.theta;

		//Spacings
	float spacing0 =  fiveRobotLength;
	float spacing1 =  fiveRobotLength;
	float spacing2 =  fiveRobotLength;
	float angle = 60.0/180.0* PI;

	//get length of sides
	//float lengthOfSide = ceil((float)numOfRobots / 3.0) * fiveRobotLength;
	float lengthOfSide = 7; //Based on a maximum of 11 robots
	float x0,y0,x1,y1,topCorner;
	int triangleSide; // Track which of the three sides it is on

	//change coordinates to make triangle

			triangleSide = posID % 3;
			switch (triangleSide) {
			case 0:
				if (posID == 0) {
					triangleCoord.push_back(leaderX);
					triangleCoord.push_back(leaderY);
				} else {
					x0 = cos(angle)*spacing0;
					y0 = sin(angle)*spacing0;
					triangleCoord.push_back(leaderX + x0);
					triangleCoord.push_back(group.at(0).y + y0);
					spacing0 = spacing0 + (fiveRobotLength);
				}
				break;
			case 1:
				topCorner = sqrt(pow(lengthOfSide, 2) - pow((lengthOfSide/2), 2));
				if (posID == 1) {
					triangleCoord.push_back(leaderX + lengthOfSide/2);
					triangleCoord.push_back(group.at(0).y + topCorner);
				} else {
					x1 = sin(angle/2.0)*spacing1;
					y1 = cos(angle/2.0)*spacing1;
					triangleCoord.push_back(leaderX + lengthOfSide/2 + x0);
					triangleCoord.push_back(group.at(0).y + topCorner - y1);
					spacing1 = spacing1 + (fiveRobotLength);
				}
				break;
			case 2:
				if (posID == 2) {
					triangleCoord.push_back(leaderX + lengthOfSide);
					triangleCoord.push_back(group.at(0).y);
				} else {
					triangleCoord.push_back(leaderX + spacing2);
					triangleCoord.push_back(group.at(0).y);
					spacing2 = spacing2 + (fiveRobotLength);
				}
				break;
			}
	return triangleCoord;
}
