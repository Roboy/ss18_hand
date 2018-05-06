; Auto-generated. Do not edit!


(cl:in-package roboy_communication_middleware-srv)


;//! \htmlinclude SetTrajectory-request.msg.html

(cl:defclass <SetTrajectory-request> (roslisp-msg-protocol:ros-message)
  ((trajectory
    :reader trajectory
    :initarg :trajectory
    :type roboy_communication_middleware-msg:Trajectory
    :initform (cl:make-instance 'roboy_communication_middleware-msg:Trajectory)))
)

(cl:defclass SetTrajectory-request (<SetTrajectory-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetTrajectory-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetTrajectory-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_middleware-srv:<SetTrajectory-request> is deprecated: use roboy_communication_middleware-srv:SetTrajectory-request instead.")))

(cl:ensure-generic-function 'trajectory-val :lambda-list '(m))
(cl:defmethod trajectory-val ((m <SetTrajectory-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-srv:trajectory-val is deprecated.  Use roboy_communication_middleware-srv:trajectory instead.")
  (trajectory m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetTrajectory-request>) ostream)
  "Serializes a message object of type '<SetTrajectory-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'trajectory) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetTrajectory-request>) istream)
  "Deserializes a message object of type '<SetTrajectory-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'trajectory) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetTrajectory-request>)))
  "Returns string type for a service object of type '<SetTrajectory-request>"
  "roboy_communication_middleware/SetTrajectoryRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTrajectory-request)))
  "Returns string type for a service object of type 'SetTrajectory-request"
  "roboy_communication_middleware/SetTrajectoryRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetTrajectory-request>)))
  "Returns md5sum for a message object of type '<SetTrajectory-request>"
  "eaf3f910b01afc97910e678067741a78")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetTrajectory-request)))
  "Returns md5sum for a message object of type 'SetTrajectory-request"
  "eaf3f910b01afc97910e678067741a78")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetTrajectory-request>)))
  "Returns full string definition for message of type '<SetTrajectory-request>"
  (cl:format cl:nil "Trajectory trajectory~%~%================================================================================~%MSG: roboy_communication_middleware/Trajectory~%uint32 id~%float32 samplerate~%float32[] waypoints~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetTrajectory-request)))
  "Returns full string definition for message of type 'SetTrajectory-request"
  (cl:format cl:nil "Trajectory trajectory~%~%================================================================================~%MSG: roboy_communication_middleware/Trajectory~%uint32 id~%float32 samplerate~%float32[] waypoints~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetTrajectory-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'trajectory))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetTrajectory-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetTrajectory-request
    (cl:cons ':trajectory (trajectory msg))
))
;//! \htmlinclude SetTrajectory-response.msg.html

(cl:defclass <SetTrajectory-response> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetTrajectory-response (<SetTrajectory-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetTrajectory-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetTrajectory-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_middleware-srv:<SetTrajectory-response> is deprecated: use roboy_communication_middleware-srv:SetTrajectory-response instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <SetTrajectory-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-srv:state-val is deprecated.  Use roboy_communication_middleware-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetTrajectory-response>) ostream)
  "Serializes a message object of type '<SetTrajectory-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetTrajectory-response>) istream)
  "Deserializes a message object of type '<SetTrajectory-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetTrajectory-response>)))
  "Returns string type for a service object of type '<SetTrajectory-response>"
  "roboy_communication_middleware/SetTrajectoryResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTrajectory-response)))
  "Returns string type for a service object of type 'SetTrajectory-response"
  "roboy_communication_middleware/SetTrajectoryResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetTrajectory-response>)))
  "Returns md5sum for a message object of type '<SetTrajectory-response>"
  "eaf3f910b01afc97910e678067741a78")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetTrajectory-response)))
  "Returns md5sum for a message object of type 'SetTrajectory-response"
  "eaf3f910b01afc97910e678067741a78")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetTrajectory-response>)))
  "Returns full string definition for message of type '<SetTrajectory-response>"
  (cl:format cl:nil "uint8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetTrajectory-response)))
  "Returns full string definition for message of type 'SetTrajectory-response"
  (cl:format cl:nil "uint8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetTrajectory-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetTrajectory-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetTrajectory-response
    (cl:cons ':state (state msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetTrajectory)))
  'SetTrajectory-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetTrajectory)))
  'SetTrajectory-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTrajectory)))
  "Returns string type for a service object of type '<SetTrajectory>"
  "roboy_communication_middleware/SetTrajectory")