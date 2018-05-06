; Auto-generated. Do not edit!


(cl:in-package roboy_communication_simulation-msg)


;//! \htmlinclude IMU.msg.html

(cl:defclass <IMU> (roslisp-msg-protocol:ros-message)
  ((roboyID
    :reader roboyID
    :initarg :roboyID
    :type cl:integer
    :initform 0)
   (link
    :reader link
    :initarg :link
    :type cl:string
    :initform "")
   (lin_accel_world
    :reader lin_accel_world
    :initarg :lin_accel_world
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (ang_vel_world
    :reader ang_vel_world
    :initarg :ang_vel_world
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass IMU (<IMU>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IMU>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IMU)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_simulation-msg:<IMU> is deprecated: use roboy_communication_simulation-msg:IMU instead.")))

(cl:ensure-generic-function 'roboyID-val :lambda-list '(m))
(cl:defmethod roboyID-val ((m <IMU>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_simulation-msg:roboyID-val is deprecated.  Use roboy_communication_simulation-msg:roboyID instead.")
  (roboyID m))

(cl:ensure-generic-function 'link-val :lambda-list '(m))
(cl:defmethod link-val ((m <IMU>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_simulation-msg:link-val is deprecated.  Use roboy_communication_simulation-msg:link instead.")
  (link m))

(cl:ensure-generic-function 'lin_accel_world-val :lambda-list '(m))
(cl:defmethod lin_accel_world-val ((m <IMU>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_simulation-msg:lin_accel_world-val is deprecated.  Use roboy_communication_simulation-msg:lin_accel_world instead.")
  (lin_accel_world m))

(cl:ensure-generic-function 'ang_vel_world-val :lambda-list '(m))
(cl:defmethod ang_vel_world-val ((m <IMU>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_simulation-msg:ang_vel_world-val is deprecated.  Use roboy_communication_simulation-msg:ang_vel_world instead.")
  (ang_vel_world m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IMU>) ostream)
  "Serializes a message object of type '<IMU>"
  (cl:let* ((signed (cl:slot-value msg 'roboyID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'link))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'link))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lin_accel_world) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ang_vel_world) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IMU>) istream)
  "Deserializes a message object of type '<IMU>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'roboyID) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'link) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'link) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lin_accel_world) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ang_vel_world) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IMU>)))
  "Returns string type for a message object of type '<IMU>"
  "roboy_communication_simulation/IMU")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IMU)))
  "Returns string type for a message object of type 'IMU"
  "roboy_communication_simulation/IMU")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IMU>)))
  "Returns md5sum for a message object of type '<IMU>"
  "22dc800153ea9dacdafa02e56ca68a77")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IMU)))
  "Returns md5sum for a message object of type 'IMU"
  "22dc800153ea9dacdafa02e56ca68a77")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IMU>)))
  "Returns full string definition for message of type '<IMU>"
  (cl:format cl:nil "int32 roboyID~%string link~%geometry_msgs/Point lin_accel_world~%geometry_msgs/Point ang_vel_world~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IMU)))
  "Returns full string definition for message of type 'IMU"
  (cl:format cl:nil "int32 roboyID~%string link~%geometry_msgs/Point lin_accel_world~%geometry_msgs/Point ang_vel_world~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IMU>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'link))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lin_accel_world))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ang_vel_world))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IMU>))
  "Converts a ROS message object to a list"
  (cl:list 'IMU
    (cl:cons ':roboyID (roboyID msg))
    (cl:cons ':link (link msg))
    (cl:cons ':lin_accel_world (lin_accel_world msg))
    (cl:cons ':ang_vel_world (ang_vel_world msg))
))
