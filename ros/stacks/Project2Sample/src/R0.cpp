#include "ros/ros.h"
#include "std_msgs/String.h"
#include <Project2Sample/R_ID.h>
#include <geometry_msgs/Twist.h>
#include <nav_msgs/Odometry.h>
#include <sensor_msgs/LaserScan.h>
#include <sstream>
#include "math.h"
#include <cmath>
#include "robot.h"


/**
*This is a single robot in a robot swarm. The robot will be simulated on stage by sending messages
**/

	
int main(int argc, char **argv)
{

Robot r0(0);


//You must call ros::init() first of all. ros::init() function needs to see argc and argv. The third argument is the name of the node
ros::init(argc, argv, "RobotNode0");

//NodeHandle is the main access point to communicate with ros.
ros::NodeHandle n;

//advertise() function will tell ROS that you want to publish on a given topic_
//for other robots
ros::Publisher RobotNode_pub = n.advertise<Project2Sample::R_ID>("Robot0_msg",1000); 
//to stage
ros::Publisher RobotNode_stage_pub = n.advertise<geometry_msgs::Twist>("Robot0_vel",1000);

//publish to topic associated with messages that contain x,y and theta positions
ros::Publisher RobotNode_position = n.advertise<Project2Sample::R_ID>("Robot0_pos", 1000); 


//subscribe to listen to messages coming from stage
//ros::Subscriber StageOdo_sub = n.subscribe<nav_msgs::Odometry>("Robot0_truth",1000, r0.StageOdom_callback);
ros::Subscriber StageOdo_sub = n.subscribe<nav_msgs::Odometry>("Robot0_truth",1000, &Robot::StageOdom_callback, &r0);
ros::Subscriber StageLaser_sub = n.subscribe<sensor_msgs::LaserScan>("Robot0_laser",1000, &Robot::StageLaser_callback, &r0);
//ros::Subscriber StageTruth_sub = n.subscribe<nav_msgs::Odometry>("Robot0_truth",1000,StageTruth_callback);

ros::Rate loop_rate(10);

//a count of howmany messages we have sent
int count = 0;

////messages
//velocity of this RobotNode
geometry_msgs::Twist RobotNode_cmdvel;
//message object to other robots
Project2Sample::R_ID msg;

while (ros::ok())
{
	
	//messages to stage
	RobotNode_cmdvel.linear.x = r0.linear_x;
	RobotNode_cmdvel.angular.z = r0.angular_z;
        
	//message to other robots
	msg.R_ID = r0.R_Id;
	msg.life = r0.batterylife;
	msg.x = r0.px;
	msg.y = r0.py;
	msg.theta = r0.theta;

	//publish the message
	RobotNode_pub.publish(msg);
	RobotNode_stage_pub.publish(RobotNode_cmdvel);
	RobotNode_position.publish(msg);
	

	ros::spinOnce();

	loop_rate.sleep();
	++count;


}




return 0;

}
