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

int main(int argc, char **argv) {

ros::init(argc, argv, "RobotNode0");

ros::NodeHandle n;

//instantiate an instance of the robot class.
Robot r0(0);
r0.px = 15.0;
r0.py = 20.0;
r0.theta = 45.0;

ros::ServiceClient client = n.serviceClient<Project2Sample::DetermineLeader>("Determine_Leader");

Project2Sample::DetermineLeader srv;

srv.request.R_ID = r0.R_Id;
srv.request.x = r0.px;
srv.request.y = r0.py;

if (client.call(srv)) {	
    
} else {
}


return 0;

}
