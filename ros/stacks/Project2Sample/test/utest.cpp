#include "ros/ros.h"
// Bring in gtest
#include <gtest/gtest.h>

int fred = 8;
// Declare a test
TEST(TestSuite, testCase1)
{
	EXPECT_EQ(10, 10 );
	EXPECT_EQ(8, fred );
}

// Declare another test
TEST(TestSuite, testCase2)
{
	EXPECT_EQ("Piccolo", "Piccolo" );
}

// Run all the tests that were declared with TEST()
int main(int argc, char **argv){
testing::InitGoogleTest(&argc, argv);
return RUN_ALL_TESTS();
}
