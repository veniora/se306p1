#include "FindGroup.h"
#include "ros/ros.h"
#include <gtest/gtest.h>
#include "Project2Sample/R_ID.h"

namespace {

class TestFindGroup : public testing::Test {
protected:

	TestFindGroup(){
		ten = 10;
	}

	virtual ~TestFindGroup(){
		// Clean up
	}

	// declare class variables
	int ten;

}; // end fixture/class

TEST_F(TestFindGroup, Initial)
{
	EXPECT_EQ(10, ten );
}

TEST_F(TestFindGroup, Second)
{
	int four = 4;
	EXPECT_EQ(4, four );
}

} //namespace

// Run all the tests that were declared with TEST()
int main(int argc, char **argv) {
	::testing::InitGoogleTest(&argc, argv);
	return RUN_ALL_TESTS();
}
