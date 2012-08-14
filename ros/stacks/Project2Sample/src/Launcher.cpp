#include <stdlib.h> // atoi
#include <iostream> // cout
#include <sstream>

using namespace std;

/**
 * This program starts roscore, stage (with x many robots) and x many RX nodes. To achieve this it uses fork() and execl().
 * roscore and stage are started by running roslaunch ... .
 * The RX nodes are then started separate from roslaunch.
 */
int main(int argc, char **argv) {
	int i;
	int pid;
	if (argc != 2) {
		cout
				<< "To run launcher use ./Launcher X, where X is the number of robots to start\n";
		return 0;
	}
	stringstream ss;
	ss << "numbots:=" << argv[1];
	// start roscore + stage
	pid = fork();
	if (pid == 0) {
		// roscore is not guaranteed to be running before the nodes are created
		execl("/opt/ros/electric/ros/bin/roslaunch",
				"/opt/ros/electric/ros/bin/roslaunch", "Project2Sample",
				"alphaX.launch", ss.str().c_str(), NULL);
		// If excel succeeds then these two lines wont ever be reached
		cout << "roscore failed to start";
		return 0;
	}

	// start robots
	for (i = 0; i < atoi(argv[1]); ++i) {
		pid = fork();
		cout << "fork:" << i;

		if (pid == 0) {
			// this is new process
			stringstream ss;
			ss << i;
			// execl replace this process
			execl("RX", "RX", ss.str().c_str(), NULL); //RX must be in the same location as Launcher
			// if execl executes correctly then the cout will never happen
			cout << "process:" << i;
			break;
		} else if (pid == -1) {
			// An error has occurred
		} else {
			// parent process so continue looping
		}
	}
	while (true) {
		// If this process finishes then all the fork/exec'd process become hard to kill
	}
	return 0;

}
