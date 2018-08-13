/*
 * gesture_exec.cpp
 *
 *  Created on: May 18, 2018
 *      Author: kaiwu
 */

#include "ros/ros.h"
#include "roboy_hand/GestureExecution.h"
#include <roboy_communication_middleware/FingerCommand.h>
#include <roboy_communication_middleware/HandSimCommand.h>

#include <iostream>
#include <fstream>
using namespace std;

bool execute(roboy_hand::GestureExecution::Request &req,
			 roboy_hand::GestureExecution::Response &res)
{
	//res.jointAngles = req.gesture;        //publish angles to topic: roboy/middleware/FingerCommand
	roboy_communication_middleware::FingerCommand msg_finger;
    std::vector<roboy_communication_middleware::FingerCommand> msg_finger_vector;
    roboy_communication_middleware::HandSimCommand msg_hand;

    FILE *lut;
    lut = fopen ("ges_lut.txt", "rt+");
    float joints[5][4];

    for(int i=0; i<req.gesture*6+1; i++){
        fscanf(lut, "%*[^\n]%*c");
    }

    for (int i=0; i<5; i++){
        fscanf(lut,"%f %f %f %f\n", &joints[i][0],  &joints[i][1],  &joints[i][2], &joints[i][3]);
        msg_finger.angles.clear();
        msg_finger.id = 0;
        msg_finger.finger = i;
        msg_finger.angles.push_back(joints[i][0]);
        msg_finger.angles.push_back(joints[i][1]);
        msg_finger.angles.push_back(joints[i][2]);
        msg_finger.angles.push_back(joints[i][3]);

        msg_hand.fingerMsg.push_back(msg_finger);
    }

	//msg_hand = msg_finger_vector;
  res.msg = msg_hand;
	return true;
	
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "gesture_execution_server");
  ros::NodeHandle n;

  ros::ServiceServer service = n.advertiseService("gesture_execution", execute);


	
  ROS_INFO("Ready to execute gesture.");
  ros::spin();

  return 0;
}

