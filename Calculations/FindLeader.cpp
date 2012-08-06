/*
 * FindLeader.cpp
 *
 *  Created on: 6/08/2012
 *      Author: levipatel
 */

#include <vector>
#include <math.h>
#include <cmath>

using namespace std;

// This struct is to emulate the standard R_ID message format
struct msg {
  int id;
  float x;
  float y;
  float theta;
  float batteryLife;
} ;

int findLeader(vector <msg> messages) {
	int minDistance = 9999999; //make the biggest number
	int leaderID = -1;

	for (int i = 0; i < messages.size(); i++){
		msg m = messages[i]; // Corresponds to the info on a single robot
		float distance = sqrt((m.x)^2 + (m.y)^2);
		distance = abs(distance); // Confirm positive value

		// Check if the robot distance is less than the current closest robot but not at the node itself
		if (distance > 0 && distance < minDistance){
			leaderID = m.id; // Set as new leader
			minDistance = distance;
		}
	}
	return leaderID;
}