/*
 * Example_test.cpp
 *
 *  Created on: 17/08/2012
 *      Author: Brett
 */
#include <gtest/gtest.h>
#include <ros/ros.h>
#include "../src/GoToSquare.h"

/*
 * Test four leader pos for robots
 * Test that for four robots the points are on the corners,
 * e.g corners are filled in first.
 * Called from robot_id = 0
 * Should return true for location calculated.
 */
TEST(Square_tests, leader4Robots) {
	// Creating four robots
	vector<Project2Sample::R_ID> nodes;
	Project2Sample::R_ID msg1;
	msg1.R_ID = 0; msg1.x = 10.0; msg1.y = 10.0;
	nodes.push_back(msg1);
	Project2Sample::R_ID msg2;
	msg2.R_ID = 1; msg2.x = 20.0; msg2.y = 20.0;
	nodes.push_back(msg2);
	Project2Sample::R_ID msg3;
	msg3.R_ID = 2; msg3.x = 30.0; msg3.y = 30.0;
	nodes.push_back(msg3);
	Project2Sample::R_ID msg4;
	msg4.R_ID = 3; msg4.x = 40.0; msg4.y = 40.0;
	nodes.push_back(msg4);

	vector<int> robotPositions = formSquare(nodes, 0);

	// assert x and y for all four locations
	EXPECT_FLOAT_EQ(10.00000, robotPositions[0]);
	EXPECT_FLOAT_EQ(10.00000,robotPositions[1] );


}

/*
 * Test four leader pos for robots
 * Test that for four robots the points are on the corners,
 * e.g corners are filled in first.
 * Called from robot_id = 1
 * Should return true for location calculated.
 */
TEST(Square_tests, second4Robots) {
	// Creating four robots
	vector<Project2Sample::R_ID> nodes;
	Project2Sample::R_ID msg1;
	msg1.R_ID = 0; msg1.x = 10.0; msg1.y = 10.0;
	nodes.push_back(msg1);
	Project2Sample::R_ID msg2;
	msg2.R_ID = 1; msg2.x = 20.0; msg2.y = 20.0;
	nodes.push_back(msg2);
	Project2Sample::R_ID msg3;
	msg3.R_ID = 2; msg3.x = 30.0; msg3.y = 30.0;
	nodes.push_back(msg3);
	Project2Sample::R_ID msg4;
	msg4.R_ID = 3; msg4.x = 40.0; msg4.y = 40.0;
	nodes.push_back(msg4);

	vector<int> robotPositions = formSquare(nodes, 1);

	// assert x and y for all four locations
	EXPECT_FLOAT_EQ(10.00000, robotPositions[0]);
	EXPECT_FLOAT_EQ(11.75000,robotPositions[1] );


}

/*
 * Test four leader pos for robots
 * Test that for four robots the points are on the corners,
 * e.g corners are filled in first.
 * Called from robot_id = 2
 * Should return true for location calculated.
 */
TEST(Square_tests, third4Robots) {
	// Creating four robots
	vector<Project2Sample::R_ID> nodes;
	Project2Sample::R_ID msg1;
	msg1.R_ID = 0; msg1.x = 10.0; msg1.y = 10.0;
	nodes.push_back(msg1);
	Project2Sample::R_ID msg2;
	msg2.R_ID = 1; msg2.x = 20.0; msg2.y = 20.0;
	nodes.push_back(msg2);
	Project2Sample::R_ID msg3;
	msg3.R_ID = 2; msg3.x = 30.0; msg3.y = 30.0;
	nodes.push_back(msg3);
	Project2Sample::R_ID msg4;
	msg4.R_ID = 3; msg4.x = 40.0; msg4.y = 40.0;
	nodes.push_back(msg4);

	vector<int> robotPositions = formSquare(nodes,2);

	// assert x and y for all four locations
	EXPECT_FLOAT_EQ(11.75000, robotPositions[0]);
	EXPECT_FLOAT_EQ(11.75000,robotPositions[1] );


}

/*
 * Test with five robots, test the last robot pos.
 * Test that robot places self on first edge.
 * e.g corners are filled in first.
 * Called from robot_id = 4
 * Should return true for location calculated.
 */
TEST(Square_tests, extra5Robots) {
	// Creating four robots
	vector<Project2Sample::R_ID> nodes;
	Project2Sample::R_ID msg1;
	msg1.R_ID = 0; msg1.x = 10.0; msg1.y = 10.0;
	nodes.push_back(msg1);
	Project2Sample::R_ID msg2;
	msg2.R_ID = 1; msg2.x = 20.0; msg2.y = 20.0;
	nodes.push_back(msg2);
	Project2Sample::R_ID msg3;
	msg3.R_ID = 2; msg3.x = 30.0; msg3.y = 30.0;
	nodes.push_back(msg3);
	Project2Sample::R_ID msg4;
	msg4.R_ID = 3; msg4.x = 40.0; msg4.y = 40.0;
	nodes.push_back(msg4);
	Project2Sample::R_ID msg5;
	msg5.R_ID = 3; msg5.x = 40.0; msg5.y = 40.0;
	nodes.push_back(msg5);

	vector<int> robotPositions = formSquare(nodes, 4);

	// assert x and y for all four locations
	EXPECT_FLOAT_EQ(11.75000, robotPositions[0]);
	EXPECT_FLOAT_EQ(10.00000,robotPositions[1] );


}

TEST(Square_tests, test2) {

}

int main(int argc, char **argv) {
	testing::InitGoogleTest(&argc, argv);
	return RUN_ALL_TESTS();
}
