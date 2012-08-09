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

ros::init(argc, argv, "RobotNode4");

ros::NodeHandle n;

//instantiate an instance of the robot class.
Robot r4(4);
r4.px = 5.0;
r4.py = 28.0;
r4.theta = 210.0;

ros::ServiceClient client = n.serviceClient<Project2Sample::DetermineLeader>("Determine_Leader");

Project2Sample::DetermineLeader srv;

srv.request.R_ID = r4.R_Id;
srv.request.x = r4.px;
srv.request.y = r4.py;
srv.request.theta = r4.theta;

if (client.call(srv)) {	
    
} else {
}


return 0;

}
