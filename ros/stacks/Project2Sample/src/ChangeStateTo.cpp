#include <ros/ros.h>
#include "Project2Sample/State.h"
/*
 * PublishState.cpp
 *
 *  Created on: Aug 14, 2012
 *      Author: charu
 */

using namespace std;

int main(int argc, char **argv) {
	int newState;
	// Check input arguments
	if (argc != 2) {
		cout << "To run ChangeStateTo use ./ChangeStateTo X, where X is the value of the state to change to.\n";
		cout << "State values: \n";
		cout << "IDLE = 0 \n";
		cout << "FORMING_GROUP = 1\n";
		cout << "MOVING_INTO_POS = 2\n";
		cout <<	"FETCH_INSTRUCTIONS = 3\n";
		cout << "CIRCLING = 4\n";
		cout << "FORM_SQUARE = 5\n";
		cout << "FORM_CIRCLE = 6\n";
		cout << "FOLLOWING = 7\n";
		return 0;
	}

	newState = atoi(argv[1]);

	// Setup
	ros::init(argc, argv, "ChangeStateNode");
	ros::NodeHandle node_handel;
	ros::Publisher state_publisher =
			node_handel.advertise<Project2Sample::State>("Robot_state", 1000);

	// Publish.
	Project2Sample::State robot_state;
	robot_state.state = newState;
	state_publisher.publish(robot_state);

	sleep(1);

	node_handel.shutdown();

	return 0;

}

