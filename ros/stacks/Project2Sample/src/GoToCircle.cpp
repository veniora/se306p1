/*
 * GoToCircle.cpp
 *
 *  Created on: Aug 15, 2012
 *      Author: charu
 */

#include "GoToCircle.h"
#include <vector>
#include <iostream>
#include <cmath>
#include "math.h"
#include <algorithm>

#define PI 3.14159265

using namespace std;


// returns coordinates [x,y] of a robot as to where they belong in a circle
vector<float> GoToCircle::formCircle(vector<Project2Sample::R_ID> group, int robotID) {
	vector<float> circleCoord;
	int numOfRobots = group.size();
    float circumference = float(numOfRobots+1) * 5 * 0.35;
    int i, j;
    float radius = circumference / (2*PI);

    //get new theta to find [x,y] of radius
    float newTheta = (group.at(0).leaderTheta) - 180.00;
    float centreX = (radius*cos(newTheta)) + group.at(0).x;
    float centreY = (radius*sin(newTheta)) + group.at(0).y;
    float angle = (360.0/(float)numOfRobots)/180.00 * PI;

     //change coordinates to make circle
    for (j=0; j<group.size(); ++j) {
    	if (group.at(j).R_ID == robotID) {
			circleCoord.push_back((radius*(cos(j*angle))) + centreX);
			circleCoord.push_back((radius*(sin(j*angle))) + centreY);
    	}
    }
    return circleCoord;
}
