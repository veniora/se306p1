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
        
        //new coordinates
	double newX;
	double newY;
        double newTheta;
        int followID;

	Robot(int RobotId);
	void callback(Project2Sample::R_ID_Follow msg);
	void StageLaser_callback(sensor_msgs::LaserScan msg);

};

#endif

