#include "ros/ros.h"
#include "std_msgs/String.h"
#include <Project2Sample/R_ID.h>
#include <geometry_msgs/Twist.h>
#include "Project2Sample/R_ID_Follow.h"
#include <nav_msgs/Odometry.h>
#include <sensor_msgs/LaserScan.h>
#include <sstream>
#include "math.h"
#include <cmath>
#include "robot.h"


#define PI 3.14159265

	Robot::Robot(int RobotId) 
	{

	this->R_Id = RobotId;
	//initialise angular and linear velocities
	this->linear_x = 0.0;
	this->angular_z = 0.0;
	this->theta = 0.0;
        this->newTheta = 0.0;
	this->leader = -1;
        this->followID = -2;
        this->newX = 0.0;
        this->newY = 0.0;
	}

	void Robot::callback(Project2Sample::R_ID_Follow msg) {
             this->followID = msg.followID;
             this->newX = msg.x;
             this->newY = msg.y;
             this->newTheta = msg.theta;
        }    
	//This is the call back function to process odometry messages coming from Stage. 	
	//this->px = msg.pose.pose.position.x;
	//this->py = msg.pose.pose.position.y;
	//double thetaRadians = msg.pose.pose.position.z+ PI/2;
	//if (fabs(thetaRadians) < 0.0001) { 
	  //  this->theta = 0.0;
	//} else {
	  //  if (thetaRadians < 0.0)  {
	    //    this->theta = 360.0 - (fabs(thetaRadians) * 180.0/PI);
	    //} else {
	      //  this->theta = thetaRadians * 180.0/PI;
	    //} 
	//}

       

	void Robot::StageLaser_callback(sensor_msgs::LaserScan msg) 
	{

	//This is the callback function to process laser scan messages
	//you can access the range data from msg.ranges[i]. i = sample number
	
	}

