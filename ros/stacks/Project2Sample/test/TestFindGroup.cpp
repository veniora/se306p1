/*
 * TestFindGroup.cpp
 *
 *  Created on: 15/08/2012
 *      Author: veniora
 */

#include "TestFindGroup.h"
#include "ros/ros.h"
#include <gtest/gtest.h>

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

// Run all the tests that were declared with TEST()
int main(int argc, char **argv){
testing::InitGoogleTest(&argc, argv);
return RUN_ALL_TESTS();
}
