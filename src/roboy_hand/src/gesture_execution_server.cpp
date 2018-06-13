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

bool execute(roboy_hand::GestureExecution::Request &req,
			 roboy_hand::GestureExecution::Response &res)
{
	//res.jointAngles = req.gesture;        //publish angles to topic: roboy/middleware/FingerCommand
	roboy_communication_middleware::FingerCommand msg_finger;
    std::vector<roboy_communication_middleware::FingerCommand> msg_finger_vector;
    roboy_communication_middleware::HandSimCommand msg_hand;
	for(int i=0; i < 5 ; i++){
        while(!msg_finger.angles.empty()) msg_finger.angles.pop_back();
		if(i != 2){
			msg_finger.id = 0;
			msg_finger.finger = i;
			//msg_finger.angles.erase(msg_finger.angles.begin(),msg_finger.angles.begin()+4);
			msg_finger.angles.push_back(-20);
			msg_finger.angles.push_back(0);
			msg_finger.angles.push_back(109);
			msg_finger.angles.push_back(69);

			msg_hand.fingerMsg.push_back(msg_finger);
		}
		else{
            //while(!msg_finger.angles.empty) msg_finger.angles.pop_back();
		    //msg_finger.angles.erase(msg_finger.angles.begin(),msg_finger.angles.begin()+4);
			msg_finger.id = 0;
			msg_finger.finger = i;
			msg_finger.angles.push_back(0);
			msg_finger.angles.push_back(0);
			msg_finger.angles.push_back(0);
			msg_finger.angles.push_back(0);

            msg_hand.fingerMsg.push_back(msg_finger);
		}
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

