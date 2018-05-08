#ifndef _FINGER_PLUGIN_HH_
#define _FINGER_PLUGIN_HH_

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

namespace gazebo
{
  /// \brief A plugin to control a Finger of Roboy.
  class FingerPlugin : public ModelPlugin
  {
    /// \brief Constructor
    public: FingerPlugin() {}

    /// \brief The load function is called by Gazebo when the plugin is
    /// inserted into simulation
    /// \param[in] _model A pointer to the model that this plugin is
    /// attached to.
    /// \param[in] _sdf A pointer to the plugin's SDF element.
    public: virtual void Load(physics::ModelPtr _model, sdf::ElementPtr _sdf)
    {
      // Just output a message for now
      std::cerr << "\nThe Finger plugin is attach to model[" <<
        _model->GetName() << "]\n";

      // Safety check
      if (_model->GetJointCount() == 0)
      {
        std::cerr << "Invalid joint count, Finger plugin not loaded\n";
        return;
      }

      // Store the model pointer for convenience.
      this->model = _model;

      // Get the first joint. We are making an assumption about the model
      // having one joint that is the rotational joint.
      this->joint = _model->GetJoints()[0];

        // Setup a P-controller, with a gain of 0.1.
      this->pid = common::PID(0.1, 0.1, 0);

      // Apply the P-controller to the joint.
      this->model->GetJointController()->SetPositionPID(
          this->joint->GetScopedName(), this->pid);


      // Set the joint's target velocity. This target velocity is just
      // for demonstration purposes.
      this->model->GetJointController()->SetPositionTarget(
          this->joint->GetScopedName(), 0.5);

      // this->updateConnection = event::Events::ConnectWorldUpdateBegin(
      //    boost::bind(&FingerPlugin::OnUpdate, this, _1));

        // Initialize ros, if it has not already bee initialized.
        if (!ros::isInitialized())
        {
            int argc = 0;
            char **argv = NULL;
            ros::init(argc, argv, "gazebo_client",
                      ros::init_options::NoSigintHandler);
        }


        // Subscribe to it.
        this->rosSub = this->rosNode->subscribe("roboy/middleware/FingerCommand", 1,&FingerPlugin::OnRosMsg, this);

        // Spin up the queue helper thread.
          this->rosQueueThread =
                  std::thread(std::bind(&FingerPlugin::QueueThread, this));

    }
      /// \brief Handle an incoming message from ROS
    /// \param[in] _msg A float value that is used to set the velocity
    /// of the Velodyne.
    public: void OnRosMsg(const std_msgs::Float32ConstPtr &_msg)
      {
          this->SetPosition(_msg->data);
      }

      /// \brief Set the velocity of the Velodyne
    /// \param[in] _vel New target velocity
    public: void SetPosition(const double &_vel)
      {
          // Set the joint's target velocity.
          this->model->GetJointController()->SetPositionTarget(
                  this->joint->GetScopedName(), _vel);
      }

    /// \brief ROS helper function that processes messages
    private: void QueueThread()
      {
          static const double timeout = 0.01;
          while (this->rosNode->ok())
          {
              this->rosQueue.callAvailable(ros::WallDuration(timeout));
          }
      }

    public: void OnUpdate(const common::UpdateInfo & /*_info*/)
    {
      //common::Time current_time = this->model->GetWorld()->GetSimTime();//getting simtime
      // Apply a small linear velocity to the model.
      //this->model->SetLinearVel(math::Vector3(.03, 0, 0));
      //std::string j2name("my_joint");  

      double current_angle = this->joint->GetAngle(0).Radian();
      double current_vel = this->joint->GetVelocity(0);
      //physics::JointWrench wrench1 = this->joint_->GetForceTorque(0);
      //double forcetorque = this->joint_->GetForceTorque(0);
      //double current_forcetorque = this->joint_->GetForce(0); //doesn't work yet. try using GetForce
      std::cerr << "Position"<< current_angle << "\n";
      std::cerr << "Velocity"<< current_vel << "\n";

      //angle=current_angle+PI;



    }

        /// \brief Pointer to the model.
    private: physics::ModelPtr model;

    /// \brief Pointer to the joint.
    private: physics::JointPtr joint;

    /// \brief A PID controller for the joint.
    private: common::PID pid;
    // Pointer to the update event connection
    private: event::ConnectionPtr updateConnection;
      /// \brief A node used for transport
    private: transport::NodePtr node;

      /// \brief A subscriber to a named topic.
    private: transport::SubscriberPtr sub;

      /// \brief A node use for ROS transport
    private: std::unique_ptr<ros::NodeHandle> rosNode;

     /// \brief A ROS subscriber
    private: ros::Subscriber rosSub;

  /// \brief A ROS callbackqueue that helps process messages
    private: ros::CallbackQueue rosQueue;

  /// \brief A thread the keeps running the rosQueue
    private: std::thread rosQueueThread;
  };

  // Tell Gazebo about this plugin, so that Gazebo can call Load on this plugin.
  GZ_REGISTER_MODEL_PLUGIN(FingerPlugin)
}
#endif