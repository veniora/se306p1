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

ros::init(argc, argv, "RobotNode5");

ros::NodeHandle n;

//instantiate an instance of the robot class.
Robot r5(5);
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


return 0;

}
