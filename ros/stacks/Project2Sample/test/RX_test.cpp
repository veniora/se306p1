#include <gtest/gtest.h>
#include <ros/ros.h>
#include <Project2Sample/R_ID.h>
#include <Project2Sample/State.h>
#include <nav_msgs/Odometry.h>

int state;

/**
 * Change the global variable 'state' to the state of the RX node.
 */
void test_callback(Project2Sample::R_ID msg) {
	state = msg.R_State;
}

/**
 * Test that a RX node responds correctly to a State message published to the 'Robot_state' topic
 */
TEST(TestSuite, testStateChange) {

	state = -1;
	ros::NodeHandle node_handel;
	ros::Publisher odom_publisher = node_handel.advertise<nav_msgs::Odometry>("Robot1_truth", 1000);
	ros::Publisher state_publisher = node_handel.advertise<Project2Sample::State>("Robot_state", 1000);
	ros::Rate loop_rate(10);

	// RX wait for and odometry message before it can do anything else so we must send it a dummy one

	// wait until RX subscribes to the topic
	while (odom_publisher.getNumSubscribers() == 0) {
		loop_rate.sleep();
	}
	// create a dummy odom message
	nav_msgs::Odometry odom_message;
	odom_message.pose.pose.position.x = 0.0;
	odom_message.pose.pose.position.y = 0.0;
	odom_message.pose.pose.position.z = 0.0; // position.z represents theta

	// publish
	odom_publisher.publish(odom_message);

	while (state_publisher.getNumSubscribers() == 0) {
		// waiting for a node to subscribe to "Robot_state"
		loop_rate.sleep();
	}
	// subscriber found
	Project2Sample::State robot_state;
	robot_state.state = 1;
	robot_state.group = -1;
	state_publisher.publish(robot_state);

	ros::Subscriber RobotNode_sub = node_handel.subscribe<Project2Sample::R_ID>(
			"Robot_msg", 1000, test_callback);

	// Sleep for one second to ensure the RX node has time to process and publish.
	sleep(1);

	// Process callbacks.
	ros::spinOnce();

	EXPECT_EQ(1, state);
}

// Run all the tests that were declared with TEST()
int main(int argc, char **argv) {
	ros::init(argc, argv, "test");
	testing::InitGoogleTest(&argc, argv);
	return RUN_ALL_TESTS();
}
