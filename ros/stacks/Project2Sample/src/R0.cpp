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


Robot r0(0);

/**
*This is a single robot in a robot swarm. The robot will be simulated on stage by sending messages
**/
void callback(Project2Sample::R_ID_Follow msg) {
     r0.followID = msg.followID;
     r0.newX = msg.x;
     r0.newY = msg.y;
     r0.newTheta = msg.theta;
     ROS_INFO("x: %f", r0.newX);
     ROS_INFO("y: %f", r0.newY);
     ROS_INFO("theta: %f", r0.newTheta);
     ROS_INFO("followid: %d", r0.followID);
}

int main(int argc, char **argv) {

ros::init(argc, argv, "RobotNode0");

ros::NodeHandle n;

//instantiate an instance of the robot class.

r0.px = 15.0;
r0.py = 20.0;
r0.theta = 45.0;

ros::ServiceClient client = n.serviceClient<Project2Sample::DetermineLeader>("Determine_Leader");
Project2Sample::DetermineLeader srv;

srv.request.R_ID = r0.R_Id;
srv.request.x = r0.px;
srv.request.y = r0.py;
srv.request.theta = r0.theta;

if (client.call(srv)) {	
    
} else {
}
ros::Subscriber newCoord_0 = n.subscribe<Project2Sample::R_ID_Follow>("Robot0_new",1000, callback);
ros::spin();

return 0;

}
