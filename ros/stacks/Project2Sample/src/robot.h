#ifndef ROBOT
#define ROBOT

class Robot{

public:
	//Robot_id
	int R_Id;
	int leader;
	//velocity of the robot
	double linear_x;
	double angular_z;

	//pose of the robot
	double px;
	double py;
	double theta;

	Robot(int RobotId);
	void StageOdom_callback(nav_msgs::Odometry msg);
	void StageLaser_callback(sensor_msgs::LaserScan msg);

};
#endif

