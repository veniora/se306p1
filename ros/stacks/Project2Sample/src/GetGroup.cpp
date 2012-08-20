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
bool sortByPosition(Project2Sample::R_ID robot1, Project2Sample::R_ID robot2) {
	int pos1 = robot1.Pos_ID;
	int pos2 = robot2.Pos_ID;
	return (pos1 < pos2);
}

/**
 * Returns a map of all the nodes in the given group from the swarm
 */
map<int, Project2Sample::R_ID> getGroup(map<int, Project2Sample::R_ID> swarm, int group_id) {
	map<int, Project2Sample::R_ID> group;
	int i;
	for (i = 0; i < swarm.size(); ++i) {
		if (swarm[i].Group_ID == group_id) {
			group.insert(pair<int, Project2Sample::R_ID>(swarm[i].R_ID, swarm[i]));
		}
	}

	sort(group.begin(), group.end(), sortByPosition);

	return group;
}

