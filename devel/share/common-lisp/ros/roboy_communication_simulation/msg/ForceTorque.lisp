; Auto-generated. Do not edit!


(cl:in-package roboy_communication_simulation-msg)


;//! \htmlinclude ForceTorque.msg.html

(cl:defclass <ForceTorque> (roslisp-msg-protocol:ros-message)
  ((roboyID
    :reader roboyID
    :initarg :roboyID
    :type cl:integer
    :initform 0)
   (leg
    :reader leg
    :initarg :leg
    :type cl:integer
    :initform 0)
   (joint
    :reader joint
    :initarg :joint
    :type cl:string
    :initform "")
   (force
    :reader force
    :initarg :force
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (torque
    :reader torque
    :initarg :torque
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass ForceTorque (<ForceTorque>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ForceTorque>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ForceTorque)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_simulation-msg:<ForceTorque> is deprecated: use roboy_communication_simulation-msg:ForceTorque instead.")))

(cl:ensure-generic-function 'roboyID-val :lambda-list '(m))
(cl:defmethod roboyID-val ((m <ForceTorque>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_simulation-msg:roboyID-val is deprecated.  Use roboy_communication_simulation-msg:roboyID instead.")
  (roboyID m))

(cl:ensure-generic-function 'leg-val :lambda-list '(m))
(cl:defmethod leg-val ((m <ForceTorque>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_simulation-msg:leg-val is deprecated.  Use roboy_communication_simulation-msg:leg instead.")
  (leg m))

(cl:ensure-generic-function 'joint-val :lambda-list '(m))
(cl:defmethod joint-val ((m <ForceTorque>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_simulation-msg:joint-val is deprecated.  Use roboy_communication_simulation-msg:joint instead.")
  (joint m))

(cl:ensure-generic-function 'force-val :lambda-list '(m))
(cl:defmethod force-val ((m <ForceTorque>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_simulation-msg:force-val is deprecated.  Use roboy_communication_simulation-msg:force instead.")
  (force m))

(cl:ensure-generic-function 'torque-val :lambda-list '(m))
(cl:defmethod torque-val ((m <ForceTorque>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_simulation-msg:torque-val is deprecated.  Use roboy_communication_simulation-msg:torque instead.")
  (torque m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ForceTorque>) ostream)
  "Serializes a message object of type '<ForceTorque>"
  (cl:let* ((signed (cl:slot-value msg 'roboyID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'leg)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'joint))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'joint))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'force) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'torque) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ForceTorque>) istream)
  "Deserializes a message object of type '<ForceTorque>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'roboyID) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'leg) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'joint) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'joint) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'force) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'torque) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ForceTorque>)))
  "Returns string type for a message object of type '<ForceTorque>"
  "roboy_communication_simulation/ForceTorque")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ForceTorque)))
  "Returns string type for a message object of type 'ForceTorque"
  "roboy_communication_simulation/ForceTorque")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ForceTorque>)))
  "Returns md5sum for a message object of type '<ForceTorque>"
  "8c24d9d631cda8fce738e80ce9bd535d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ForceTorque)))
  "Returns md5sum for a message object of type 'ForceTorque"
  "8c24d9d631cda8fce738e80ce9bd535d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ForceTorque>)))
  "Returns full string definition for message of type '<ForceTorque>"
  (cl:format cl:nil "int32 roboyID~%int32 leg~%string joint~%geometry_msgs/Point force~%geometry_msgs/Point torque~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ForceTorque)))
  "Returns full string definition for message of type 'ForceTorque"
  (cl:format cl:nil "int32 roboyID~%int32 leg~%string joint~%geometry_msgs/Point force~%geometry_msgs/Point torque~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ForceTorque>))
  (cl:+ 0
     4
     4
     4 (cl:length (cl:slot-value msg 'joint))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'force))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'torque))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ForceTorque>))
  "Converts a ROS message object to a list"
  (cl:list 'ForceTorque
    (cl:cons ':roboyID (roboyID msg))
    (cl:cons ':leg (leg msg))
    (cl:cons ':joint (joint msg))
    (cl:cons ':force (force msg))
    (cl:cons ':torque (torque msg))
))
