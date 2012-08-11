#include <stdlib.h>
#include <unistd.h>
#include <iostream>
#include <sstream>

// basic file operations
#include <iostream>
#include <fstream>

using namespace std;

/**
 * This is a factory for creating RX robots. It simply starts x number of robots thens finishes
 */
int main(int argc, char **argv) {
	int i;
	int pid;

//	// alter world file
//	ofstream worldFile;
//	worldFile.open("Project2Sample.world", ios::out | ios::app);
//	int i;
//	if (worldFile.is_open()){
//		for (i = 0; i < atoi(argv[1]); ++i){
//			worldFile << "myRobot( pose [ 15.000 20.000 0 45.000 ] name \"r" << i <<"\" color \"blue\")\n";
//		}
//		worldFile.close();
//	} else {
//		cout << "unable to open worldfile";
//		return 0;
//	}



//	// start roscore + stage
//	int pid = fork();
//	if (pid == 0){
//		// roscore is not garunteed to be running before the nodes are created
//		execl("/opt/ros/electric/ros/bin/roslaunch", "/opt/ros/electric/ros/bin/roslaunch",
//				"Project2Sample", "alphaX.launch", NULL);
//		cout << "roscore failed to start";
//		return 0;
//	}


	// start robots
	for (i = 0; i < atoi(argv[1]); ++i) {
		pid = fork();
		cout << "fork:" << i ;

		if (pid == 0){
			// this is new process
			stringstream ss;
			ss << i;
			// execl replace this process
			execl("RX", "RX", ss.str().c_str(), NULL);
			// if execl executes correctly then the cout will never happen
			cout << "process:" << i ;
			break;
		} else if (pid == -1){
			// error
		} else {
			// parent process so continue looping
		}
	}
	while (true){}
	return 0;

}
