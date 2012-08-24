/** 
 * @file GoToCircle.cpp
 * @brief this file is used to calculate the positions of the robots in the circle
 *
 * @author team brett
 *
 * @date 21/08/12
 */

#include "GoToCircle.h"
#include <vector>
#include <iostream>
#include <cmath>
#include "math.h"
#include <algorithm>

#define PI 3.14159265

using namespace std;


/**
 * This method returns the positions in the circle for all of the group members
 * @author team brett
 * @param vector vector of robots in group
 * @date 21/08/2012
 */
vector<float> formCircle(Project2Sample::R_ID inputs, int groupsize) {
	int posID = inputs.Pos_ID;
	float leaderX = inputs.x; //random scaling factor to move them away from the origin
	float leaderY = inputs.y;
	float leaderTheta = inputs.theta;
	// Outputs
	vector<float> circleCoord;
	int numOfRobots = groupsize; //Hard code for now - not anymore ;)
	float fiveRobotLength = 5 * 0.35;
	float circumference = float(numOfRobots+1) * fiveRobotLength;
	float radius = circumference / (2*PI);

	float angle = (360.0/(float)numOfRobots)/180.00 * PI;

	circleCoord.push_back((radius*(cos((posID+1)*angle))) + leaderX);
	circleCoord.push_back((radius*(sin((posID+1)*angle))) + leaderY);
	return circleCoord;
}
