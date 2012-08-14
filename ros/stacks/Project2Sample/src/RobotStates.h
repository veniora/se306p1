/*
 * RobotStates.h
 *
 *  Created on: Aug 13, 2012
 *      Author: pauline
 */

#ifndef ROBOTSTATES_H_
#define ROBOTSTATES_H_

enum State {IDLE, FORMING_GROUP, MOVING_INTO_POS, FOLLOWING, CIRCLING, FORM_SQUARE};

class RobotStates {
public:
	RobotStates();
	virtual ~RobotStates();
};

#endif /* ROBOTSTATES_H_ */
