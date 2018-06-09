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

        // Get the joints of the finger. It has 3 revolute joints.
        this->joint0 = _model->GetJoints()[0];
        this->joint1 = _model->GetJoints()[1];
        this->joint2 = _model->GetJoints()[2];

        // Setup a PD-controller, with a gain of 0.1.
        this->pid = common::PID(0.1, 0.1, 0);



        // Apply the P-controller to the joint.
        this->model->GetJointController()->SetPositionPID(
                this->joint0->GetScopedName(), this->pid);
        this->model->GetJointController()->SetPositionPID(
                this->joint1->GetScopedName(), this->pid);
        this->model->GetJointController()->SetPositionPID(
                this->joint2->GetScopedName(), this->pid);                        
        // Set the joint's target velocity. This target velocity is just
        // for demonstration purposes.
        //Testing purpose set the first joint to 0.5 radian
        this->model->GetJointController()->SetPositionTarget(
                this->joint0->GetScopedName(), 0.5);

        //Uncomment to print the joint angles to terminal.
        //this->updateConnection = event::Events::ConnectWorldUpdateBegin(
        //        boost::bind(&FingerPlugin::OnUpdate, this, _1));

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
    /*
    void FingerPlugin::OnRosMsg(const std_msgs::Float32ConstPtr &_msg) {
        this->SetPosition(_msg->data);
    }
    */

    void FingerPlugin::OnRosMsg(const roboy_communication_middleware::FingerCommandConstPtr &_msg) {
        std::cerr << "Finger index:" << _msg->finger;
        std::cerr << "\n";
        std::cerr << "Hand index: " << _msg->id;
        std::cerr << "\n";
        double radian_angle0,radian_angle1,radian_angle2;
        //Convert degrees to radian
        radian_angle0 = _msg->angles[0]*0.01745329251;

        radian_angle1 = _msg->angles[1]*0.01745329251;

        radian_angle2 = _msg->angles[2]*0.01745329251;

        std::cerr << "First joint angle: " <<radian_angle0 << "\n";
        std::cerr << "Second joint angle: "<<radian_angle1 << "\n";
        std::cerr << "Third joint angle: " <<radian_angle2 << "\n";
        this->SetPosition(this->joint0, radian_angle0);
        this->SetPosition(this->joint1, radian_angle1);
        this->SetPosition(this->joint2, radian_angle2);


    }
    
    void FingerPlugin::SetPosition(const physics::JointPtr joint,const double &_pos) {
        // Set the joint's target velocity.
        this->model->GetJointController()->SetPositionTarget(
                joint->GetScopedName(), _pos);
    }


    // Tell Gazebo about this plugin, so that Gazebo can call Load on this plugin.
    GZ_REGISTER_MODEL_PLUGIN(FingerPlugin)
}