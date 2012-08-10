/*
R1.cpp represents an instance of a robot node with 
the ID set to 1. 

Created on: 6/08/2012 

Author: Charu Wadhwa + Pauline Santos
*/

#include "ros/ros.h"
#include "std_msgs/String.h"
#include <Project2Sample/R_ID.h>
#include <geometry_msgs/Twist.h>
#include <nav_msgs/Odometry.h>
#include <sensor_msgs/LaserScan.h>
#include <sstream>
#include "math.h"
#include "Project2Sample/R_ID_Follow.h"
#include "robot.h"
#include "Project2Sample/DetermineLeader.h"
#include "Project2Sample/Rotation.h"

//Creating an instance of class Robot by passing the ID = 1 to the constructor.  
Robot r1(1);
bool kp = true;

//Callback function to essentially set the position of the robots on straight line formation.
void callback(Project2Sample::R_ID_Follow msg) {
     r1.followID = msg.followID;
     r1.newX = msg.x;
     r1.newY = msg.y;
     r1.newTheta = msg.theta;
     //ROS_INFO("x: %f", r0.newX);
     //ROS_INFO("y: %f", r0.newY);
     //ROS_INFO("theta: %f", r0.newTheta);
     //ROS_INFO("followid: %d", r0.followID);
     kp = false;
}


int main(int argc, char **argv) {

//Declaring "R1.cpp" to be a node capable of publishing and subscribing to topics.
ros::init(argc, argv, "RobotNode1");

ros::NodeHandle n;

//We are initialising the initial coordinates of the robot in the 2D world.

r1.px = 5.0;
r1.py = 10.0;
r1.theta = 315.0;

//Making "R1.cpp" a client to the service Determine_Leader which returns the ID of the leader robot node. 
ros::ServiceClient client = n.serviceClient<Project2Sample::DetermineLeader>("Determine_Leader");
Project2Sample::DetermineLeader srv;

//Sending the ID, x, y and theta information about this robot node to the Determine_Leader service.
srv.request.R_ID = r1.R_Id;
srv.request.x = r1.px;
srv.request.y = r1.py;
srv.request.theta = r1.theta;

if (client.call(srv)) {	

} else {
}

//Getting the robot node to subscribe to the topic "Robot0_new" in order to determine its new coordinates
//in order to be in a straight line.  
ros::Subscriber newCoord_1 = n.subscribe<Project2Sample::R_ID_Follow>("Robot1_new",1000, callback);
while(kp) {
ros::spinOnce();
}

ros::Publisher Robot1_Rotation = n.advertise<Project2Sample::Rotation>("Robot1_Rotation", 1000);
Project2Sample::Rotation rotate;

ros::Rate loop_rate(10);

while (ros::ok())
{
	rotate.R_ID = r1.R_Id;
	rotate.oldx = r1.px;
	rotate.oldy = r1.py;
	rotate.newx = r1.newX;
	rotate.newy = r1.newY;
        //ROS_INFO("x: %f", rotate.oldx);
        //ROS_INFO("y: %f", rotate.oldy);
        //ROS_INFO("theta: %f", rotate.newx);
        //ROS_INFO("followid: %f", rotate.newy);
        
        Robot1_Rotation.publish(rotate);        
	ros::spinOnce();
	loop_rate.sleep();

}
return 0;
}
