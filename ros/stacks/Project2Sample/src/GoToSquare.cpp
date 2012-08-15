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

//checks Position
bool sortByPosition (Project2Sample::R_ID robot1, Project2Sample::R_ID robot2) {
	int pos1 = robot1.Pos_ID;
	int pos2 = robot2.Pos_ID;
	return (pos1 < pos2);
}

// returns coordinates [x,y] of a robot as to where they belong in a square
vector<float> GoToSquare::formSquare(vector<Project2Sample::R_ID> group, int robotID) {
	vector<float> squareCoord;
	sort(group.begin(), group.end(), sortByPosition);
	int numOfRobots = group.size();
	float spacing0 =  5 * 0.35;
	float spacing1 =  5 * 0.35;
	float spacing2 =  5 * 0.35;
	float spacing3 =  5 * 0.35;

	//get length of sides
	float lengthOfSide = ceil((float)numOfRobots / 4.0) * 5.0* 0.35;
	int i, j;
	//change coordinates to make square
	for (i=0; i<group.size(); ++i) {
		if (group.at(i).R_ID == robotID) {
			j = i % 4;
			switch (j) {
			case 0:
				if (i == 0) {
					squareCoord.push_back(group.at(i).x);
					squareCoord.push_back(group.at(i).y);
				} else {
					squareCoord.push_back(group.at(0).x + spacing0);
					squareCoord.push_back(group.at(0).y);
					spacing0 = spacing0 + (0.35*5.0);
				}
				break;
			case 1:
				if (i == 1) {
					squareCoord.push_back(group.at(0).x + lengthOfSide);
					squareCoord.push_back(group.at(0).y);
				} else {
					squareCoord.push_back(group.at(0).x + lengthOfSide);
					squareCoord.push_back(group.at(0).y + spacing1);
					spacing1 = spacing1 + (0.35*5.0);
				}
				break;
			case 2:
				if (i == 2) {
					squareCoord.push_back(group.at(0).x + lengthOfSide);
					squareCoord.push_back(group.at(0).y + lengthOfSide);
				} else {
					squareCoord.push_back(group.at(0).x + lengthOfSide - spacing2);
					squareCoord.push_back(group.at(0).y + lengthOfSide);
					spacing2 = spacing2 + (0.35*5.0);
				}
				break;
			case 3:
				if (i == 3) {
					squareCoord.push_back(group.at(0).x);
					squareCoord.push_back(group.at(0).y + lengthOfSide);
				} else {
					squareCoord.push_back(group.at(0).x);
					squareCoord.push_back(group.at(0).y + lengthOfSide - spacing3);
					spacing3 = spacing3 + (0.35*5.0);
				}
				break;
			}
		}
	}
	return squareCoord;
}
