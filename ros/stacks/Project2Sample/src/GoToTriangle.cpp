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
vector<float> formTriangle(vector<Project2Sample::R_ID> group) {
	vector<float> triangleCoord;
	int numOfRobots = group.size();
	float spacing0 =  5 * 0.35;
	float spacing1 =  5 * 0.35;
	float spacing2 =  5 * 0.35;
	float angle = 60.0/180.0* PI;
	//get length of sides
	float lengthOfSide = ceil((float)numOfRobots / 4.0) * 5.0* 0.35;
	float x0,y0,x1,y1,topCorner;
	int i, j;
	//change coordinates to make square
	for (i=0; i<group.size(); ++i) {

			j = i % 3;
			switch (j) {
			case 0:
				if (i == 0) {
					triangleCoord.push_back(group.at(0).x);
					triangleCoord.push_back(group.at(0).y);
				} else {
					x0 = cos(angle)*spacing0;
					y0 = sin(angle)*spacing0;
					triangleCoord.push_back(group.at(0).x + x0);
					triangleCoord.push_back(group.at(0).y + y0);
					spacing0 = spacing0 + (0.35*5.0);
				}
				break;
			case 1:
				topCorner = sqrt(pow(lengthOfSide, 2) - pow((lengthOfSide/2),2));
				if (i == 1) {
					triangleCoord.push_back(group.at(0).x + lengthOfSide/2);
					triangleCoord.push_back(group.at(0).y + topCorner);
				} else {
					x1 = sin(angle/2.0)*spacing1;
					y1 = cos(angle/2.0)*spacing1;
					triangleCoord.push_back(group.at(0).x + lengthOfSide/2 + x0);
					triangleCoord.push_back(group.at(0).y + topCorner - y1);
					spacing1 = spacing1 + (0.35*5.0);
				}
				break;
			case 2:
				if (i == 2) {
					triangleCoord.push_back(group.at(0).x + lengthOfSide);
					triangleCoord.push_back(group.at(0).y);
				} else {
					triangleCoord.push_back(group.at(0).x + spacing2);
					triangleCoord.push_back(group.at(0).y);
					spacing2 = spacing2 + (0.35*5.0);
				}
				break;
			}

	}
	return triangleCoord;
}
