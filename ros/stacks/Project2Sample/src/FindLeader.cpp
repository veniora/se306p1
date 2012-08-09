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
#include "Project2Sample/leader.h"
#include "Project2Sample/array.h"

using namespace std;


// This struct is to emulate the standard R_ID message format
struct msg_item {
  int id;
  float x;
  float y;
  float theta;
} ;


Project2Sample::array coord;
vector<msg_item> coordinates;
msg_item item;
int leader = -1;

int findLeader() {
	double minDistance = 9999999.00; //make the biggest number
	int leaderID = -1;
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
    item.id = req.R_ID;
    item.x  =  req.x;
    item.y  =  req.y;
    item.theta = req.theta;
    coordinates.push_back(item);
    if (coordinates.size() == 6) {
        int i =0;
        for (i = 0; i < coordinates.size(); i++) {
                coord.ID[i] = coordinates.at(i).id;
        	coord.X[i] = coordinates.at(i).x;
        	coord.Y[i] = coordinates.at(i).y;
        	coord.THETA[i] = coordinates.at(i).theta;
	}
	res.L_ID = findLeader();
        leader = res.L_ID;
    }
    return true;
}

int main(int argc, char **argv) {
    ros::init(argc, argv, "FindLeader");
    ros::NodeHandle n;
    ros::ServiceServer service = n.advertiseService("Determine_Leader", addCoordinates_callback);
    Project2Sample::leader BOSS;
    ros::Rate loop_rate(10);
    ros::Publisher robotLeader = n.advertise<Project2Sample::leader>("Robot_leader",1000); 
    ros::Publisher robotCoord = n.advertise<Project2Sample::array>("Robot_coordinates", 1000);
    
    while (ros::ok()) {        
	BOSS.leaderID= leader;
        //ROS_INFO("boss leader: %d", BOSS.leaderID);
	robotLeader.publish(BOSS);
        robotCoord.publish(coord);
	ros::spinOnce();
	loop_rate.sleep();
    }
    ros::spin();
   
    return 0;
    
}
