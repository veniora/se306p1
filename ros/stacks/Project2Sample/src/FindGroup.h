/*
 * FindGroup.h
 *
 *  Created on: Aug 13, 2012
 *      Author: pauline
 */

#ifndef FINDGROUP_H_
#define FINDGROUP_H_
#include "Project2Sample/R_ID.h"

using namespace std;

class FindGroup {
public:
	vector<int> formGroup(vector<Project2Sample::R_ID> nodes, int robotID);
	vector<float> calculatePosition(Project2Sample::R_ID leader, int posID);

};

#endif /* FINDGROUP_H_ */
