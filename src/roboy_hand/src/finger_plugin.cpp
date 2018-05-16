#include "roboy_hand/finger_plugin.hpp"

namespace gazebo {
    /// \brief Constructor
    FingerPlugin::FingerPlugin() {}

    void FingerPlugin::Load(physics::ModelPtr _model, sdf::ElementPtr _sdf) {
        // Just output a message for now
        std::cerr << "\nThe Finger plugin is attach to model[" <<
                  _model->GetName() << "]\n";

        // Safety check
        if (_model->GetJointCount() == 0) {
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

        this->updateConnection = event::Events::ConnectWorldUpdateBegin(
                boost::bind(&FingerPlugin::OnUpdate, this, _1));

        // Initialize ros, if it has not already bee initialized.
        if (!ros::isInitialized()) {
            int argc = 0;
            char **argv = NULL;
            ros::init(argc, argv, "gazebo_client",
                      ros::init_options::NoSigintHandler);
        }

        // Create ros node
        nh = ros::NodeHandlePtr(new ros::NodeHandle("roboy"));
        spinner = boost::shared_ptr<ros::AsyncSpinner>(new ros::AsyncSpinner(1));
        spinner->start();



        // Subscribe to it.
        this->rosSub = this->nh->subscribe("roboy/middleware/FingerCommand", 1, &FingerPlugin::OnRosMsg, this);
        std::cerr << "subscribed to the finger command\n";

    }

    void FingerPlugin::OnRosMsg(const std_msgs::Float32ConstPtr &_msg) {
        this->SetPosition(_msg->data);
    }

    void FingerPlugin::SetPosition(const double &_pos) {
        // Set the joint's target velocity.
        this->model->GetJointController()->SetPositionTarget(
                this->joint->GetScopedName(), _pos);
    }


    void FingerPlugin::OnUpdate(const common::UpdateInfo & /*_info*/) {
        //common::Time current_time = this->model->GetWorld()->GetSimTime();//getting simtime
        // Apply a small linear velocity to the model.
        //this->model->SetLinearVel(math::Vector3(.03, 0, 0));
        //std::string j2name("my_joint");

        double current_angle = this->joint->GetAngle(0).Radian();
        double current_vel = this->joint->GetVelocity(0);
        //physics::JointWrench wrench1 = this->joint_->GetForceTorque(0);
        //double forcetorque = this->joint_->GetForceTorque(0);
        //double current_forcetorque = this->joint_->GetForce(0); //doesn't work yet. try using GetForce
        std::cerr << "Position" << current_angle << "\n";
        std::cerr << "Velocity" << current_vel << "\n";

        //angle=current_angle+PI;
    }

    // Tell Gazebo about this plugin, so that Gazebo can call Load on this plugin.
    GZ_REGISTER_MODEL_PLUGIN(FingerPlugin)
}