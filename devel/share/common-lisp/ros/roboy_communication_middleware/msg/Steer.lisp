; Auto-generated. Do not edit!


(cl:in-package roboy_communication_middleware-msg)


;//! \htmlinclude Steer.msg.html

(cl:defclass <Steer> (roslisp-msg-protocol:ros-message)
  ((steeringCommand
    :reader steeringCommand
    :initarg :steeringCommand
    :type cl:fixnum
    :initform 0)
   (id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0))
)

(cl:defclass Steer (<Steer>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Steer>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Steer)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_middleware-msg:<Steer> is deprecated: use roboy_communication_middleware-msg:Steer instead.")))

(cl:ensure-generic-function 'steeringCommand-val :lambda-list '(m))
(cl:defmethod steeringCommand-val ((m <Steer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-msg:steeringCommand-val is deprecated.  Use roboy_communication_middleware-msg:steeringCommand instead.")
  (steeringCommand m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <Steer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-msg:id-val is deprecated.  Use roboy_communication_middleware-msg:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Steer>) ostream)
  "Serializes a message object of type '<Steer>"
  (cl:let* ((signed (cl:slot-value msg 'steeringCommand)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Steer>) istream)
  "Deserializes a message object of type '<Steer>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'steeringCommand) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Steer>)))
  "Returns string type for a message object of type '<Steer>"
  "roboy_communication_middleware/Steer")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Steer)))
  "Returns string type for a message object of type 'Steer"
  "roboy_communication_middleware/Steer")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Steer>)))
  "Returns md5sum for a message object of type '<Steer>"
  "e06389e481154910390e1eb5098a478e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Steer)))
  "Returns md5sum for a message object of type 'Steer"
  "e06389e481154910390e1eb5098a478e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Steer>)))
  "Returns full string definition for message of type '<Steer>"
  (cl:format cl:nil "# this is the command (START, STOP, REWIND, PAUSE)~%int8 steeringCommand~%# which behaviour id. you might have sent multiple trajectories to the controllers for preprocessing,~%# here you can choose which one should be used)~%int32 id~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Steer)))
  "Returns full string definition for message of type 'Steer"
  (cl:format cl:nil "# this is the command (START, STOP, REWIND, PAUSE)~%int8 steeringCommand~%# which behaviour id. you might have sent multiple trajectories to the controllers for preprocessing,~%# here you can choose which one should be used)~%int32 id~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Steer>))
  (cl:+ 0
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Steer>))
  "Converts a ROS message object to a list"
  (cl:list 'Steer
    (cl:cons ':steeringCommand (steeringCommand msg))
    (cl:cons ':id (id msg))
))
