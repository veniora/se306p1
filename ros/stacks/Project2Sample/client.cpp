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

struct my_item {
  int id;
  float x;
  float y;
  float theta;
  float batteryLife;
} ;

my_item item;

void Robot::my_callback(Project2Sample::R_ID msg) {

my_item.id = msg.R_ID;
my_item.x = msg.x;
my_item.y = msg.y;

}

int main(int argc, char **argv) {

ros::init(argc, argv, "Client");

ros::NodeHandle n;

ros::Subscriber try_sub = n.subscribe<Project2Sample::R_ID>("Robot0_pos",1000, my_callback);

ros::ServiceClient client = n.serviceClient<Project2Sample::DetermineLeader>("Determine_Leader");

Project2Sample::DetermineLeader srv;

srv.request.R_ID = my_item.id;
srv.request.x = my_item.x;
srv.request.y = my_item.y;

if (client.call(srv)) {	
    ROS_INFO("LeaderID: %d", (long int)srv.response.L_ID);
} else {
    ROS_ERROR("Failed to call service");
return 1;
}

return 0;

}
