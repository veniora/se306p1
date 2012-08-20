/*
 * GetGroup.cpp
 *
 *  Created on: Aug 16, 2012
 *      Author: pauline
 */

#include "GetGroup.h"
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

//returns a vector of all robots that are in the same group
map<int, Project2Sample::R_ID> getGroup(map<int, Project2Sample::R_ID> nodes, int robotID) {
	vector<Project2Sample::R_ID> group;
	int i,j,groupID;
	for (j = 0; j < nodes.size(); j++) {
		if (nodes.at(j).R_ID == robotID) {
			groupID = nodes.at(j).Group_ID;
		}
		break;
	}
	for (i = 0; i < nodes.size(); ++i) {
		if (nodes.at(i).Group_ID == groupID) {
			group.push_back(nodes.at(i));
		}
	}
	sort(group.begin(), group.end(), sortByPosition);
	return group;
}


