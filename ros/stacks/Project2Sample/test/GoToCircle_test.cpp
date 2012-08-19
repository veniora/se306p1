/*
 * Example_test.cpp
 *
 *  Created on: 17/08/2012
 *      Author: Brett
 */
#include <gtest/gtest.h>
#include <ros/ros.h>
#include "../src/GoToCircle.h"
/*
 * Tests in each quadrant. Each one can have different behaviour. This algorithm
 * has been visually inspected many times and there are limited variations
 * that can go wrong.
 */
TEST(StationaryCircleTests, PositiveQuadrant) {
	// Create 4 nodes
}



int main(int argc, char **argv) {
	testing::InitGoogleTest(&argc, argv);
	return RUN_ALL_TESTS();
}
