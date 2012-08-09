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

ros::init(argc, argv, "RobotNode2");

ros::NodeHandle n;

//instantiate an instance of the robot class.
Robot r2(2);
r2.px = 10.0;
r2.py = 30.0;
r2.theta = 28.0;

ros::ServiceClient client = n.serviceClient<Project2Sample::DetermineLeader>("Determine_Leader");

Project2Sample::DetermineLeader srv;

srv.request.R_ID = r2.R_Id;
srv.request.x = r2.px;
srv.request.y = r2.py;

if (client.call(srv)) {	
    
} else {
}


return 0;

}
