#include "ros/ros.h"
#include "std_msgs/String.h"
#include <Project2Sample/R_ID.h>
#include <geometry_msgs/Twist.h>
#include <nav_msgs/Odometry.h>
#include <sensor_msgs/LaserScan.h>
#include <sstream>
#include "math.h"
#include "robot.h"
#include <Project2Sample/DetermineLeader.h>

/**
*This is a single robot in a robot swarm. The robot will be simulated on stage by sending messages
**/


int main(int argc, char **argv)

{

ros::init(argc, argv, "RobotNode1");

ros::NodeHandle n;

//instantiate an instance of the robot class.
Robot r1(1);
r1.px = 15;
r1.py = 20;

ros::ServiceClient client = n.serviceClient<Project2Sample::DetermineLeader>("Determine_Leader");

Project2Sample::DetermineLeader srv;

srv.request.R_ID = r1.R_Id;
srv.request.x = r1.px;
srv.request.y = r1.py;

if (client.call(srv)) {	
    r1.leader = (long int)srv.response.L_ID;
    ROS_INFO("LeaderID-1: %d", r1.leader);
} else {
    ROS_ERROR("Failed to call service");
return 1;

}
return 0;

}
