/*
 * CalculateLinearVelocity.cpp
 *
 *  Created on: 7/08/2012
 *      Author: levipatel
 */

#include <iostream>
#include <vector>
#include <math.h>
#include <cmath>

#define PI 3.14159265
#define LinearV 1

using namespace std;

vector<float> linearInstructions (int id, vector<float> currentPosition, vector<float> newPosition){
	vector<float> linearInstructions(2);

	float distance = sqrt((newPosition[0] - currentPosition[0])^2 + (newPosition[1] - currentPosition[1])^2);
	distance = abs(distance);

	float linearTime = distance / LinearV;

	linearInstructions[0] = LinearV;
	linearInstructions[1] = linearTime;

	return linearInstructions;
}


