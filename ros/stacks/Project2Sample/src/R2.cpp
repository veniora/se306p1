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

Robot r2(2);
void callback(Project2Sample::R_ID_Follow msg) {
     r2.followID = msg.followID;
     r2.newX = msg.x;
     r2.newY = msg.y;
     r2.newTheta = msg.theta;
     ROS_INFO("x: %f", r2.newX);
     ROS_INFO("y: %f", r2.newY);
     ROS_INFO("theta: %f", r2.newTheta);
     ROS_INFO("followid: %d", r2.followID);
}
/**
*This is a single robot in a robot swarm. The robot will be simulated on stage by sending messages
**/

int main(int argc, char **argv) {

ros::init(argc, argv, "RobotNode2");

ros::NodeHandle n;

//instantiate an instance of the robot class.
r2.px = 10.0;
r2.py = 30.0;
r2.theta = 28.0;

ros::ServiceClient client = n.serviceClient<Project2Sample::DetermineLeader>("Determine_Leader");

Project2Sample::DetermineLeader srv;

srv.request.R_ID = r2.R_Id;
srv.request.x = r2.px;
srv.request.y = r2.py;
srv.request.theta = r2.theta;

if (client.call(srv)) {	
    
} else {
}
ros::Subscriber newCoord_2 = n.subscribe<Project2Sample::R_ID_Follow>("Robot2_new",1000, callback);
ros::spin();

return 0;

}
