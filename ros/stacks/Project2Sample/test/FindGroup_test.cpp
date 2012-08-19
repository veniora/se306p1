/*
 * Example_test.cpp
 *
 *  Created on: 17/08/2012
 *      Author: Brett
 */
#include <gtest/gtest.h>
#include <ros/ros.h>
#include "../src/FindGroup.h"
#include <Project2Sample/R_ID.h>
#include <FindGroup.h>

/*
 * Test that algorithm works when there are 3 robots that are already in an ordered line
 * Called from robot_id =1
 * Should return leader is zero, position is 1, group is 0
 */
TEST(SelectLeader, Normal3Robot) {
	vector<Project2Sample::R_ID> nodes;
	FindGroup f = new FindGroup;
	Project2Sample::R_ID msg1;
	msg1.R_ID = 0; msg1.x = 10.0; msg1.y = 10.0;
	nodes.push_back(msg1);
	Project2Sample::R_ID msg2;
	msg2.R_ID = 1; msg2.x = 20.0; msg2.y = 20.0;
	nodes.push_back(msg2);
	Project2Sample::R_ID msg3;
	msg3.R_ID = 2; msg3.x = 30.0; msg3.y = 30.0;
	nodes.push_back(msg3);

	vector<int> robotGroupInfo = f.formGroup(nodes, 1);

	EXPECT_EQ(0, robotGroupInfo.at(0));
	EXPECT_EQ(0, robotGroupInfo.at(1));
	EXPECT_EQ(1, robotGroupInfo.at(2));
}
/*
 * Test that it works when the robots are out of order and leader finds itself
 * Called from robot_id=2
 * Should return leader=2, group=0, position=2
 */
TEST(SelectLeader, OutOfOrder3Robot) {
	vector<Project2Sample::R_ID> nodes;
	FindGroup f = new FindGroup;

	Project2Sample::R_ID msg1;
	msg1.R_ID = 0; msg1.x = 20.0; msg1.y = 20.0;
	nodes.push_back(msg1);
	Project2Sample::R_ID msg2;
	msg2.R_ID = 1; msg2.x = 30.0; msg2.y = 30.0;
	nodes.push_back(msg2);
	Project2Sample::R_ID msg3;
	msg3.R_ID = 2; msg3.x = 10.0; msg3.y = 10.0;
	nodes.push_back(msg3);

	vector<int> robotGroupInfo = f.formGroup(nodes, 2);

	EXPECT_EQ(2, robotGroupInfo.at(0));
	EXPECT_EQ(0, robotGroupInfo.at(1));
	EXPECT_EQ(2, robotGroupInfo.at(2));
};

/*
 * Test that it works when a robot is at the origin
 * It must not be selected as leader but assigned to the number 2 position
 * Called from robot_id=0
 * Should return leader=1, group=0, position=1
 */
TEST(SelectLeader, EnsureLeaderNotAtOrigin) {
	vector<Project2Sample::R_ID> nodes;
	FindGroup f = new FindGroup;

	Project2Sample::R_ID msg1;
	msg1.R_ID = 0; msg1.x = 0.0; msg1.y = 0.0;
	nodes.push_back(msg1);
	Project2Sample::R_ID msg2;
	msg2.R_ID = 1; msg2.x = 10.0; msg2.y = 10.0;
	nodes.push_back(msg2);
	Project2Sample::R_ID msg3;
	msg3.R_ID = 2; msg3.x = 20.0; msg3.y = 20.0;
	nodes.push_back(msg3);

	vector<int> robotGroupInfo = f.formGroup(nodes, 0);

	EXPECT_EQ(1, robotGroupInfo.at(0));
	EXPECT_EQ(0, robotGroupInfo.at(1));
	EXPECT_EQ(1, robotGroupInfo.at(2));
};
/*
 * Test that it works when the robots are out of order and leader finds itself
 * Called from robot_id=2
 * Should return leader=2, group=0, position=2
 */
TEST(SelectLeader, BadTest) {
	vector<Project2Sample::R_ID> nodes;
	FindGroup f = new FindGroup;

	Project2Sample::R_ID msg1;
	msg1.R_ID = 0; msg1.x = 20.0; msg1.y = 20.0;
	nodes.push_back(msg1);
	Project2Sample::R_ID msg2;
	msg2.R_ID = 1; msg2.x = 30.0; msg2.y = 30.0;
	nodes.push_back(msg2);
	Project2Sample::R_ID msg3;
	msg3.R_ID = 2; msg3.x = 10.0; msg3.y = 10.0;
	nodes.push_back(msg3);

	vector<int> robotGroupInfo = f.formGroup(nodes, 2);

	EXPECT_EQ(2, robotGroupInfo.at(0));
	EXPECT_EQ(0, robotGroupInfo.at(1));
	EXPECT_EQ(34, robotGroupInfo.at(2));
};


int main(int argc, char **argv) {
	testing::InitGoogleTest(&argc, argv);
	return RUN_ALL_TESTS();
}
