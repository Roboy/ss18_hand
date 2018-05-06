; Auto-generated. Do not edit!


(cl:in-package roboy_communication_middleware-srv)


;//! \htmlinclude DanceTrajectory-request.msg.html

(cl:defclass <DanceTrajectory-request> (roslisp-msg-protocol:ros-message)
  ((trajectory_name
    :reader trajectory_name
    :initarg :trajectory_name
    :type cl:string
    :initform ""))
)

(cl:defclass DanceTrajectory-request (<DanceTrajectory-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DanceTrajectory-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DanceTrajectory-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_middleware-srv:<DanceTrajectory-request> is deprecated: use roboy_communication_middleware-srv:DanceTrajectory-request instead.")))

(cl:ensure-generic-function 'trajectory_name-val :lambda-list '(m))
(cl:defmethod trajectory_name-val ((m <DanceTrajectory-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-srv:trajectory_name-val is deprecated.  Use roboy_communication_middleware-srv:trajectory_name instead.")
  (trajectory_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DanceTrajectory-request>) ostream)
  "Serializes a message object of type '<DanceTrajectory-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'trajectory_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'trajectory_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DanceTrajectory-request>) istream)
  "Deserializes a message object of type '<DanceTrajectory-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'trajectory_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'trajectory_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DanceTrajectory-request>)))
  "Returns string type for a service object of type '<DanceTrajectory-request>"
  "roboy_communication_middleware/DanceTrajectoryRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DanceTrajectory-request)))
  "Returns string type for a service object of type 'DanceTrajectory-request"
  "roboy_communication_middleware/DanceTrajectoryRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DanceTrajectory-request>)))
  "Returns md5sum for a message object of type '<DanceTrajectory-request>"
  "c1811518113b89edafd5bab82a308c0b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DanceTrajectory-request)))
  "Returns md5sum for a message object of type 'DanceTrajectory-request"
  "c1811518113b89edafd5bab82a308c0b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DanceTrajectory-request>)))
  "Returns full string definition for message of type '<DanceTrajectory-request>"
  (cl:format cl:nil "string trajectory_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DanceTrajectory-request)))
  "Returns full string definition for message of type 'DanceTrajectory-request"
  (cl:format cl:nil "string trajectory_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DanceTrajectory-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'trajectory_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DanceTrajectory-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DanceTrajectory-request
    (cl:cons ':trajectory_name (trajectory_name msg))
))
;//! \htmlinclude DanceTrajectory-response.msg.html

(cl:defclass <DanceTrajectory-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass DanceTrajectory-response (<DanceTrajectory-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DanceTrajectory-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DanceTrajectory-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_middleware-srv:<DanceTrajectory-response> is deprecated: use roboy_communication_middleware-srv:DanceTrajectory-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DanceTrajectory-response>) ostream)
  "Serializes a message object of type '<DanceTrajectory-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DanceTrajectory-response>) istream)
  "Deserializes a message object of type '<DanceTrajectory-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DanceTrajectory-response>)))
  "Returns string type for a service object of type '<DanceTrajectory-response>"
  "roboy_communication_middleware/DanceTrajectoryResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DanceTrajectory-response)))
  "Returns string type for a service object of type 'DanceTrajectory-response"
  "roboy_communication_middleware/DanceTrajectoryResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DanceTrajectory-response>)))
  "Returns md5sum for a message object of type '<DanceTrajectory-response>"
  "c1811518113b89edafd5bab82a308c0b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DanceTrajectory-response)))
  "Returns md5sum for a message object of type 'DanceTrajectory-response"
  "c1811518113b89edafd5bab82a308c0b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DanceTrajectory-response>)))
  "Returns full string definition for message of type '<DanceTrajectory-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DanceTrajectory-response)))
  "Returns full string definition for message of type 'DanceTrajectory-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DanceTrajectory-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DanceTrajectory-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DanceTrajectory-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DanceTrajectory)))
  'DanceTrajectory-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DanceTrajectory)))
  'DanceTrajectory-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DanceTrajectory)))
  "Returns string type for a service object of type '<DanceTrajectory>"
  "roboy_communication_middleware/DanceTrajectory")