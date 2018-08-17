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
#include <stdio.h>  /* defines FILENAME_MAX */
#include <unistd.h>

#include <stdio.h>  /* defines FILENAME_MAX */
#include <unistd.h>
#include <ros/package.h>

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

    ifstream lut;
    /*
    char cCurrentPath[FILENAME_MAX];

    if (!getcwd(cCurrentPath, sizeof(cCurrentPath)))
    {
        ROS_ERROR("Couldnt get folder name!");
    }
    */
    string file_name = ros::package::getPath("roboy_hand");
    file_name += "/src/ges_lut.txt";
    cout << file_name << endl;
    //printf ("The current working directory is %s", cCurrentPath);
    lut.open(file_name);

    if(!lut.is_open()) ROS_ERROR("FILE NOT FOUND!");
    int ges_index;
    float joints[5][4] = {0};
/*
    int index;
    lut >> index;
    cout << index << endl;
    for(int i=0; i<5; i++){
        lut >> joints[i][0] >> joints[i][1] >> joints[i][2] >> joints[i][3];
        cout << joints[i][0] << " " << joints[i][1] << " " << joints[i][2] << " " << joints[i][3] << endl;
    }
*/
    //cout << req.gesture << endl;

    for(int i=0; i<req.gesture; i++){
        lut >> ges_index;
        lut >> joints[0][0] >> joints[0][1] >> joints[0][2] >> joints[0][3];
        lut >> joints[0][0] >> joints[0][1] >> joints[0][2] >> joints[0][3];
        lut >> joints[0][0] >> joints[0][1] >> joints[0][2] >> joints[0][3];
        lut >> joints[0][0] >> joints[0][1] >> joints[0][2] >> joints[0][3];
        lut >> joints[0][0] >> joints[0][1] >> joints[0][2] >> joints[0][3];
    }


    lut >> ges_index;
    cout << "gesture: " << ges_index << endl;

    if (!msg_hand.fingerMsg.empty()) msg_hand.fingerMsg.clear();

    for (int i=0; i<5; i++){
        lut >> joints[i][0] >> joints[i][1] >> joints[i][2] >> joints[i][3];
        //fscanf(lut,"%f %f %f %f\n", &joints[i][0],  &joints[i][1],  &joints[i][2], &joints[i][3]);
        if(!msg_finger.angles.empty()) msg_finger.angles.clear();
        msg_finger.id = 0;
        msg_finger.finger = i;

        msg_finger.angles.push_back(joints[i][0]);
        msg_finger.angles.push_back(joints[i][1]);
        msg_finger.angles.push_back(joints[i][2]);
        msg_finger.angles.push_back(joints[i][3]);

        msg_hand.fingerMsg.push_back(msg_finger);
        //cout << joints[i][0] << " " << joints[i][1] << " " << joints[i][2] << " " << joints[i][3] << endl;
        ROS_INFO("%f %f %f %f", joints[i][0], joints[i][1], joints[i][2], joints[i][3]);
    }


/*
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

    */
    lut.close();
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