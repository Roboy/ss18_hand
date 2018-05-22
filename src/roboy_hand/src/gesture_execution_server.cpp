/*
 * gesture_exec.cpp
 *
 *  Created on: May 18, 2018
 *      Author: kaiwu
 */

#include "ros/ros.h"
#include "roboy_hand/GestureExecution.h"

bool execute(roboy_hand::GestureExecution::Request &req,
			 roboy_hand::GestureExecution::Response &res)
{
	res.jointAngles = req.gesture;        //publish angles to topic: roboy/middleware/FingerCommand
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

