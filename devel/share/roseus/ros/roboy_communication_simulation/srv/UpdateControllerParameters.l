;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_simulation::UpdateControllerParameters)
  (if (not (find-package "ROBOY_COMMUNICATION_SIMULATION"))
    (make-package "ROBOY_COMMUNICATION_SIMULATION"))
  (shadow 'UpdateControllerParameters (find-package "ROBOY_COMMUNICATION_SIMULATION")))
(unless (find-package "ROBOY_COMMUNICATION_SIMULATION::UPDATECONTROLLERPARAMETERS")
  (make-package "ROBOY_COMMUNICATION_SIMULATION::UPDATECONTROLLERPARAMETERS"))
(unless (find-package "ROBOY_COMMUNICATION_SIMULATION::UPDATECONTROLLERPARAMETERSREQUEST")
  (make-package "ROBOY_COMMUNICATION_SIMULATION::UPDATECONTROLLERPARAMETERSREQUEST"))
(unless (find-package "ROBOY_COMMUNICATION_SIMULATION::UPDATECONTROLLERPARAMETERSRESPONSE")
  (make-package "ROBOY_COMMUNICATION_SIMULATION::UPDATECONTROLLERPARAMETERSRESPONSE"))

(in-package "ROS")





(defclass roboy_communication_simulation::UpdateControllerParametersRequest
  :super ros::object
  :slots (_params ))

(defmethod roboy_communication_simulation::UpdateControllerParametersRequest
  (:init
   (&key
    ((:params __params) (instance roboy_communication_simulation::ControllerParameters :init))
    )
   (send-super :init)
   (setq _params __params)
   self)
  (:params
   (&rest __params)
   (if (keywordp (car __params))
       (send* _params __params)
     (progn
       (if __params (setq _params (car __params)))
       _params)))
  (:serialization-length
   ()
   (+
    ;; roboy_communication_simulation/ControllerParameters _params
    (send _params :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; roboy_communication_simulation/ControllerParameters _params
       (send _params :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; roboy_communication_simulation/ControllerParameters _params
     (send _params :deserialize buf ptr-) (incf ptr- (send _params :serialization-length))
   ;;
   self)
  )

(defclass roboy_communication_simulation::UpdateControllerParametersResponse
  :super ros::object
  :slots ())

(defmethod roboy_communication_simulation::UpdateControllerParametersResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass roboy_communication_simulation::UpdateControllerParameters
  :super ros::object
  :slots ())

(setf (get roboy_communication_simulation::UpdateControllerParameters :md5sum-) "e4fd67049f61290f75902a321cc68078")
(setf (get roboy_communication_simulation::UpdateControllerParameters :datatype-) "roboy_communication_simulation/UpdateControllerParameters")
(setf (get roboy_communication_simulation::UpdateControllerParameters :request) roboy_communication_simulation::UpdateControllerParametersRequest)
(setf (get roboy_communication_simulation::UpdateControllerParameters :response) roboy_communication_simulation::UpdateControllerParametersResponse)

(defmethod roboy_communication_simulation::UpdateControllerParametersRequest
  (:response () (instance roboy_communication_simulation::UpdateControllerParametersResponse :init)))

(setf (get roboy_communication_simulation::UpdateControllerParametersRequest :md5sum-) "e4fd67049f61290f75902a321cc68078")
(setf (get roboy_communication_simulation::UpdateControllerParametersRequest :datatype-) "roboy_communication_simulation/UpdateControllerParametersRequest")
(setf (get roboy_communication_simulation::UpdateControllerParametersRequest :definition-)
      "roboy_communication_simulation/ControllerParameters params

================================================================================
MSG: roboy_communication_simulation/ControllerParameters
int32 roboyID
float64 F_contact
float64 d_lift
float64 d_prep
float64 F_max
float64 psi_heading
float64 omega_heading
float64 v_forward
float64 v_COM
float64 k_v
float64 k_h
float64[] k_p_theta_left
float64[] k_p_theta_right
float64[] k_d_theta_left
float64[] k_d_theta_right
float64[] k_p_phi
float64[] k_d_phi
float64 k_V
float64 k_P
float64 k_Q
float64 k_omega
float64 k_M_Fplus
float64 c_hip_lift
float64 c_knee_lift
float64 c_stance_lift
float64 c_swing_prep
float64[] theta_groin_0
float64[] phi_groin_0
float64 theta_trunk_0
float64 phi_trunk_0
float64[] theta_knee
float64[] theta_ankle
float64[] d_s
float64[] d_c
float64[] v_s
float64[] v_c
---
")

(setf (get roboy_communication_simulation::UpdateControllerParametersResponse :md5sum-) "e4fd67049f61290f75902a321cc68078")
(setf (get roboy_communication_simulation::UpdateControllerParametersResponse :datatype-) "roboy_communication_simulation/UpdateControllerParametersResponse")
(setf (get roboy_communication_simulation::UpdateControllerParametersResponse :definition-)
      "roboy_communication_simulation/ControllerParameters params

================================================================================
MSG: roboy_communication_simulation/ControllerParameters
int32 roboyID
float64 F_contact
float64 d_lift
float64 d_prep
float64 F_max
float64 psi_heading
float64 omega_heading
float64 v_forward
float64 v_COM
float64 k_v
float64 k_h
float64[] k_p_theta_left
float64[] k_p_theta_right
float64[] k_d_theta_left
float64[] k_d_theta_right
float64[] k_p_phi
float64[] k_d_phi
float64 k_V
float64 k_P
float64 k_Q
float64 k_omega
float64 k_M_Fplus
float64 c_hip_lift
float64 c_knee_lift
float64 c_stance_lift
float64 c_swing_prep
float64[] theta_groin_0
float64[] phi_groin_0
float64 theta_trunk_0
float64 phi_trunk_0
float64[] theta_knee
float64[] theta_ankle
float64[] d_s
float64[] d_c
float64[] v_s
float64[] v_c
---
")



(provide :roboy_communication_simulation/UpdateControllerParameters "e4fd67049f61290f75902a321cc68078")


