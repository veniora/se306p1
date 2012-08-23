/*
 * GoToSquare.cpp
 *
 *  Created on: Aug 15, 2012
 *      Author: charu
 */

#include "GoToSquare.h"
#include <vector>
#include <iostream>
#include <cmath>
#include "math.h"
#include <algorithm>

using namespace std;

// returns coordinates [x,y] of a robot as to where they belong in a square
/*
 * Must work for a single robot
 * Inputs are its position_id, and leader's x value and y value
 * Size will be hardcoded to a size suitable for up to 11 robots
 */
vector<float> formSquare(Project2Sample::R_ID squareInputs) {
	vector<float> squareCoord;
	int posID = squareInputs.Pos_ID;
	double leaderX = squareInputs.x;
	double leaderY= squareInputs.y;

	float fiveRobotLength = 5 * 0.35;
	float spacing0 =  fiveRobotLength;
	float spacing1 =  fiveRobotLength;
	float spacing2 =  fiveRobotLength;
	float spacing3 =  fiveRobotLength;

	//get length of sides
	//float lengthOfSide = ceil((float)numOfRobots / 4.0) * 5.0* 0.35;
	float lengthOfSide = 5.5; // Hardcoded based on 11 robots
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
