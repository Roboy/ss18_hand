#include "ros/ros.h"
#include "roboy_hand/GestureExecution.h"
#include <cstdlib>
#include <roboy_communication_middleware/FingerCommand.h>
#include <roboy_communication_middleware/HandSimCommand.h>
#include <std_msgs/Int64.h>
#include <std_msgs/Int8.h>
#include <vector>

ros::Publisher ges_exec;
ros::ServiceClient client;



void call_gesture_server(const std_msgs::Int64& msg){
    ROS_INFO("executing gesture server call with gesture number %ld", msg.data);
    //This nodehandle is needed for the parameter server setparam.
    ros::NodeHandle n;
    roboy_hand::GestureExecution srv;

    roboy_communication_middleware::HandSimCommand HandMsg;
    srv.request.gesture = msg.data;
    //Call the server and get the joint angles
    if (client.call(srv))
    { 
        std::cout << srv.response.msg;
        HandMsg.fingerMsg = srv.response.msg.fingerMsg;

    }
    else
    {
        ROS_ERROR("Failed to call service gesture execution");
    }

    //TODO: Could be done with 2D vector. 
    std::vector<double> target_pos1;
    std::vector<double> target_pos2;
    std::vector<double> target_pos3;
    std::vector<double> target_pos4;
    std::vector<double> target_pos5;

    //Extract the joint angles from HandMsg and push them to their corresponding vector.
    for (int i = 0; i < 4; i++) {
        target_pos1.push_back((double) HandMsg.fingerMsg[0].angles[i]);
        target_pos2.push_back((double) HandMsg.fingerMsg[1].angles[i]);
        target_pos3.push_back((double) HandMsg.fingerMsg[2].angles[i]);
        target_pos4.push_back((double) HandMsg.fingerMsg[3].angles[i]);
        target_pos5.push_back((double) HandMsg.fingerMsg[4].angles[i]);
    }


    //Control is switched on to Torque Controller
    n.setParam("/controller",1);

    //Set target positions through parameter server.
    n.setParam("/thumb_limb3/target_pos",target_pos1);
    n.setParam("/index_limb3/target_pos",target_pos2);
    n.setParam("/middle_limb3/target_pos",target_pos3);
    n.setParam("/ring_limb3/target_pos",target_pos4);
    n.setParam("/little_limb3/target_pos",target_pos5);

    //Just for debugging purpose for now.
    ges_exec.publish(HandMsg);

}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "gesture_client");


  ros::NodeHandle nh;
  client = nh.serviceClient<roboy_hand::GestureExecution>("gesture_execution");
  //subscribes to gesture_recognition topic, if something published forwards it  to call_gesture_server.
  ros::Subscriber ges_recog = nh.subscribe("/gesture_recognition",1000, call_gesture_server);
  //Topic to publish with HandSimCommand message type
  ges_exec = nh.advertise<roboy_communication_middleware::HandSimCommand>("/roboy/middleware/FingerCommand",1);

  ros::spin();

  return 0;
}
