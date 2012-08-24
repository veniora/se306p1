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
vector<float> formSquare(Project2Sample::R_ID inputs, int groupsize) {
	vector<float> squareCoord;
	int posID = inputs.Pos_ID;
	float leaderX = 2*inputs.x;
	float leaderY = 2*inputs.y;
	float fiveRobotLength = 5 * 0.35;
	float spacing =  fiveRobotLength;
	/*float spacing1 =  fiveRobotLength;
	float spacing2 =  fiveRobotLength;
	float spacing3 =  fiveRobotLength;*/
	int numOfRobots = groupsize;

	//get length of sides
	float lengthOfSide = ceil((float)numOfRobots / 4.0) * 5.0* 0.35;
	//float lengthOfSide = 5.5; // Hardcoded based on 11 robots
	int squareSide;
	//checks how many spaces needed for the robot
	int nodeSpace;

	// j keeps track of which side of the square the robot will belong to
	// First four robots are corners
	squareSide = posID % 4;
	switch (squareSide) {
	case 0: // First side
		if (posID == 0) { // First corner
			squareCoord.push_back(leaderX); // Position stays the same (for now)
			squareCoord.push_back(leaderY);
		} else { // Not corner, just on the edge
			nodeSpace = posID/4;
			squareCoord.push_back(leaderX + nodeSpace * spacing);
			squareCoord.push_back(leaderY);
		}
		break;
	case 1:
		if (posID == 1) {
			squareCoord.push_back(leaderX + lengthOfSide);
			squareCoord.push_back(leaderY);
		} else {
			nodeSpace = posID/4;
			squareCoord.push_back(leaderX + lengthOfSide);
			squareCoord.push_back(leaderY + nodeSpace * spacing);
		}
		break;
	case 2:
		if (posID == 2) {
			squareCoord.push_back(leaderX + lengthOfSide);
			squareCoord.push_back(leaderY + lengthOfSide);
		} else {
			nodeSpace = posID/4;
			squareCoord.push_back(leaderX + lengthOfSide - nodeSpace*spacing);
			squareCoord.push_back(leaderY + lengthOfSide);
		}
		break;
	case 3:
		if (posID == 3) {
			squareCoord.push_back(leaderX);
			squareCoord.push_back(leaderY + lengthOfSide);
		} else {
			nodeSpace = posID/4;
			squareCoord.push_back(leaderX);
			squareCoord.push_back(leaderY + lengthOfSide - nodeSpace*spacing);
		}
		break;
	}
	return squareCoord;
}
