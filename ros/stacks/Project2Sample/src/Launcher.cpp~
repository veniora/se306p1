#include <stdlib.h> // atoi
#include <iostream> // cout
#include <sstream>

#include <sys/types.h>
#include <sys/wait.h>

#include <ros/ros.h>
#include "Project2Sample/State.h"

#include "Launcher.h"

using namespace std;

void startStage(int numNodes) {
	stringstream ss;
	ss << "numbots:=" << numNodes;
	int pid = fork();
	if (pid == 0) {
		// roscore is not guaranteed to be running before the nodes are created so some errors may pop up briefly at startup
		execl("/opt/ros/electric/ros/bin/roslaunch",
				"/opt/ros/electric/ros/bin/roslaunch", "Project2Sample",
				"alphaX.launch", ss.str().c_str(), NULL);
	}
}

void startNodes(int numNodes) {
	// Start X number of robot nodes
	int i;
	int pid;

	for (i = 0; i < numNodes; ++i) {
		// Fork clones the calling process, creating an exact copy.
		// Returns -1 for errors, 0 to the new process,
		// and the process ID of the new process to the old process.
		pid = fork();
		if (pid == 0) {
			// this is new process
			stringstream ss;
			ss << i;
			// execl replaces the current process
			execl("RX", "RX", ss.str().c_str(), NULL); //RX must be in the same location as Launcher
			// if execl executes correctly then the cout will never happen
			system("gnome-terminal -e \"./RX 2");

			cout << "process:" << i;
			break;
		} else if (pid == -1) {
			// An error has occurred
		} else {
			// parent process so continue looping
		}
	}
}

void startSim(int argc, char **argv, int numNodes) {
	// Start the simulation by pushing robots out of IDLE state
	// this method runs on a fork because not doing so had the side affect of stopping ctrl+c from killing stage and the RX nodes
	int pid;
	pid = fork();
	if (pid == 0) {
		ros::init(argc, argv, "Launcher_Node");
		ros::NodeHandle node_handel;
		ros::Publisher state_publisher = node_handel.advertise<
				Project2Sample::State>("Robot_state", 1000);
		ros::Rate loop_rate(10);

		// Wait until all X number of robot nodes are running
		while (state_publisher.getNumSubscribers() != numNodes) {
//			ROS_INFO("waiting for subscribers");
			loop_rate.sleep();
		}

		// Publish a message to change all robot states from IDLE to FORMING_GROUP.
		Project2Sample::State robot_state;
		robot_state.state = 1; // 1 == FORMING_GROUP
		robot_state.group = -1;
		state_publisher.publish(robot_state);

		sleep(1);

		node_handel.shutdown();

	}

	// Sleep for one second to allow the node handel time to publish the message before shutting it down

	// Shut down the node handel so its not running during the simulation (only stage and RX nodes should be running)

}

/**
 * This program performs three operations:
 * 1. Starts roscore and stage
 * 2. Starts X many RX robot nodes where X is the input arg for this program
 * 3. Publishes a single message to change the state of the nodes from IDLE to FORMING_GROUP
 */
int main(int argc, char **argv) {
	int numNodes;

	// Check input arguments
	if (argc != 2) {
		cout
		<< "To run launcher use ./Launcher X, where X is the number of robots to start\n";
		return 0;
	}
	numNodes = atoi(argv[1]);

	startStage(numNodes);
	startNodes(numNodes);

    sleep(numNodes);

	startSim(argc, argv, numNodes);


	// Wait for all child processes to finish
	while (true) {
		int status;
		pid_t done = wait(&status);
		if (done == -1) {
			if (errno == ECHILD) break; // no more child processes
		}
		// else {
		// if (!WIFEXITED(status) || WEXITSTATUS(status) != 0) {
		// cerr << "pid " << done << " failed" << endl;
		// exit(1);
		// }
		// }
	}

	return 0;

}
