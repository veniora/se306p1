/*
 * CalculateAngleToOrigin.cpp
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

//Need to only call this function once the previous linear movement is complete
vector<float> rotateOriginInstructions (int id, vector<float> currentPosition, vector<float> newPosition){

	float deltaTheta = newPosition[2] - currentPosition[2];
	float rotateTime = deltaTheta / AngularV;

	rotateOriginInstructions[0] = AngularV;
	rotateOriginInstructions[1] = rotateTime;

	return rotateOriginInstructions;
}


