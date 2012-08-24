/** 
* @file GoToSquare.cpp
* @brief this file is used to calculate the positions of the robots in the square
*
* @author team brett
*
* @date 21/08/12
*/

#include "GoToSquare.h"
#include <vector>
#include <iostream>
#include <cmath>
#include "math.h"
#include <algorithm>

using namespace std;


/**
* This method returns the positions in the square for all of the group members
* @author team brett
* @param vector vector of robots in group
* @date 21/08/2012
*/
vector<float> formSquare(Project2Sample::R_ID inputs, int groupsize) {
	vector<float> squareCoord;
	int posID = inputs.Pos_ID;
	float leaderX = 2*inputs.x;
	float leaderY = 2*inputs.y;
	float fiveRobotLength = 5 * 0.35;
	float spacing0 =  fiveRobotLength;
	float spacing1 =  fiveRobotLength;
	float spacing2 =  fiveRobotLength;
	float spacing3 =  fiveRobotLength;
	int numOfRobots = groupsize;

	//get length of sides
	float lengthOfSide = ceil((float)numOfRobots / 4.0) * 5.0* 0.35;
	//float lengthOfSide = 5.5; // Hardcoded based on 11 robots
	int squareSide;

	// j keeps track of which side of the square the robot will belong to
	// First four robots are corners
	squareSide = posID % 4;
	switch (squareSide) {
	case 0: // First side
		if (posID == 0) { // First corner
			squareCoord.push_back(leaderX); // Position stays the same (for now)
			squareCoord.push_back(leaderY);
		} else { // Not corner, just on the edge
			squareCoord.push_back(leaderX + spacing0);
			squareCoord.push_back(leaderY);
			spacing0 += fiveRobotLength;
		}
		break;
	case 1:
		if (posID == 1) {
			squareCoord.push_back(leaderX + lengthOfSide);
			squareCoord.push_back(leaderY);
		} else {
			squareCoord.push_back(leaderX + lengthOfSide);
			squareCoord.push_back(leaderY + spacing1);
			spacing1 += fiveRobotLength;
		}
		break;
	case 2:
		if (posID == 2) {
			squareCoord.push_back(leaderX + lengthOfSide);
			squareCoord.push_back(leaderY + lengthOfSide);
		} else {
			squareCoord.push_back(leaderX + lengthOfSide - spacing2);
			squareCoord.push_back(leaderY + lengthOfSide);
			spacing2 += fiveRobotLength;
		}
		break;
	case 3:
		if (posID == 3) {
			squareCoord.push_back(leaderX);
			squareCoord.push_back(leaderY + lengthOfSide);
		} else {
			squareCoord.push_back(leaderX);
			squareCoord.push_back(leaderY + lengthOfSide - spacing3);
			spacing3 += fiveRobotLength;
		}
		break;
	}
	return squareCoord;
}
