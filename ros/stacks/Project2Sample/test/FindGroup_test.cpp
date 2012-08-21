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
/*
 * MISSING: test correct leader in correct group
 */


/*
 * Test +x/+y quadrant
 * Test that algorithm works when there are 3 robots that are already in an ordered line
 * Called from robot_id =1
 * Should return leader is zero, position is 1, group is 0
 */
TEST(SelectLeader, Normal3Robot) {
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

	vector<int> robotGroupInfo = formGroup(nodes, 1);

	EXPECT_EQ(0, robotGroupInfo.at(0));
	EXPECT_EQ(0, robotGroupInfo.at(1));
	EXPECT_EQ(1, robotGroupInfo.at(2));
}

/*
 * test -x/+y quadrant
 * Test that algorithm works when there are 3 robots that are already in an ordered line
 * Called from robot_id =1
 * Should return leader is zero, position is 1, group is 0
 */
TEST(SelectLeader, XNegatives3Robot) {
	vector<Project2Sample::R_ID> nodes;
	Project2Sample::R_ID msg1;
	msg1.R_ID = 0; msg1.x = -10.0; msg1.y = 10.0;
	nodes.push_back(msg1);
	Project2Sample::R_ID msg2;
	msg2.R_ID = 1; msg2.x = -20.0; msg2.y = 20.0;
	nodes.push_back(msg2);
	Project2Sample::R_ID msg3;
	msg3.R_ID = 2; msg3.x = -30.0; msg3.y = 30.0;
	nodes.push_back(msg3);

	vector<int> robotGroupInfo = formGroup(nodes, 1);

	EXPECT_EQ(0, robotGroupInfo.at(0));
	EXPECT_EQ(0, robotGroupInfo.at(1));
	EXPECT_EQ(1, robotGroupInfo.at(2));
}

/*
 * test +x/-y quadrant
 * Test that algorithm works when there are 3 robots that are already in an ordered line
 * Called from robot_id =1
 * Should return leader is zero, position is 1, group is 0
 */
TEST(SelectLeader, YNegatives3Robot) {
	vector<Project2Sample::R_ID> nodes;
	Project2Sample::R_ID msg1;
	msg1.R_ID = 0; msg1.x = 10.0; msg1.y = -10.0;
	nodes.push_back(msg1);
	Project2Sample::R_ID msg2;
	msg2.R_ID = 1; msg2.x = 20.0; msg2.y = -20.0;
	nodes.push_back(msg2);
	Project2Sample::R_ID msg3;
	msg3.R_ID = 2; msg3.x = 30.0; msg3.y = -30.0;
	nodes.push_back(msg3);

	vector<int> robotGroupInfo = formGroup(nodes, 1);

	EXPECT_EQ(0, robotGroupInfo.at(0));
	EXPECT_EQ(0, robotGroupInfo.at(1));
	EXPECT_EQ(1, robotGroupInfo.at(2));
}

/*
 * test -x/-y quadrant
 * Test that algorithm works when there are 3 robots that are already in an ordered line
 * Called from robot_id =1
 * Should return leader is zero, position is 1, group is 0
 */
TEST(SelectLeader, Negatives3Robot) {
	vector<Project2Sample::R_ID> nodes;
	Project2Sample::R_ID msg1;
	msg1.R_ID = 0; msg1.x = -10.0; msg1.y = -10.0;
	nodes.push_back(msg1);
	Project2Sample::R_ID msg2;
	msg2.R_ID = 1; msg2.x = -20.0; msg2.y = -20.0;
	nodes.push_back(msg2);
	Project2Sample::R_ID msg3;
	msg3.R_ID = 2; msg3.x = -30.0; msg3.y = -30.0;
	nodes.push_back(msg3);

	vector<int> robotGroupInfo = formGroup(nodes, 1);

	EXPECT_EQ(0, robotGroupInfo.at(0));
	EXPECT_EQ(0, robotGroupInfo.at(1));
	EXPECT_EQ(1, robotGroupInfo.at(2));
}

/*
 * Test that it works when the robots are out of order and leader finds itself
 * Called from robot_id=2
 * Should return leader=2, group=0, position=0
 */
TEST(SelectLeader, OutOfOrder3Robot) {
	vector<Project2Sample::R_ID> nodes;

	Project2Sample::R_ID msg1;
	msg1.R_ID = 0; msg1.x = 20.0; msg1.y = 20.0;
	nodes.push_back(msg1);
	Project2Sample::R_ID msg2;
	msg2.R_ID = 1; msg2.x = 30.0; msg2.y = 30.0;
	nodes.push_back(msg2);
	Project2Sample::R_ID msg3;
	msg3.R_ID = 2; msg3.x = 10.0; msg3.y = 10.0;
	nodes.push_back(msg3);

	vector<int> robotGroupInfo = formGroup(nodes, 2);

	EXPECT_EQ(2, robotGroupInfo.at(0));
	EXPECT_EQ(0, robotGroupInfo.at(1));
	EXPECT_EQ(0, robotGroupInfo.at(2)); // leader = position 0
};

/*
 * Test that it works when a robot is at the origin
 * Robots at origin now assigned to back of queue
 * Called from robot_id=0
 * Should return leader=1, group=0, position=2
 */
TEST(SelectLeader, EnsureLeaderNotAtOrigin) {
	vector<Project2Sample::R_ID> nodes;

	Project2Sample::R_ID msg1;
	msg1.R_ID = 0; msg1.x = 0.0; msg1.y = 0.0;
	nodes.push_back(msg1);
	Project2Sample::R_ID msg2;
	msg2.R_ID = 1; msg2.x = 10.0; msg2.y = 10.0;
	nodes.push_back(msg2);
	Project2Sample::R_ID msg3;
	msg3.R_ID = 2; msg3.x = 20.0; msg3.y = 20.0;
	nodes.push_back(msg3);

	vector<int> robotGroupInfo = formGroup(nodes, 0);

	EXPECT_EQ(1, robotGroupInfo.at(0));
	EXPECT_EQ(0, robotGroupInfo.at(1));
	EXPECT_EQ(2, robotGroupInfo.at(2));
};

