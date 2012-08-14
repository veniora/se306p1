/*
 * RobotStates.h
 *
 *  Created on: Aug 13, 2012
 *      Author: pauline
 */

#ifndef ROBOTSTATES_H_
#define ROBOTSTATES_H_

#define IDLE 0;
#define FORMING_GROUP 1;
#define MOVING_INTO_POS 2;
#define FOLLOWING 3;
#define CIRCLING 4;
#define FORM_SQUARE 5;

class RobotStates {
public:
	RobotStates();
	virtual ~RobotStates();
};

#endif /* ROBOTSTATES_H_ */
