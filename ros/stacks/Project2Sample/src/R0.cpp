/*
R0.cpp represents an instance of a robot node with 
tdhe ID set to 0. 

Created on: 6/08/2012 

Author: Charu Wadhwa + Pauline Santos
*/

/*#include "ros/ros.h"
#include "std_msgs/String.h"
#include <Project2Sample/R_ID.h>
#include <geometry_msgs/Twist.h>
#include <nav_msgs/Odometry.h>
#include <sensor_msgs/LaserScan.h>
#include <sstream>
#include "math.h"
#include "Project2Sample/R_ID_Follow.h"
#include "Project2Sample/DetermineLeader.h"
#include "Project2Sample/Rotation.h"

//Creating an instance of class Robot by passing the ID = 0 to the constructor.  
Robot r0(0);
bool kp = true;

//Callback function to essentially set the position of the robots on straight line formation.
void callback(Project2Sample::R_ID_Follow msg) {
     r0.followID = msg.followID;
     r0.newX = msg.x;
     r0.newY = msg.y;
     r0.newTheta = msg.theta;
     //ROS_INFO("x: %f", r0.newX);
     //ROS_INFO("y: %f", r0.newY);
     //ROS_INFO("theta: %f", r0.newTheta);
     //ROS_INFO("followid: %d", r0.followID);
     kp = false;
}

int main(int argc, char **argv) {

//Declaring "R0.cpp" to be a node capable of publishing and subscribing to topics.
ros::init(argc, argv, "RobotNode0");

ros::NodeHandle n;

//We are initialising the initial coordinates of the robot in the 2D world.
r0.px = 15.0;
r0.py = 20.0;
r0.theta = 45.0;

//Making "R0.cpp" a client to the service Determine_Leader which returns the ID of the leader robot node. 
ros::ServiceClient client = n.serviceClient<Project2Sample::DetermineLeader>("Determine_Leader");
Project2Sample::DetermineLeader srv;

//Sending the ID, x, y and theta information about this robot node to the Determine_Leader service.
srv.request.R_ID = r0.R_Id;
srv.request.x = r0.px;
srv.request.y = r0.py;
srv.request.theta = r0.theta;

if (client.call(srv)) {	
    
} else {
}

//Getting the robot node to subscribe to the topic "Robot0_new" in order to determine its new coordinates
//in order to be in a straight line.  
ros::Subscriber newCoord_0 = n.subscribe<Project2Sample::R_ID_Follow>("Robot0_new",1000, callback);
while(kp) {
ros::spinOnce();
}

ros::Publisher Robot0_Rotation = n.advertise<Project2Sample::Rotation>("Robot0_Rotation", 1000);
Project2Sample::Rotation rotate;

ros::Rate loop_rate(10);

while (ros::ok())
{
	rotate.R_ID = r0.R_Id;
	rotate.oldx = r0.px;
	rotate.oldy = r0.py;
	rotate.newx = r0.newX;
	rotate.newy = r0.newY;
        //ROS_INFO("x: %f", rotate.oldx);
        //ROS_INFO("y: %f", rotate.oldy);
        //ROS_INFO("theta: %f", rotate.newx);
        //ROS_INFO("followid: %f", rotate.newy);
        
        Robot0_Rotation.publish(rotate);        
	ros::spinOnce();
	loop_rate.sleep();

}
return 0;

}
*/
