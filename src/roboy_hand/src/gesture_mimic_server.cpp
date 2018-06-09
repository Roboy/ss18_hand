/*
 * gesture_mimic_server.cpp
 *
 *  Created on: May 18, 2018
 *      Author: kaiwu
 */

#include "ros/ros.h"
#include "roboy_hand/GestureMimic.h"

bool mimic(roboy_hand::GestureMimic::Request &req,
	       roboy_hand::GestureMimic::Response &res){
	res.mimicAngles=req.jointAngles;        //publish angles to topic: roboy/middleware/FingerCommand
	return true;
}

int main(int argc, char** argv){
	ros::init(argc, argv, "gesture_mimic_server");
	ros::NodeHandle n;

	ros::ServiceServer service = n.advertiseService("gesture_mimic", mimic);
	ROS_INFO("Ready to mimic gesture");
	ros::spin();

	return 0;
}
