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
        model = _model;

        physics::Model_V models = model->GetWorld()->GetModels();
        for (auto model : models) {
            std::string model_name = model->GetName();
            ROS_INFO_STREAM("Model \"" << model_name << "\" links:");
            physics::Link_V links = model->GetLinks();
            // List all links of the model
            for (auto link : links) {
                std::string link_name = link->GetName();
                ROS_INFO_STREAM("  " << link_name);

                // Modify and list the friction parameters of the link
                physics::Collision_V collisions = link->GetCollisions();
                for (auto collision : collisions) {
                    physics::FrictionPyramidPtr friction = collision->GetSurface()->FrictionPyramid();
                    friction->SetMuPrimary(100);
                    friction->SetMuSecondary(50);
                    friction->SetMuTorsion(10);
                    friction->SetPatchRadius(10);
                    friction->SetUsePatchRadius(true);
                    friction->SetElasticModulus(0.01);
                    //friction->SetPoissonsRatio(5);

                    ROS_INFO_STREAM("    Mu_1:            " << friction->MuPrimary());
                    ROS_INFO_STREAM("    Mu_2:            " << friction->MuSecondary());
                    ROS_INFO_STREAM("    Mu_Torsion:      " << friction->MuTorsion());
                    ROS_INFO_STREAM("    Patch radius:    " << friction->PatchRadius());
                    ROS_INFO_STREAM("    Elastic modulus: " << friction->ElasticModulus());
                    ROS_INFO_STREAM("    Poisson's ratio: " << friction->PoissonsRatio());
                }
            }
        }

        pid = common::PID(0.001, 0, 0.001);
        // get all the joints by name and activate PID controllers
        for(physics::JointPtr j:model->GetJoints() ) {
            joint[j->GetName()] = j;
            model->GetJointController()->SetPositionPID(j->GetScopedName(), pid);
            model->GetJointController()->SetPositionTarget(j->GetScopedName(), 0);
        }

        // Initialize ros, if it has not already bee initialized.
        if (!ros::isInitialized()) {
            int argc = 0;
            char **argv = NULL;
            ros::init(argc, argv, "hand_plugin",
                      ros::init_options::NoSigintHandler);
        }

        // Create ros node
        nh = ros::NodeHandlePtr(new ros::NodeHandle("roboy"));
        spinner = boost::shared_ptr<ros::AsyncSpinner>(new ros::AsyncSpinner(1));
        spinner->start();

        // Subscribe to it.
        rosSub = nh->subscribe("roboy/middleware/FingerCommand", 1, &FingerPlugin::OnRosMsg, this);

        // bind the gazebo update function to OnUpdate
        updateConnection = event::Events::ConnectWorldUpdateBegin(boost::bind(&FingerPlugin::OnUpdate, this, _1));

        ROS_INFO("Finger plugin ready");
    }

    void FingerPlugin::OnRosMsg(const roboy_communication_middleware::FingerCommandConstPtr &msg) {
        ROS_INFO("finger %d, hand %d", msg->finger, msg->id);
        vector<double> radian;
        for(auto degree:msg->angles){
            radian.push_back(degreesToRadians(degree));
        }
        for(int i=0;i<radian.size();i++){
            char joint_name[100];
            sprintf(joint_name,"%s%d",finger_names[msg->finger].c_str(),i);
            model->GetJointController()->SetPositionTarget( joint[joint_name]->GetScopedName(), radian[i]);
        }
    }

    void FingerPlugin::OnUpdate(const common::UpdateInfo & /*_info*/){
        stringstream str;
        str.precision(2);
        str << "-------------------" << endl;
        str << "thumb\t" << joint["thumb0"]->GetAngle(0).Degree() << "\t"
                << joint["thumb1"]->GetAngle(0).Degree() << "\t"
                << joint["thumb2"]->GetAngle(0).Degree() << "\t"
                << joint["thumb3"]->GetAngle(0).Degree() << endl;
        str << "index\t" << joint["index0"]->GetAngle(0).Degree() << "\t"
            << joint["index1"]->GetAngle(0).Degree() << "\t"
            << joint["index2"]->GetAngle(0).Degree() << "\t"
            << joint["index3"]->GetAngle(0).Degree() << endl;
        str << "middle\t" << joint["middle0"]->GetAngle(0).Degree() << "\t"
            << joint["middle0"]->GetAngle(0).Degree() << "\t"
            << joint["middle0"]->GetAngle(0).Degree() << "\t"
            << joint["middle0"]->GetAngle(0).Degree() << endl;
        str << "ring\t" << joint["ring0"]->GetAngle(0).Degree() << "\t"
            << joint["ring1"]->GetAngle(0).Degree() << "\t"
            << joint["ring2"]->GetAngle(0).Degree() << "\t"
            << joint["ring3"]->GetAngle(0).Degree() << endl;
        str << "little\t" << joint["little0"]->GetAngle(0).Degree() << "\t"
            << joint["little1"]->GetAngle(0).Degree() << "\t"
            << joint["little2"]->GetAngle(0).Degree() << "\t"
            << joint["little3"]->GetAngle(0).Degree() << endl;
        ROS_INFO_STREAM_THROTTLE(1,str.str());
    }

    // Tell Gazebo about this plugin, so that Gazebo can call Load on this plugin.
    GZ_REGISTER_MODEL_PLUGIN(FingerPlugin)
}