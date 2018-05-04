; Auto-generated. Do not edit!


(cl:in-package roboy_communication_cognition-msg)


;//! \htmlinclude DirectionVector.msg.html

(cl:defclass <DirectionVector> (roslisp-msg-protocol:ros-message)
  ((azimutal_angle
    :reader azimutal_angle
    :initarg :azimutal_angle
    :type cl:float
    :initform 0.0)
   (polar_angle
    :reader polar_angle
    :initarg :polar_angle
    :type cl:float
    :initform 0.0))
)

(cl:defclass DirectionVector (<DirectionVector>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DirectionVector>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DirectionVector)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_cognition-msg:<DirectionVector> is deprecated: use roboy_communication_cognition-msg:DirectionVector instead.")))

(cl:ensure-generic-function 'azimutal_angle-val :lambda-list '(m))
(cl:defmethod azimutal_angle-val ((m <DirectionVector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-msg:azimutal_angle-val is deprecated.  Use roboy_communication_cognition-msg:azimutal_angle instead.")
  (azimutal_angle m))

(cl:ensure-generic-function 'polar_angle-val :lambda-list '(m))
(cl:defmethod polar_angle-val ((m <DirectionVector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-msg:polar_angle-val is deprecated.  Use roboy_communication_cognition-msg:polar_angle instead.")
  (polar_angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DirectionVector>) ostream)
  "Serializes a message object of type '<DirectionVector>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'azimutal_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'polar_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DirectionVector>) istream)
  "Deserializes a message object of type '<DirectionVector>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'azimutal_angle) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'polar_angle) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DirectionVector>)))
  "Returns string type for a message object of type '<DirectionVector>"
  "roboy_communication_cognition/DirectionVector")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DirectionVector)))
  "Returns string type for a message object of type 'DirectionVector"
  "roboy_communication_cognition/DirectionVector")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DirectionVector>)))
  "Returns md5sum for a message object of type '<DirectionVector>"
  "32f7ac1c3ed95e6c1aa8e7777879079b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DirectionVector)))
  "Returns md5sum for a message object of type 'DirectionVector"
  "32f7ac1c3ed95e6c1aa8e7777879079b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DirectionVector>)))
  "Returns full string definition for message of type '<DirectionVector>"
  (cl:format cl:nil "float64 azimutal_angle~%float64 polar_angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DirectionVector)))
  "Returns full string definition for message of type 'DirectionVector"
  (cl:format cl:nil "float64 azimutal_angle~%float64 polar_angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DirectionVector>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DirectionVector>))
  "Converts a ROS message object to a list"
  (cl:list 'DirectionVector
    (cl:cons ':azimutal_angle (azimutal_angle msg))
    (cl:cons ':polar_angle (polar_angle msg))
))
