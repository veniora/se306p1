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


Robot r1(1);
/**
*This is a single robot in a robot swarm. The robot will be simulated on stage by sending messages
**/
void callback(Project2Sample::R_ID_Follow msg) {
     r1.followID = msg.followID;
     r1.newX = msg.x;
     r1.newY = msg.y;
     r1.newTheta = msg.theta;
     ROS_INFO("x: %f", r1.newX);
     ROS_INFO("y: %f", r1.newY);
     ROS_INFO("theta: %f", r1.newTheta);
     ROS_INFO("followid: %d", r1.followID);
}
int main(int argc, char **argv) {

ros::init(argc, argv, "RobotNode1");

ros::NodeHandle n;

//instantiate an instance of the robot class.

r1.px = 5.0;
r1.py = 10.0;
r1.theta = 315.0;


ros::ServiceClient client = n.serviceClient<Project2Sample::DetermineLeader>("Determine_Leader");

Project2Sample::DetermineLeader srv;
geometry_msgs::Twist RobotNode_cmdvel;
srv.request.R_ID = r1.R_Id;
srv.request.x = r1.px;
srv.request.y = r1.py;
srv.request.theta = r1.theta;

if (client.call(srv)) {	

} else {
}
ros::Subscriber newCoord_1 = n.subscribe<Project2Sample::R_ID_Follow>("Robot1_new",1000, callback);
ros::spin();
return 0;

}
