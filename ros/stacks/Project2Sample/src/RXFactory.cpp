#include <stdlib.h>
#include <unistd.h>
#include <iostream>
#include <sstream>

/**
 * This is a factory for creating RX robots. It simply starts x number of robots thens finishes
 */
int main(int argc, char **argv) {
	int i;
	for (i = 0; i < atoi(argv[1]); ++i) {
		int pid = fork();
		if (pid == 0){
			// this is new process
			std::stringstream ss;
			ss << i;
			// execl replace this process
			execl("RX", "RX", ss.str().c_str(), NULL);
			// if execl executes correctly then the cout will never happen
			std::cout << "process:" << i ;
			break;
		} else if (pid == -1){
			// error
		} else {
			// parent process so continue looping
		}
	}

	return 0;

}
