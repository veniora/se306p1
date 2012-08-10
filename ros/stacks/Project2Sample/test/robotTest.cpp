#include "ros/ros.h"
#include <Project2Sample/R_ID.h>
#include <gtest/gtest.h>
#include <sensor_msgs/LaserScan.h>
#include <nav_msgs/Odometry.h>
#include <src/robot.h>


// Declare a test
TEST(TestSuite, testDefaultValues)
{
//<test things here, calling EXPECT_* and/or ASSERT_* macros as needed>
	Robot testRobot(10);
	EXPECT_EQ(10, testRobot.R_Id );
	EXPECT_EQ(0.0, testRobot.linear_x );
	EXPECT_EQ(0.0, testRobot.angular_z );

}

// Declare another test
TEST(TestSuite2, testCallbacks)
{
	Robot testRobot(10);
	Project2Sample::R_ID_Follow msg;
	ASSERT_NO_THROW(testRobot.callback( msg));
//<test things here, calling EXPECT_* and/or ASSERT_* macros as needed>
}

// Run all the tests that were declared with TEST()
int main(int argc, char **argv){
testing::InitGoogleTest(&argc, argv);
return RUN_ALL_TESTS();
}
