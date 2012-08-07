/*
 * CalculateAngleToDestination.cpp
 *
 *  Created on: 7/08/2012
 *      Author: levipatel
 */



#include <iostream>
#include <vector>
#include <math.h>
#include <cmath>

#define PI 3.14159265
#define AngularV 1

using namespace std;

vector<float> rotateInstructions (int id, vector<float> currentPosition, vector<float> newPosition){

	float deltaY = newPosition[1] - currentPosition[1];
	float deltaX = newPosition[0] - currentPosition[0];
	vector<float> instructions;

	float deltaTheta;

	// the angle from the origin to the new position and convert to degrees
	float alpha = atan(deltaY/deltaX);
	alpha = 180 * alpha / PI;

	//Find the quadrant
	if (deltaX >= 0 && deltaY >= 0){ // move right and up
		deltaTheta = alpha - currentPosition[2];
	} else if (deltaX >= 0 && deltaY <= 0){ // move right and down
		deltaTheta = (alpha * -1) - currentPosition[2];
	} else if (deltaX <= 0 && deltaY >= 0){ // move left and up
		deltaTheta = 180 - currentPosition[2] - alpha;
	} else if (deltaX <= 0 && deltaY <= 0){ // move left and down
		deltaTheta = alpha - 180 - currentPosition[2];
	} else {
		cout<< "No quadrant found." <<"\n";
	}

	//Calculate time for rotation
	float rotateTime = deltaTheta / AngularV;

	vector<float> rotateInstructions1(2);
	rotateInstructions1[0] = AngularV;
	rotateInstructions1[1] = rotateTime;

	return rotateInstructions1;
}
