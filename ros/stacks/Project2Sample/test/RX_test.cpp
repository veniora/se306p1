#include <gtest/gtest.h>
#include <ros/ros.h>
#include <Project2Sample/R_ID.h>
#include <Project2Sample/State.h>
#include <sensor_msgs/LaserScan.h>
#include <nav_msgs/Odometry.h>


int state;

void test_callback(Project2Sample::R_ID msg) {
	state = msg.R_State;
//	std::stringstream ss;
//	ss << "State: " << msg.R_State;
//	ROS_INFO(ss.str().c_str());


}

// Declare a test
TEST(TestSuite, testDefaultValues) {

	state = -1;
	ros::NodeHandle node_handel;
	ros::Publisher state_publisher =
			node_handel.advertise<Project2Sample::State>("Robot_state", 1000);
	ros::Rate loop_rate(10);

	while (state_publisher.getNumSubscribers() == 0) {
		// waiting for a node to subscribe to "Robot_state"
		loop_rate.sleep();
	}
	// subscriber found
	Project2Sample::State robot_state;
	robot_state.state = 1;
	state_publisher.publish(robot_state);

	ros::Subscriber RobotNode_sub = node_handel.subscribe<Project2Sample::R_ID>(
			"Robot1_msg", 1000, test_callback);

//	while (ros::ok()) {
//		loop_rate.sleep();
//		if (state != 0) {
//			// Break if state is no longer IDLE
//			break;
//		}
//		ros::spinOnce();
//
//	}

	// Sleep for one second to ensure the RX node has time to process and publish.
	sleep(1);

	// Process callbacks, there should be ~10 callbacks available as RX's loop_rate is 10Hz and we've just slept for 1 sec.
	ros::spinOnce();

	EXPECT_EQ(1, state);
}

// Run all the tests that were declared with TEST()
int main(int argc, char **argv) {
	ros::init(argc, argv, "test");
	testing::InitGoogleTest(&argc, argv);
	return RUN_ALL_TESTS();
}
