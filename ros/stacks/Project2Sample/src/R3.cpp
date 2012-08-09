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

ros::init(argc, argv, "RobotNode3");

ros::NodeHandle n;

//instantiate an instance of the robot class.
Robot r3(3);
r3.px = 25.0;
r3.py = 16.0;
r3.theta = 250.0;

ros::ServiceClient client = n.serviceClient<Project2Sample::DetermineLeader>("Determine_Leader");

Project2Sample::DetermineLeader srv;

srv.request.R_ID = r3.R_Id;
srv.request.x = r3.px;
srv.request.y = r3.py;
srv.request.theta = r3.theta;

if (client.call(srv)) {	
    
} else {
}


return 0;

}
