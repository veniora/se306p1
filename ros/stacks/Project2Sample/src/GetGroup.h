/*
 * GetGroup.h
 *
 *  Created on: Aug 16, 2012
 *      Author: pauline
 */

#ifndef GETGROUP_H_
#define GETGROUP_H_
#include "Project2Sample/R_ID.h"

using namespace std;

class GetGroup {
public:
	vector<Project2Sample::R_ID> getGroup(vector<Project2Sample::R_ID> nodes, int robotID);
};

#endif /* GETGROUP_H_ */
