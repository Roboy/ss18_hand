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
    ros::NodeHandle n;
    roboy_hand::GestureExecution srv;
    //roboy_communication_middleware::FingerCommand FingerMsg;
    roboy_communication_middleware::HandSimCommand HandMsg;
    //std::cout<< msg.data;
    srv.request.gesture = msg.data;
    if (client.call(srv))
    { 
        std::cout << srv.response.msg;
        //ROS_INFO("Hand id: %i", srv.response.msg.fingerMsg.id);
        //ROS_INFO("Hand id: %i", srv.response.msg.fingerMsg.finger);
        //ROS_INFO("Hand id: %i", srv.response.msg.fingerMsg.angles);
        HandMsg.fingerMsg = srv.response.msg.fingerMsg;

    }
    else
    {
        ROS_ERROR("Failed to call service gesture execution");
    }
    //std::vector<double> target_pos;
    //std::cout << HandMsg.fingerMsg[2].angles;
    //for(int i=0;i<4;i++){
    //    target_pos.push_back((double)HandMsg.fingerMsg[1].angles[i]);
    //}

    //n.setParam("/middle_limb3/target_pos",target_pos);
    /*
    n.setParam("/middle_limb3/target_pos",target_pos);
    n.setParam("/middle_limb3/target_pos",target_pos);
    n.setParam("/middle_limb3/target_pos",target_pos);
    n.setParam("/middle_limb3/target_pos",target_pos);
     */
    ges_exec.publish(HandMsg);

}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "gesture_client");
  /*
  if (argc != 3)
  {
    ROS_INFO("usage: Gesture-execution gesture-num");
    return 1;
  }
  */
  ros::NodeHandle nh;
  client = nh.serviceClient<roboy_hand::GestureExecution>("gesture_execution");
  ros::Subscriber ges_recog = nh.subscribe("/gesture_recognition",1000, call_gesture_server);
  ges_exec = nh.advertise<roboy_communication_middleware::HandSimCommand>("/roboy/middleware/FingerCommand",1);

  ros::spin();
  /*
  roboy_communication_middleware::FingerCommand msg;
  roboy_communication_middleware::HandSimCommand HandMsg;



  roboy_hand::GestureExecution srv;
  srv.request.gesture = atoll(argv[0]);

  if (client.call(srv))
  {
    //ROS_INFO("Hand id: %i", srv.response.msg.fingerMsg.id);
    //ROS_INFO("Hand id: %i", srv.response.msg.fingerMsg.finger);
    //ROS_INFO("Hand id: %i", srv.response.msg.fingerMsg.angles);

    HandMsg.fingerMsg = srv.response.msg.fingerMsg;


  }
  else
  {
    ROS_ERROR("Failed to call service gesture execution");
    return 1;
  }

  while(ros::ok() && HandMsg.fingerMsg.size() != 0)
  {
      ges_exec.publish(HandMsg);
      ros::spinOnce();
  }
  */
  return 0;
}
