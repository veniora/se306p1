/*
 * FindGroup.h
 *
 *  Created on: Aug 13, 2012
 *      Author: pauline
 */

#ifndef FINDGROUP_H_
#define FINDGROUP_H_

using namespace std;

class FindGroup {
public:
	FindGroup();
	virtual ~FindGroup();
	static vector<int> formGroup(vector<Project2Sample::R_ID> nodes, int robotID);
	bool sortByDistance (int i,int j);
	static vector<float> calculatePosition(Project2Sample::R_ID leader, int posID);
};

#endif /* FINDGROUP_H_ */
