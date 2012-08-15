/*
 * TestFindGroup.cpp
 *
 *  Created on: 15/08/2012
 *      Author: veniora
 */

#include "TestFindGroup.h"
#include "ros/ros.h"
#include <gtest/gtest.h>
#include <Project2Sample/R_ID.h>

using namespace std;
TestFindGroup::TestFindGroup() {
	// TODO Auto-generated constructor stub

}

TestFindGroup::~TestFindGroup() {
	// TODO Auto-generated destructor stub
}

TEST(TestFindGroup, Initial)
{
	EXPECT_EQ(10, 10 );
}

TEST(TestFindGroup, simpleOneGroupCase)
{
	// Define 6 robots - vectors are R_IDs with 5 lines: int id, int group id, float x, float y, float theta
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

	vector<int> robotGroupInfo = FindGroup::formGroup(nodes, 1);

	EXPECT_EQ(0, robotGroupInfo.at(0));
	EXPECT_EQ(0, robotGroupInfo.at(1));
	EXPECT_EQ(1, robotGroupInfo.at(2));
	cout << "formGroupTest FOUND!" < "\n";

	//delete robotGroupInfo, msg1, msg2, msg3;



//<test things here, calling EXPECT_* and/or ASSERT_* macros as needed>
}

// Run all the tests that were declared with TEST()
int main(int argc, char **argv){
testing::InitGoogleTest(&argc, argv);
return RUN_ALL_TESTS();
}
