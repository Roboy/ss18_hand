; Auto-generated. Do not edit!


(cl:in-package roboy_communication_cognition-msg)


;//! \htmlinclude AudioInfo.msg.html

(cl:defclass <AudioInfo> (roslisp-msg-protocol:ros-message)
  ((frequency
    :reader frequency
    :initarg :frequency
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (averagePower
    :reader averagePower
    :initarg :averagePower
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass AudioInfo (<AudioInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AudioInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AudioInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_cognition-msg:<AudioInfo> is deprecated: use roboy_communication_cognition-msg:AudioInfo instead.")))

(cl:ensure-generic-function 'frequency-val :lambda-list '(m))
(cl:defmethod frequency-val ((m <AudioInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-msg:frequency-val is deprecated.  Use roboy_communication_cognition-msg:frequency instead.")
  (frequency m))

(cl:ensure-generic-function 'averagePower-val :lambda-list '(m))
(cl:defmethod averagePower-val ((m <AudioInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-msg:averagePower-val is deprecated.  Use roboy_communication_cognition-msg:averagePower instead.")
  (averagePower m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AudioInfo>) ostream)
  "Serializes a message object of type '<AudioInfo>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'frequency))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'frequency))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'averagePower))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'averagePower))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AudioInfo>) istream)
  "Deserializes a message object of type '<AudioInfo>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'frequency) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'frequency)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'averagePower) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'averagePower)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AudioInfo>)))
  "Returns string type for a message object of type '<AudioInfo>"
  "roboy_communication_cognition/AudioInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AudioInfo)))
  "Returns string type for a message object of type 'AudioInfo"
  "roboy_communication_cognition/AudioInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AudioInfo>)))
  "Returns md5sum for a message object of type '<AudioInfo>"
  "72fb2e65555f8e71fd34fc560cf30d5f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AudioInfo)))
  "Returns md5sum for a message object of type 'AudioInfo"
  "72fb2e65555f8e71fd34fc560cf30d5f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AudioInfo>)))
  "Returns full string definition for message of type '<AudioInfo>"
  (cl:format cl:nil "float32[] frequency~%float32[] averagePower~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AudioInfo)))
  "Returns full string definition for message of type 'AudioInfo"
  (cl:format cl:nil "float32[] frequency~%float32[] averagePower~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AudioInfo>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'frequency) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'averagePower) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AudioInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'AudioInfo
    (cl:cons ':frequency (frequency msg))
    (cl:cons ':averagePower (averagePower msg))
))
