/*
 * FindLeader.cpp
 *
 *  Created on: 6/08/2012
 *      Author: levipatel
 */

#include <vector>
#include <math.h>
#include <cmath>
#include "ros/ros.h"
#include "std_msgs/String.h"
#include <Project2Sample/R_ID.h>
#include <geometry_msgs/Twist.h>
#include <nav_msgs/Odometry.h>
#include <sensor_msgs/LaserScan.h>
#include "Project2Sample/DetermineLeader.h"

using namespace std;


// This struct is to emulate the standard R_ID message format
struct msg_item {
  int id;
  float x;
  float y;
  float theta;
  float batteryLife;
} ;

vector<msg_item> coordinates;
msg_item item;

int findLeader() {
	double minDistance = 9999999.00; //make the biggest number
	int leaderID = -1;
        ROS_INFO("size: %d", coordinates.size());
	for (int i = 0; i < coordinates.size(); i++){
		float distance = sqrt(pow(coordinates.at(i).x, 2.0) + pow(coordinates.at(i).y, 2.0));
		distance = fabs(distance); // Confirm positive value
		// Check if the robot distance is less than the current closest robot but not at the node itself
		if (distance > 0.00001 && distance < minDistance){
			leaderID = coordinates.at(i).id; // Set as new leader
			minDistance = distance;
		}
	}
	return leaderID;
}

bool addCoordinates_callback(Project2Sample::DetermineLeader::Request &req, Project2Sample::DetermineLeader::Response &res) {
    ROS_INFO("hello-world");
    item.id = req.R_ID;
    ROS_INFO("%d", item.id);
    item.x  =  req.x;
    ROS_INFO("%f", item.x);
    item.y  =  req.y;
    coordinates.push_back(item);
    while(true) {
    if (coordinates.size() == 3) {
	res.L_ID = findLeader();
	break;
    }
    }
    return true;
}

int main(int argc, char **argv) {
    ros::init(argc, argv, "FindLeader");
    ros::NodeHandle n;
    ros::ServiceServer service = n.advertiseService("Determine_Leader", addCoordinates_callback);
    ros::spin();
   
    return 0;
    
}
