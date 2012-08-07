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

	Robot::Robot(int RobotId) 
	{

	R_Id = RobotId;
	//initialise angular and linear velocities
	linear_x = 0.0;
	angular_z = 0.0;
	//initialise battery life
	batterylife = 80;
	theta = 0.0;
	}

	void Robot::StageOdom_callback(nav_msgs::Odometry msg)
	{

	//This is the call back function to process odometry messages coming from Stage. 	
	px = msg.pose.pose.position.x;
	py = msg.pose.pose.position.y;
	theta = msg.twist.twist.linear.x;
	ROS_INFO("Current x position is: %f", px);
	ROS_INFO("Current y position is: %f", py);
	ROS_INFO("Current theta position is: %f", theta);


	}

	void Robot::StageLaser_callback(sensor_msgs::LaserScan msg) 
	{

	//This is the callback function to process laser scan messages
	//you can access the range data from msg.ranges[i]. i = sample number
	
	}

