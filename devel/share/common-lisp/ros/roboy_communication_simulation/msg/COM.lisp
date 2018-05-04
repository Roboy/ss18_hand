; Auto-generated. Do not edit!


(cl:in-package roboy_communication_simulation-msg)


;//! \htmlinclude COM.msg.html

(cl:defclass <COM> (roslisp-msg-protocol:ros-message)
  ((roboyID
    :reader roboyID
    :initarg :roboyID
    :type cl:integer
    :initform 0)
   (Position
    :reader Position
    :initarg :Position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (Velocity
    :reader Velocity
    :initarg :Velocity
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass COM (<COM>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <COM>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'COM)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_simulation-msg:<COM> is deprecated: use roboy_communication_simulation-msg:COM instead.")))

(cl:ensure-generic-function 'roboyID-val :lambda-list '(m))
(cl:defmethod roboyID-val ((m <COM>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_simulation-msg:roboyID-val is deprecated.  Use roboy_communication_simulation-msg:roboyID instead.")
  (roboyID m))

(cl:ensure-generic-function 'Position-val :lambda-list '(m))
(cl:defmethod Position-val ((m <COM>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_simulation-msg:Position-val is deprecated.  Use roboy_communication_simulation-msg:Position instead.")
  (Position m))

(cl:ensure-generic-function 'Velocity-val :lambda-list '(m))
(cl:defmethod Velocity-val ((m <COM>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_simulation-msg:Velocity-val is deprecated.  Use roboy_communication_simulation-msg:Velocity instead.")
  (Velocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <COM>) ostream)
  "Serializes a message object of type '<COM>"
  (cl:let* ((signed (cl:slot-value msg 'roboyID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Velocity) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <COM>) istream)
  "Deserializes a message object of type '<COM>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'roboyID) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Velocity) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<COM>)))
  "Returns string type for a message object of type '<COM>"
  "roboy_communication_simulation/COM")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'COM)))
  "Returns string type for a message object of type 'COM"
  "roboy_communication_simulation/COM")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<COM>)))
  "Returns md5sum for a message object of type '<COM>"
  "3b1b5402540d516eb0a6ed06790735e7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'COM)))
  "Returns md5sum for a message object of type 'COM"
  "3b1b5402540d516eb0a6ed06790735e7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<COM>)))
  "Returns full string definition for message of type '<COM>"
  (cl:format cl:nil "int32 roboyID~%geometry_msgs/Point Position~%geometry_msgs/Point Velocity~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'COM)))
  "Returns full string definition for message of type 'COM"
  (cl:format cl:nil "int32 roboyID~%geometry_msgs/Point Position~%geometry_msgs/Point Velocity~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <COM>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Velocity))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <COM>))
  "Converts a ROS message object to a list"
  (cl:list 'COM
    (cl:cons ':roboyID (roboyID msg))
    (cl:cons ':Position (Position msg))
    (cl:cons ':Velocity (Velocity msg))
))
