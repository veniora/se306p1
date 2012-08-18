/*
 * Launcher.h
 *	Launcher is NOT a node itself!
 *  Created on: 18/08/2012
 *      Author: ubuntu-11-10
 */

#ifndef LAUNCHER_H_
#define LAUNCHER_H_

/**
 * Start roscore and stage
 *
 */
void startStage(int numNodes);

/**
 *
 */
void startNodes(int numNodes);

/**
 *
 */
void startSim(int argc, char **argv, int numNodes);


#endif /* LAUNCHER_H_ */
