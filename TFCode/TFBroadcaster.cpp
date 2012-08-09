/*
 * TFBroadcaster.cpp
 *
 *  Created on: 8/08/2012
 *      Author: levipatel
 */

#include <ros/ros.h>
#include <tf/transform_broadcaster.h>
//#include <turtlesim/Pose.h>
#include <Project2Sample/R_ID.h>


//This will be called inside the robot

//ROBOT WILL PUBLISH TO (ID)/pose
//GETS BACK VELOCITIES AND SENDS TO STAGE SO IT WILL MOVE

std::string robot_name;

//when someone publishes a message of type R_ID to robot_name/pose
void poseCallback(Project2Sample::R_ID msg){
  static tf::TransformBroadcaster br;
  tf::Transform transform;

  //the message will contain a vector with x and y. Get these out into here, give it 0.0 for z
  transform.setOrigin( tf::Vector3(msg.x, msg.y, 0.0) );

  //get the angle out of the message, give the other two as zero
  transform.setRotation( tf::Quaternion(msg.theta, 0, 0) );

  //get the robot id out of the message, or maybe just use the one we passed in?
  //br.sendTransform(tf::StampedTransform(transform, ros::Time::now(), "world", msg.R_ID));
  br.sendTransform(tf::StampedTransform(transform, ros::Time::now(), "world", robot_name));
}

//broadcast from each robot passing in its ID
//call this at some stage before they need to start following
int main(int argc, char** argv){
  ros::init(argc, argv, "tf_broadcaster");
  if (argc != 2){
	  ROS_ERROR("need robot name as argument"); return -1;
  };
  //robot name will just be the ID we passed in
  robot_name = argv[1];

  ros::NodeHandle node;
  //subcribes to a topic named (ID)/pose
  ros::Subscriber sub = node.subscribe(robot_name+"/pose", 10, &poseCallback);

  ros::spin();
  return 0;
};


