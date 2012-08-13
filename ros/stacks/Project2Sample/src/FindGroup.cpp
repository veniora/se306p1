/*
 * FindGroup.cpp
 *
 *  Created on: Aug 13, 2012
 *      Author: pauline
 */

#include "FindGroup.h"
using namespace std;
 //checks distance
bool sortByDistance (Project2Sample::R_ID robot1, Project2Sample::R_ID robot2) {
	float distance1 = sqrt(pow(robot1.x, 2.0) + pow(robot1.y, 2.0));
	float distance2 = sqrt(pow(robot2.x, 2.0) + pow(robot2.y, 2.0));
	return (distance1 < distance2);
}

FindGroup::FindGroup() {
	// TODO Auto-generated constructor stub

}

FindGroup::~FindGroup() {
	// TODO Auto-generated destructor stub
}

class FindGroup {
public:
	static vector<int> formGroup(vector<Project2Sample::R_ID> nodes, int robotID) {
		vector<int> robotGroupInfo;
		//find number of leaders
		int groupID, posID, i;
		//number of leaders
		int numOfLeaders = nodes.size() / 6;
		sort(nodes.begin(), nodes.end(), sortByDistance);
		for (i = 0; i < nodes.size(); ++i) {
			if (nodes.at(i).R_ID == robotID) {
				groupID = i % numOfLeaders;
				posID = i / numOfLeaders;
				robotGroupInfo.push_back(groupID);
				robotGroupInfo.push_back(posID);
				robotGroupInfo.push_back(nodes.at(groupID).R_ID);
				break;
			}
		}
		return robotGroupInfo;
	}
};

