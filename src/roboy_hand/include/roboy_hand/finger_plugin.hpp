#pragma once

#include <gazebo/gazebo.hh>
#include <gazebo/physics/physics.hh>
#include <thread>
#include "ros/ros.h"
#include "ros/callback_queue.h"
#include "ros/subscribe_options.h"
#include "std_msgs/Float32.h"
#include <gazebo/transport/transport.hh>
#include <gazebo/msgs/msgs.hh>
#include <roboy_communication_middleware/FingerCommand.h>
#include <roboy_communication_middleware/HandSimCommand.h>
#include <map>
#include <common_utilities/CommonDefinitions.h>

using namespace std;

static const vector<string> finger_names = {"thumb","index","middle","ring","little"};

namespace gazebo
{
    /// \brief A plugin to control a Finger of Roboy.
    class FingerPlugin : public ModelPlugin
    {
        /// \brief Constructor
    public:
        FingerPlugin();

        /// \brief The load function is called by Gazebo when the plugin is
        /// inserted into simulation
        /// \param[in] _model A pointer to the model that this plugin is
        /// attached to.
        /// \param[in] _sdf A pointer to the plugin's SDF element.
    public:
        virtual void Load(physics::ModelPtr _model, sdf::ElementPtr _sdf);
        /// \brief Handle an incoming message from ROS
        /// \param[in] _msg A float value that is used to set the position
        /// of the Roboy Hand.
        void OnRosMsg(const roboy_communication_middleware::HandSimCommandConstPtr &_msg);


    void OnUpdate(const common::UpdateInfo & /*_info*/);

    private:
        /// \brief Pointer to the model.s
        physics::ModelPtr model;

        /// \brief Pointer to the joint.
        map<string,physics::JointPtr> joint;
        /// \brief A PID controller for the joint.
        common::PID pid;       
        // Pointer to the update event connection
        event::ConnectionPtr updateConnection;

        /// \brief A node use for ROS transport
        std::unique_ptr<ros::NodeHandle> rosNode;

        /// \brief A ROS subscriber
        ros::Subscriber rosSub;

        /// \brief A thread the keeps running the rosQueue
        ros::NodeHandlePtr nh;
        boost::shared_ptr<ros::AsyncSpinner> spinner;
    };
}
