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

//checks Position
bool sortByPosition (Project2Sample::R_ID robot1, Project2Sample::R_ID robot2) {
	int pos1 = robot1.Pos_ID;
	int pos2 = robot2.Pos_ID;
	return (pos1 < pos2);
}

// returns coordinates [x,y] of a robot as to where they belong in a circle
vector<float> GoToCircle::formCircle(vector<Project2Sample::R_ID> group, int robotID) {
	vector<float> circleCoord;
	sort(group.begin(), group.end(), sortByPosition);
	int numOfRobots = group.size() + 1;
    float circumference = numOfRobots * 5 * 0.35;
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
