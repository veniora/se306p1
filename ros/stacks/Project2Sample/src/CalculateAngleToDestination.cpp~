/*
 * CalculateAngleToDestination.cpp
 *
 *  Created on: 7/08/2012
 *      Author: levipatel
 */



#include <iostream>
#include <vector>
#include <math.h>
#include <cmath>
#include "ros/ros.h"
#include "Project2Sample/Rotation.h"
#define PI 3.14159265
#define AngularV 1

using namespace std;

int kp = 0;
//vectors for old and new coordinates
float setAngle(int id, vector<float> currentPosition, vector<float> newPosition);

void callback(Project2Sample::Rotation msg) { 
     vector<float> currentPos;
     vector<float> newPos;
     currentPos.push_back(msg.oldx);
     currentPos.push_back(msg.oldy);
     newPos.push_back(msg.newx);
     newPos.push_back(msg.newy);
     ROS_INFO("x: %f", currentPos.at(0));
     ROS_INFO("y: %f", currentPos.at(1));
     ROS_INFO("new x: %f", newPos.at(0));
     ROS_INFO("new y: %f", newPos.at(1));
     ROS_INFO("id: %d", msg.R_ID); 
     
     float angle = setAngle(msg.R_ID, currentPos, newPos);
     ROS_INFO("angle of rotation: %f", angle);
   
     ++kp;
}



float setAngle(int id, vector<float> currentPosition, vector<float> newPosition){

	float deltaY = newPosition[1] - currentPosition[1];
	float deltaX = newPosition[0] - currentPosition[0];
	vector<float> instructions;

	// the angle from the origin to the new position and convert to degrees
	float alpha = atan(deltaY/deltaX);
	alpha = 180 * alpha / PI;

	//Find the quadrant
	if (deltaX >= 0 && deltaY >= 0){ // move right and up
		alpha = alpha;
	} else if (deltaX >= 0 && deltaY <= 0){ // move right and down
		alpha = 360 - alpha;
	} else if (deltaX <= 0 && deltaY >= 0){ // move left and up
		alpha = 180 - alpha;
	} else if (deltaX <= 0 && deltaY <= 0){ // move left and down
		alpha = alpha + 180;
	} else {
		cout<< "No quadrant found." <<"\n";
	}
	/*
	//Calculate time for rotation
	float rotateTime = deltaTheta / AngularV;

	vector<float> rotateInstructions1(2);
	rotateInstructions1[0] = AngularV;
	rotateInstructions1[1] = rotateTime*/
        alpha = fmod(alpha, 360.0);
	return alpha;
}

int main(int argc, char **argv) {

ros::init(argc, argv, "CalculateAngle");

ros::NodeHandle n;

ros::Subscriber Robot0_position = n.subscribe<Project2Sample::Rotation>("Robot0_Rotation",1000, callback);
ros::Subscriber Robot1_position = n.subscribe<Project2Sample::Rotation>("Robot1_Rotation",1000, callback);
ros::Subscriber Robot2_position = n.subscribe<Project2Sample::Rotation>("Robot2_Rotation",1000, callback);
ros::Subscriber Robot3_position = n.subscribe<Project2Sample::Rotation>("Robot3_Rotation",1000, callback);
ros::Subscriber Robot4_position = n.subscribe<Project2Sample::Rotation>("Robot4_Rotation",1000, callback);
ros::Subscriber Robot5_position = n.subscribe<Project2Sample::Rotation>("Robot5_Rotation",1000, callback);
while(kp < 6) {
ros::spinOnce();
}

return 0;
}
