/*
 * gesture_server.cpp
 *
 *  Created on: May 18, 2018
 *      Author: kaiwu
 */


#include "ros/ros.h"
#include "roboy_hand/GestureExecution.h"
#include "roboy_hand/GestureMimic.h"

class GestureControl{

public:

	GestureControl(){
		if (!ros::isInitialized()) {
		        int argc = 0;
		        char **argv = NULL;
		        ros::init(argc, argv, "gesture_control");
		}

		gesExec = n.advertiseService("gesture_execution", execute);
		gesMim = n.advertiseService("gesture_mimic", mimic);
	}

	~GestureControl();

	bool execute(roboy_hand::GestureExecution::Request &req,
				 roboy_hand::GestureExecution::Response &res)
	{
		res.jointAngles = req.gesture;        //search angles in LUT and then publish angles to topic: roboy/middleware/FingerCommand
		return true;
	}

	bool mimic(roboy_hand::GestureMimic::Request &req,
		       roboy_hand::GestureMimic::Response &res){
		res.mimicAngles=req.jointAngles;      //publish angles to topic: roboy/middleware/FingerCommand
		return true;
	}

private:
	ros::NodeHandle n;
	ros::ServiceServer gesExec;
	ros::ServiceServer gesMim;

};


//ros::spin()  ???

