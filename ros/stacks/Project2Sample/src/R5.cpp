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


Robot r5(5);
void callback(Project2Sample::R_ID_Follow msg) {
     r5.followID = msg.followID;
     r5.newX = msg.x;
     r5.newY = msg.y;
     r5.newTheta = msg.theta;
     ROS_INFO("x: %f", r5.newX);
     ROS_INFO("y: %f", r5.newY);
     ROS_INFO("theta: %f", r5.newTheta);
     ROS_INFO("followid: %d", r5.followID);
}
/**
*This is a single robot in a robot swarm. The robot will be simulated on stage by sending messages
**/

int main(int argc, char **argv) {

ros::init(argc, argv, "RobotNode5");

ros::NodeHandle n;

//instantiate an instance of the robot class.
r5.px = 10.33;
r5.py = 10.133;
r5.theta = 110.00;

ros::ServiceClient client = n.serviceClient<Project2Sample::DetermineLeader>("Determine_Leader");

Project2Sample::DetermineLeader srv;

srv.request.R_ID = r5.R_Id;
srv.request.x = r5.px;
srv.request.y = r5.py;
srv.request.theta = r5.theta;

if (client.call(srv)) {	
    
} else {
}
ros::Subscriber newCoord_5 = n.subscribe<Project2Sample::R_ID_Follow>("Robot5_new",1000, callback);
ros::spin();

return 0;

}
