/*
 * CalculatePositions.cpp
 *
 *  Created on: 6/08/2012
 *      
 */

#include <iostream>
#include <vector>
#include <math.h>
#include <cmath>

#define PI 3.14159265

using namespace std;



struct msg {
	int id;
	int followID;
	float x;
	float y;
	float theta;
} ;

// Similar to the find leader algorithm.
// It takes the vector of all unassigned robots and calculates their distances to the next available position in line. It then assigns the closest one that place.
int findClosestRobot(float newX, float newY, vector <msg> messages) {
	int minDistance = 9999999; //make the biggest number
	int closestRobotID = -1;
	
	// Iterate through list of unassigned robots and calculate distance from next point
	for (int i = 0; i < messages.size(); i++){
		msg m = messages[i];
		float distance = sqrt(pow(newX - m.x, 2) + pow(newY - m.y, 2));
		distance = abs(distance);
		
		// If closer, update robot id
		if (distance < minDistance){
			closestRobotID = m.id;
			minDistance = distance;
		}
	}
	return closestRobotID;
}


int findLeader(vector <msg> messages) {
	int minDistance = 9999999; //make the biggest number
	int leaderID = -1;

	for (int i = 0; i < messages.size(); i++){
		msg m = messages[i]; // Corresponds to the info on a single robot
		float distance = sqrt(pow(m.x,2) + pow(m.y,2));
		distance = abs(distance); // Confirm positive value

		// Check if the robot distance is less than the current closest robot but not at the node itself
		if (distance > 0 && distance < minDistance){
			leaderID = m.id; // Set as new leader
			minDistance = distance;
		}
	}
	return leaderID;
}

// Function to be called once the list of current positions is known and the leader ID has been calculated
vector <msg> calculatePositions(vector <msg> messages, int leaderID) {
	float currentX; // initialised as leader positions
	float currentY;
	float leaderTheta;

	float deltaX;
	float deltaY;
	float fiveRobots = 5 * 0.35; // Assuming robot length of 0.35

	// Initialise output format
	vector <msg> newPositions(messages.size());
	//cout << messages.size() << "\n";

	int first;
	//loop through R_IDs to find which one matches the leader ID
	for (int i = 0; i < messages.size(); i++){
		msg m = messages[i];
		//find leader's x,y
		if (m.id == leaderID){
			first = i;
			currentX = m.x;
			currentY = m.y;

			newPositions[0] = m; // Add to output
		}
	}

	//calculate the angle the robot position vector makes with the positive x axis
	// Angles in radians
	float lineAngle = atan(currentY/currentX);

	// This is the change in x and y each time a robot is added on the line through the origin and leader at 5 robot lengths away
	deltaX = fiveRobots * cos(lineAngle);
	deltaY = fiveRobots * sin(lineAngle);


	// ROS uses degrees by default so convert back
	lineAngle = lineAngle * 180 / PI; // to degrees
	leaderTheta = 180 + lineAngle;

	// Different behaviour when in the negative x axis
	if (currentX < 0){
				deltaX = -deltaX;
				deltaY = -deltaY;
				leaderTheta += 180;

			}
		//cout << "deltaX: " << deltaX << "\n";
		//cout << "deltaY: " << deltaY << "\n";
		//cout << "leaderTheta: " << leaderTheta << "\n";


	newPositions[0].theta = leaderTheta; // store in output
	//finished with leader so erase from vector of messages.
	//use begin() + 1 for second element, etc.
	messages.erase(messages.begin()+first);

	// Populates the position values in the output array. They are in order of distance from origin (but lack battery and id values as yet)
	for (int i = 0; i < messages.size(); i++){
		// Find next position on the line
		currentX += deltaX;
		currentY += deltaY;
		//assign to positions vector
		newPositions[i+1].x = currentX; //Arrays are now different sizes
		newPositions[i+1].y = currentY;
		newPositions[i+1].theta = leaderTheta;

	}

	//assign robots to those positions


	int size = messages.size();
	for (int i = 1; i <= size; i++){
		//assign remaining fields, just giving them all the leader's battery life (for now)
		
		//find closest robot to the next available position to be filled
		newPositions[i].id = findClosestRobot(newPositions[i].x, newPositions[i].y, messages);

		//find and erase finished robot from original vector of messages. This cleans up the vector which is passed each time to findClosestRobot
		for (int j = 0; j <= messages.size(); j++){
			if (messages[j].id == newPositions[i].id){
				messages.erase(messages.begin()+j);
			}
		}
	}

	//Loop through to add follow id
	//Set leader to -1 first
	newPositions[0].followID = -1;
	//loop through remaining robots
	for (int i = 1; i < newPositions.size() - 1; i++){
		newPositions[i].followID = newPositions[i-1].id;
	}


	return newPositions;   //WORK OUT HOW TO TELL ROS ALL ABOUT IT

}



int main(int argc, const char* argv[]){

	msg r0;
	r0.id = 0;
	r0.x = -10;
	r0.y = -10;
	r0.theta = 45;

	msg r1;
	r1.id = 1;
	r1.x = -20;
	r1.y = -20;
	r1.theta = 123.7;

	msg r2;
	r2.id = 2;
	r2.x = 2;
	r2.y = 2;
	r2.theta = 13;

	msg r3;
	r3.id = 3;
	r3.x = 1;
	r3.y = 1;
	r3.theta = 5;

	msg r4;
	r4.id = 4;
	r4.x = 100;
	r4.y = 1;
	r4.theta = 5;
	
	vector<msg> testPosition;

	testPosition.push_back(r0);
	testPosition.push_back(r1);
	testPosition.push_back(r2);
	testPosition.push_back(r3);
	testPosition.push_back(r4);

	vector<msg> results = calculatePositions(testPosition, findLeader(testPosition));
	
	
	cout << "first: " << results[0].id << "\n";
	cout << "first x: " << results[0].x << "\n";
	cout << "first y: " << results[0].y << "\n";
	cout << "first theta: " << results[0].theta << "\n";
	cout << "second: " << results[1].id << "\n";
	cout << "second x: " << results[1].x << "\n";
	cout << "second y: " << results[1].y << "\n";
	cout << "second theta: " << results[1].theta << "\n";
	cout << "third: " << results[2].id << "\n";
	cout << "third x: " << results[2].x << "\n";
	cout << "third y: " << results[2].y << "\n";
	cout << "third theta: " << results[2].theta << "\n";
	cout << "fourth: " << results[3].id << "\n";
	cout << "fourth x: " << results[3].x << "\n";
	cout << "fourth y: " << results[3].y << "\n";
	cout << "fourth theta: " << results[3].theta << "\n";
	cout << "fifth: " << results[4].id << "\n";


/*
*	int id;
*		float x;
*		float y;
*		float theta;
*		float batteryLife;
*/
	return 0;
}
