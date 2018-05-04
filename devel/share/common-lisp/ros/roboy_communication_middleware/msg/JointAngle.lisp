; Auto-generated. Do not edit!


(cl:in-package roboy_communication_middleware-msg)


;//! \htmlinclude JointAngle.msg.html

(cl:defclass <JointAngle> (roslisp-msg-protocol:ros-message)
  ((angle
    :reader angle
    :initarg :angle
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass JointAngle (<JointAngle>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointAngle>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointAngle)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_middleware-msg:<JointAngle> is deprecated: use roboy_communication_middleware-msg:JointAngle instead.")))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <JointAngle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-msg:angle-val is deprecated.  Use roboy_communication_middleware-msg:angle instead.")
  (angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointAngle>) ostream)
  "Serializes a message object of type '<JointAngle>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'angle))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointAngle>) istream)
  "Deserializes a message object of type '<JointAngle>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'angle) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'angle)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointAngle>)))
  "Returns string type for a message object of type '<JointAngle>"
  "roboy_communication_middleware/JointAngle")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointAngle)))
  "Returns string type for a message object of type 'JointAngle"
  "roboy_communication_middleware/JointAngle")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointAngle>)))
  "Returns md5sum for a message object of type '<JointAngle>"
  "e227be5dbe0ddab6b23e84a527804c51")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointAngle)))
  "Returns md5sum for a message object of type 'JointAngle"
  "e227be5dbe0ddab6b23e84a527804c51")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointAngle>)))
  "Returns full string definition for message of type '<JointAngle>"
  (cl:format cl:nil "float32[] angle~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointAngle)))
  "Returns full string definition for message of type 'JointAngle"
  (cl:format cl:nil "float32[] angle~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointAngle>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'angle) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointAngle>))
  "Converts a ROS message object to a list"
  (cl:list 'JointAngle
    (cl:cons ':angle (angle msg))
))
