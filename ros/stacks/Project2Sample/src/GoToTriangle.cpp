/** 
* @file GoToTriangle.cpp
* @brief this file is used to calculate the positions of the robots in the triangle
*
* @author team brett
*
* @date 16/08/12
*/

#include "GoToTriangle.h"


#include <vector>
#include <iostream>
#include <cmath>
#include "math.h"
#include <algorithm>
#define PI 3.14159265

using namespace std;

/**
* This method returns the positions in the triangle for all of the group members
* @author team brett
* @param vector vector of robots in group
* @date 21/08/2012
*/
vector<float> formTriangle(Project2Sample::R_ID inputs, int groupsize) {
	vector<float> triangleCoord; //  Outputs
	//int numOfRobots = 6; //Hard code for now
	int posID = inputs.Pos_ID;
	float fiveRobotLength = 5 * 0.35;

	float leaderX = 2*inputs.x; // random scaling factor to move them away from the origin a bit
	float leaderY = 2*inputs.y;
	float leaderTheta = inputs.theta;

		//Spacings
	float spacing0 =  fiveRobotLength;
	float spacing1 =  fiveRobotLength;
	float spacing2 =  fiveRobotLength;
	float angle = 60.0/180.0* PI;
	int numOfRobots = groupsize;
	//get length of sides
	float lengthOfSide = ceil((float)numOfRobots / 3.0) * fiveRobotLength;
	//float lengthOfSide = 7; //Based on a maximum of 11 robots
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
					triangleCoord.push_back(leaderY + y0);
					spacing0 = spacing0 + (fiveRobotLength);
				}
				break;
			case 1:
				topCorner = sqrt(pow(lengthOfSide, 2) - pow((lengthOfSide/2.0), 2));
				if (posID == 1) {
					triangleCoord.push_back(leaderX + lengthOfSide/2);
					triangleCoord.push_back(leaderY + topCorner);
				} else {
					x1 = sin(angle/2.0)*spacing1;
					ROS_INFO("x1: %f", x1);
					y1 = cos(angle/2.0)*spacing1;
					triangleCoord.push_back(leaderX + lengthOfSide/2.0 + x0);
					triangleCoord.push_back(leaderY + topCorner - y1);
					spacing1 = spacing1 + (fiveRobotLength);
				}
				break;
			case 2:
				if (posID == 2) {
					triangleCoord.push_back(leaderX + lengthOfSide);
					triangleCoord.push_back(leaderY);
				} else {
					triangleCoord.push_back(leaderX + spacing2);
					triangleCoord.push_back(leaderY);
					spacing2 = spacing2 + (fiveRobotLength);
				}
				break;
			}
	return triangleCoord;
}
