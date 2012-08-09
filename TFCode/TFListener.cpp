/*
 * TFListener.cpp
 *
 *  Created on: 8/08/2012
 *      Author: levipatel
 */

#include <ros/ros.h>
#include <tf/transform_listener.h>
//#include <turtlesim/Velocity.h>
//#include <turtlesim/Spawn.h>
#include <Project2Sample/VelocityInstructions.h>
#include <math.h>
#include <cmath>

//creates a listener for just one combination of robots
//then listens and publishes velocity instructions
int main(int argc, char** argv, int idA, int idB){
	//idA is the robot ahead
	//idB is of the robot following

  ros::init(argc, argv, "tf_listener");

  ros::NodeHandle node;

  //wait for leader to start moving in a circle before anyone calls this



  //ros::service::waitForService("spawn");

  //service that adds a robot
  //ros::ServiceClient add_robot =
  //     node.serviceClient<turtlesim::Spawn>("spawn");
  //turtlesim::Spawn srv;
  //add_robot.call(srv);

  //turtle2/command_velocity is the topic that it wants to publish on
  //Velocity will be changed to our version of a.h file that contains the message type??
  ros::Publisher robot_vel =
       node.advertise<Project2Sample::VelocityInstructions>(idB + "/command_velocity", 10);

  tf::TransformListener listener;

  ros::Rate rate(10.0);
  while (node.ok()){
    tf::StampedTransform transform;
    try{
    	//turtle 2 and turtle 1 will be replaced by the ids of a robot and the one it's following
    	//transform holds the transform information
      listener.lookupTransform(idB, idA,
                               ros::Time(0), transform);
    }
    catch (tf::TransformException ex){
      ROS_ERROR("%s",ex.what());
    }

    //vel_msg is the message type, so we will make a new message for it
    Project2Sample::VelocityInstructions vel_msg;

    vel_msg.angularV = 4 * atan2(transform.getOrigin().y(),
                                transform.getOrigin().x());
    vel_msg.linearV = 0.5 * sqrt(pow(transform.getOrigin().x(), 2) +
                                 pow(transform.getOrigin().y(), 2));
    //publish velocities
    //robot must subscribes to idB/command_velocity
    robot_vel.publish(vel_msg);

    rate.sleep();
  }
  return 0;
};


