; Auto-generated. Do not edit!


(cl:in-package roboy_communication_simulation-srv)


;//! \htmlinclude UpdateControllerParameters-request.msg.html

(cl:defclass <UpdateControllerParameters-request> (roslisp-msg-protocol:ros-message)
  ((params
    :reader params
    :initarg :params
    :type roboy_communication_simulation-msg:ControllerParameters
    :initform (cl:make-instance 'roboy_communication_simulation-msg:ControllerParameters)))
)

(cl:defclass UpdateControllerParameters-request (<UpdateControllerParameters-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UpdateControllerParameters-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UpdateControllerParameters-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_simulation-srv:<UpdateControllerParameters-request> is deprecated: use roboy_communication_simulation-srv:UpdateControllerParameters-request instead.")))

(cl:ensure-generic-function 'params-val :lambda-list '(m))
(cl:defmethod params-val ((m <UpdateControllerParameters-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_simulation-srv:params-val is deprecated.  Use roboy_communication_simulation-srv:params instead.")
  (params m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UpdateControllerParameters-request>) ostream)
  "Serializes a message object of type '<UpdateControllerParameters-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'params) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UpdateControllerParameters-request>) istream)
  "Deserializes a message object of type '<UpdateControllerParameters-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'params) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UpdateControllerParameters-request>)))
  "Returns string type for a service object of type '<UpdateControllerParameters-request>"
  "roboy_communication_simulation/UpdateControllerParametersRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateControllerParameters-request)))
  "Returns string type for a service object of type 'UpdateControllerParameters-request"
  "roboy_communication_simulation/UpdateControllerParametersRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UpdateControllerParameters-request>)))
  "Returns md5sum for a message object of type '<UpdateControllerParameters-request>"
  "e4fd67049f61290f75902a321cc68078")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UpdateControllerParameters-request)))
  "Returns md5sum for a message object of type 'UpdateControllerParameters-request"
  "e4fd67049f61290f75902a321cc68078")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UpdateControllerParameters-request>)))
  "Returns full string definition for message of type '<UpdateControllerParameters-request>"
  (cl:format cl:nil "roboy_communication_simulation/ControllerParameters params~%~%================================================================================~%MSG: roboy_communication_simulation/ControllerParameters~%int32 roboyID~%float64 F_contact~%float64 d_lift~%float64 d_prep~%float64 F_max~%float64 psi_heading~%float64 omega_heading~%float64 v_forward~%float64 v_COM~%float64 k_v~%float64 k_h~%float64[] k_p_theta_left~%float64[] k_p_theta_right~%float64[] k_d_theta_left~%float64[] k_d_theta_right~%float64[] k_p_phi~%float64[] k_d_phi~%float64 k_V~%float64 k_P~%float64 k_Q~%float64 k_omega~%float64 k_M_Fplus~%float64 c_hip_lift~%float64 c_knee_lift~%float64 c_stance_lift~%float64 c_swing_prep~%float64[] theta_groin_0~%float64[] phi_groin_0~%float64 theta_trunk_0~%float64 phi_trunk_0~%float64[] theta_knee~%float64[] theta_ankle~%float64[] d_s~%float64[] d_c~%float64[] v_s~%float64[] v_c~%float32 sim_time~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UpdateControllerParameters-request)))
  "Returns full string definition for message of type 'UpdateControllerParameters-request"
  (cl:format cl:nil "roboy_communication_simulation/ControllerParameters params~%~%================================================================================~%MSG: roboy_communication_simulation/ControllerParameters~%int32 roboyID~%float64 F_contact~%float64 d_lift~%float64 d_prep~%float64 F_max~%float64 psi_heading~%float64 omega_heading~%float64 v_forward~%float64 v_COM~%float64 k_v~%float64 k_h~%float64[] k_p_theta_left~%float64[] k_p_theta_right~%float64[] k_d_theta_left~%float64[] k_d_theta_right~%float64[] k_p_phi~%float64[] k_d_phi~%float64 k_V~%float64 k_P~%float64 k_Q~%float64 k_omega~%float64 k_M_Fplus~%float64 c_hip_lift~%float64 c_knee_lift~%float64 c_stance_lift~%float64 c_swing_prep~%float64[] theta_groin_0~%float64[] phi_groin_0~%float64 theta_trunk_0~%float64 phi_trunk_0~%float64[] theta_knee~%float64[] theta_ankle~%float64[] d_s~%float64[] d_c~%float64[] v_s~%float64[] v_c~%float32 sim_time~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UpdateControllerParameters-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'params))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UpdateControllerParameters-request>))
  "Converts a ROS message object to a list"
  (cl:list 'UpdateControllerParameters-request
    (cl:cons ':params (params msg))
))
;//! \htmlinclude UpdateControllerParameters-response.msg.html

(cl:defclass <UpdateControllerParameters-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass UpdateControllerParameters-response (<UpdateControllerParameters-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UpdateControllerParameters-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UpdateControllerParameters-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_simulation-srv:<UpdateControllerParameters-response> is deprecated: use roboy_communication_simulation-srv:UpdateControllerParameters-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UpdateControllerParameters-response>) ostream)
  "Serializes a message object of type '<UpdateControllerParameters-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UpdateControllerParameters-response>) istream)
  "Deserializes a message object of type '<UpdateControllerParameters-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UpdateControllerParameters-response>)))
  "Returns string type for a service object of type '<UpdateControllerParameters-response>"
  "roboy_communication_simulation/UpdateControllerParametersResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateControllerParameters-response)))
  "Returns string type for a service object of type 'UpdateControllerParameters-response"
  "roboy_communication_simulation/UpdateControllerParametersResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UpdateControllerParameters-response>)))
  "Returns md5sum for a message object of type '<UpdateControllerParameters-response>"
  "e4fd67049f61290f75902a321cc68078")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UpdateControllerParameters-response)))
  "Returns md5sum for a message object of type 'UpdateControllerParameters-response"
  "e4fd67049f61290f75902a321cc68078")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UpdateControllerParameters-response>)))
  "Returns full string definition for message of type '<UpdateControllerParameters-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UpdateControllerParameters-response)))
  "Returns full string definition for message of type 'UpdateControllerParameters-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UpdateControllerParameters-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UpdateControllerParameters-response>))
  "Converts a ROS message object to a list"
  (cl:list 'UpdateControllerParameters-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'UpdateControllerParameters)))
  'UpdateControllerParameters-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'UpdateControllerParameters)))
  'UpdateControllerParameters-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateControllerParameters)))
  "Returns string type for a service object of type '<UpdateControllerParameters>"
  "roboy_communication_simulation/UpdateControllerParameters")