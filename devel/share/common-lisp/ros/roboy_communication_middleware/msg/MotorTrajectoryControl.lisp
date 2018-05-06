; Auto-generated. Do not edit!


(cl:in-package roboy_communication_middleware-msg)


;//! \htmlinclude MotorTrajectoryControl.msg.html

(cl:defclass <MotorTrajectoryControl> (roslisp-msg-protocol:ros-message)
  ((play
    :reader play
    :initarg :play
    :type cl:boolean
    :initform cl:nil)
   (rewind
    :reader rewind
    :initarg :rewind
    :type cl:boolean
    :initform cl:nil)
   (pause
    :reader pause
    :initarg :pause
    :type cl:boolean
    :initform cl:nil)
   (loop
    :reader loop
    :initarg :loop
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MotorTrajectoryControl (<MotorTrajectoryControl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotorTrajectoryControl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotorTrajectoryControl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_middleware-msg:<MotorTrajectoryControl> is deprecated: use roboy_communication_middleware-msg:MotorTrajectoryControl instead.")))

(cl:ensure-generic-function 'play-val :lambda-list '(m))
(cl:defmethod play-val ((m <MotorTrajectoryControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-msg:play-val is deprecated.  Use roboy_communication_middleware-msg:play instead.")
  (play m))

(cl:ensure-generic-function 'rewind-val :lambda-list '(m))
(cl:defmethod rewind-val ((m <MotorTrajectoryControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-msg:rewind-val is deprecated.  Use roboy_communication_middleware-msg:rewind instead.")
  (rewind m))

(cl:ensure-generic-function 'pause-val :lambda-list '(m))
(cl:defmethod pause-val ((m <MotorTrajectoryControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-msg:pause-val is deprecated.  Use roboy_communication_middleware-msg:pause instead.")
  (pause m))

(cl:ensure-generic-function 'loop-val :lambda-list '(m))
(cl:defmethod loop-val ((m <MotorTrajectoryControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-msg:loop-val is deprecated.  Use roboy_communication_middleware-msg:loop instead.")
  (loop m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotorTrajectoryControl>) ostream)
  "Serializes a message object of type '<MotorTrajectoryControl>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'play) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'rewind) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'pause) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'loop) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotorTrajectoryControl>) istream)
  "Deserializes a message object of type '<MotorTrajectoryControl>"
    (cl:setf (cl:slot-value msg 'play) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'rewind) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'pause) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'loop) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotorTrajectoryControl>)))
  "Returns string type for a message object of type '<MotorTrajectoryControl>"
  "roboy_communication_middleware/MotorTrajectoryControl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorTrajectoryControl)))
  "Returns string type for a message object of type 'MotorTrajectoryControl"
  "roboy_communication_middleware/MotorTrajectoryControl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotorTrajectoryControl>)))
  "Returns md5sum for a message object of type '<MotorTrajectoryControl>"
  "7791d2c1e7fac692a462f6500b596124")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotorTrajectoryControl)))
  "Returns md5sum for a message object of type 'MotorTrajectoryControl"
  "7791d2c1e7fac692a462f6500b596124")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotorTrajectoryControl>)))
  "Returns full string definition for message of type '<MotorTrajectoryControl>"
  (cl:format cl:nil "bool play~%bool rewind~%bool pause~%bool loop~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotorTrajectoryControl)))
  "Returns full string definition for message of type 'MotorTrajectoryControl"
  (cl:format cl:nil "bool play~%bool rewind~%bool pause~%bool loop~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotorTrajectoryControl>))
  (cl:+ 0
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotorTrajectoryControl>))
  "Converts a ROS message object to a list"
  (cl:list 'MotorTrajectoryControl
    (cl:cons ':play (play msg))
    (cl:cons ':rewind (rewind msg))
    (cl:cons ':pause (pause msg))
    (cl:cons ':loop (loop msg))
))