/*
 * Resolve multiple robots at the same distance to origin
 * It doesn't matter what order they go in
 * Called by furtherest robot away
 */
TEST(SelectLeader, RobotsAtSameDistanceToOrigin) {
	vector<Project2Sample::R_ID> nodes;

	Project2Sample::R_ID msg1;
	msg1.R_ID = 0; msg1.x = 20.0; msg1.y = 20.0;
	nodes.push_back(msg1);
	Project2Sample::R_ID msg2;
	msg2.R_ID = 1; msg2.x = 10.0; msg2.y = -10.0;
	nodes.push_back(msg2);
	Project2Sample::R_ID msg3;
	msg3.R_ID = 2; msg3.x = 10.0; msg3.y = 10.0;
	nodes.push_back(msg3);

	vector<int> robotGroupInfo = formGroup(nodes, 0);

	EXPECT_EQ(1, robotGroupInfo.at(0));
	EXPECT_EQ(0, robotGroupInfo.at(1));
	EXPECT_EQ(2, robotGroupInfo.at(2));
};

/*
 * FAILINGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGG
 * Breaks when formGroup is /6 rather than /2
 * Test 24 robots form 4 groups
 * Call from robot 23
 * Expect back id=?; group=3,
 */
TEST(PutInGroups, TwentyFourRobotsFourGroups) {
	vector<Project2Sample::R_ID> nodes;
	// Create and add 24 robots
	int robotCount = 24;
	for (int i=0; i<robotCount; ++i){
		Project2Sample::R_ID temp;
		temp.R_ID = i; temp.x = 5*i + 5; temp.y = 5*i + 5;
		nodes.push_back(temp);
	}
	vector<int> robotGroupInfo = formGroup(nodes, robotCount-1);

		//EXPECT_EQ(1, robotGroupInfo.at(0)); only testing group count
		EXPECT_EQ(3, robotGroupInfo.at(1));
		//EXPECT_EQ(2, robotGroupInfo.at(2));

}
/////////////////////////////////////////////////////////////////////////////////
// Calculate Positions tests
// Input: R_ID of leader and position ID

/*
 * Test +x/+y quadrant of leader
 */
TEST(AssignPositions, RotateLeader) {
	Project2Sample::R_ID leader;
	leader.R_ID = 0; leader.x = 10.0; leader.y = 10.0;

	vector<float> robotGroupInfo = calculatePosition(leader, 0);

	EXPECT_EQ(10, robotGroupInfo.at(0)); //newX
	EXPECT_EQ(10, robotGroupInfo.at(1)); //newY
	EXPECT_EQ(225, robotGroupInfo.at(2)); //leaderTheta
}

/*
 * Test +x/+y quadrant
 */
TEST(AssignPositions, PosXYFindFifth) {
	Project2Sample::R_ID leader;
	leader.R_ID = 0; leader.x = 10.0; leader.y = 10.0;

	vector<float> robotGroupInfo = calculatePosition(leader, 5);

	EXPECT_FLOAT_EQ(16.187184, robotGroupInfo.at(0)); //newX
	EXPECT_FLOAT_EQ(16.187184, robotGroupInfo.at(1)); //newY
	EXPECT_FLOAT_EQ(225, robotGroupInfo.at(2)); //leaderTheta
}

/*
 * Test +x/-y quadrant
 */
TEST(AssignPositions, PosXNegYFindFifth) {
	Project2Sample::R_ID leader;
	leader.R_ID = 0; leader.x = 10.0; leader.y = -10.0;

	vector<float> robotGroupInfo = calculatePosition(leader, 5);

	EXPECT_FLOAT_EQ(16.187184, robotGroupInfo.at(0)); //newX
	EXPECT_FLOAT_EQ(-16.187184, robotGroupInfo.at(1)); //newY
	EXPECT_FLOAT_EQ(135, robotGroupInfo.at(2)); //leaderTheta
}

/*
 * Test -x/+y quadrant
 */
TEST(AssignPositions, NegXPosYFindFifth) {
	Project2Sample::R_ID leader;
	leader.R_ID = 0; leader.x = -10.0; leader.y = 10.0;

	vector<float> robotGroupInfo = calculatePosition(leader, 5);

	EXPECT_FLOAT_EQ(-16.187184, robotGroupInfo.at(0)); //newX
	EXPECT_FLOAT_EQ(16.187184, robotGroupInfo.at(1)); //newY
	EXPECT_FLOAT_EQ(315, robotGroupInfo.at(2)); //leaderTheta
}

/*
 * Test +x/+y quadrant
 */
TEST(AssignPositions, NegXNegYFindFifth) {
	Project2Sample::R_ID leader;
	leader.R_ID = 0; leader.x = -10.0; leader.y = -10.0;

	vector<float> robotGroupInfo = calculatePosition(leader, 5);

	EXPECT_FLOAT_EQ(-16.187184, robotGroupInfo.at(0)); //newX
	EXPECT_FLOAT_EQ(-16.187184, robotGroupInfo.at(1)); //newY
	EXPECT_FLOAT_EQ(45, robotGroupInfo.at(2)); //leaderTheta
}

int main(int argc, char **argv) {
	testing::InitGoogleTest(&argc, argv);
	return RUN_ALL_TESTS();
}
