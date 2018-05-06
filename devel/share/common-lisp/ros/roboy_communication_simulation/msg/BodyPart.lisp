; Auto-generated. Do not edit!


(cl:in-package roboy_communication_simulation-msg)


;//! \htmlinclude BodyPart.msg.html

(cl:defclass <BodyPart> (roslisp-msg-protocol:ros-message)
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
   (position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (mass
    :reader mass
    :initarg :mass
    :type cl:float
    :initform 0.0))
)

(cl:defclass BodyPart (<BodyPart>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BodyPart>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BodyPart)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_simulation-msg:<BodyPart> is deprecated: use roboy_communication_simulation-msg:BodyPart instead.")))

(cl:ensure-generic-function 'roboyID-val :lambda-list '(m))
(cl:defmethod roboyID-val ((m <BodyPart>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_simulation-msg:roboyID-val is deprecated.  Use roboy_communication_simulation-msg:roboyID instead.")
  (roboyID m))

(cl:ensure-generic-function 'link-val :lambda-list '(m))
(cl:defmethod link-val ((m <BodyPart>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_simulation-msg:link-val is deprecated.  Use roboy_communication_simulation-msg:link instead.")
  (link m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <BodyPart>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_simulation-msg:position-val is deprecated.  Use roboy_communication_simulation-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'mass-val :lambda-list '(m))
(cl:defmethod mass-val ((m <BodyPart>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_simulation-msg:mass-val is deprecated.  Use roboy_communication_simulation-msg:mass instead.")
  (mass m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BodyPart>) ostream)
  "Serializes a message object of type '<BodyPart>"
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
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'mass))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BodyPart>) istream)
  "Deserializes a message object of type '<BodyPart>"
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mass) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BodyPart>)))
  "Returns string type for a message object of type '<BodyPart>"
  "roboy_communication_simulation/BodyPart")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BodyPart)))
  "Returns string type for a message object of type 'BodyPart"
  "roboy_communication_simulation/BodyPart")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BodyPart>)))
  "Returns md5sum for a message object of type '<BodyPart>"
  "14fe83f1a9f441f48f9c8b6d55f115aa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BodyPart)))
  "Returns md5sum for a message object of type 'BodyPart"
  "14fe83f1a9f441f48f9c8b6d55f115aa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BodyPart>)))
  "Returns full string definition for message of type '<BodyPart>"
  (cl:format cl:nil "int32 roboyID~%string link~%geometry_msgs/Point position~%float64 mass~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BodyPart)))
  "Returns full string definition for message of type 'BodyPart"
  (cl:format cl:nil "int32 roboyID~%string link~%geometry_msgs/Point position~%float64 mass~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BodyPart>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'link))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BodyPart>))
  "Converts a ROS message object to a list"
  (cl:list 'BodyPart
    (cl:cons ':roboyID (roboyID msg))
    (cl:cons ':link (link msg))
    (cl:cons ':position (position msg))
    (cl:cons ':mass (mass msg))
))
