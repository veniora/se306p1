//#include "/opt/ros/electric/stacks/common_msgs/sensor_msgs/msg_gen/cpp/include/sensor_msgs/LaserScan.h"
#include "ros/ros.h"
#include <Project2Sample/R_ID.h>
#include <gtest/gtest.h>
#include <sensor_msgs/LaserScan.h>
#include <nav_msgs/Odometry.h>
#include "src/robot.h"
//#include "/home/ubuntu-11-10/se306p1/ros/stacks/Project2Sample/src/robot.h"


// Declare a test
TEST(TestSuite, testCase1)
{
//<test things here, calling EXPECT_* and/or ASSERT_* macros as needed>
}

// Declare another test
TEST(TestSuite, testCase2)
{
//<test things here, calling EXPECT_* and/or ASSERT_* macros as needed>
}

// Run all the tests that were declared with TEST()
int main(int argc, char **argv){
testing::InitGoogleTest(&argc, argv);
return RUN_ALL_TESTS();
}
