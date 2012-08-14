#include "ros/ros.h"
#include "Project2Sample/State.h"
/*
 * PublishState.cpp
 *
 *  Created on: Aug 14, 2012
 *      Author: charu
 */

int main(int argc, char **argv) {
	ros::init(argc, argv, "PublishState");
    ros::NodeHandle n;

    ros::Publisher RobotNode_pub = n.advertise<Project2Sample::State>("Robot_state"
    		, 1000);
    Project2Sample::State RobotState;

    ros::Rate loop_rate(10);
    	while (ros::ok()) {
    		RobotState.state = 1;
    		//ROS_INFO("state: %d", RobotState.state);
    		RobotNode_pub.publish(RobotState);
    		ros::spinOnce();
    		loop_rate.sleep();
    	}

    	return 0;

}


