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
	std::stringstream ss;
	ss << "RobotNode" << argv[1];

ros::init(argc, argv, ss.str());

ros::NodeHandle n;

//instantiate an instance of the robot class.
Robot r1(atoi(argv[1]));
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
    //if((long int)srv.response.L_ID == r1.R_Id) {
    //ros::Publisher RobotNode_stage_pub = n.advertise<geometry_msgs::Twist>("Robot1_vel",1000); 
    //ros::Rate loop_rate(10);
    
//    while (ros::ok()) {
//	
        //messages to stage
//	RobotNode_cmdvel.linear.x = 0.2;
//	RobotNode_cmdvel.angular.z = 0.2;
//        
	//message to other robots
//	RobotNode_stage_pub.publish(RobotNode_cmdvel);
	
//	ros::spinOnce();

//	loop_rate.sleep();
  //  }

    //} 
} else {
}
return 0;

}
