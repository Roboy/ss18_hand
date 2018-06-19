#include "ros/ros.h"
#include "roboy_hand/GestureExecution.h"
#include <cstdlib>
#include <roboy_communication_middleware/FingerCommand.h>
#include <roboy_communication_middleware/HandSimCommand.h>

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
  ros::NodeHandle n;
  ros::NodeHandle np;
  ros::ServiceClient client = n.serviceClient<roboy_hand::GestureExecution>("gesture_execution");
  
  ros::Publisher ges_exec = np.advertise<roboy_communication_middleware::HandSimCommand>("/roboy/middleware/FingerCommand",1);
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

  return 0;
}
