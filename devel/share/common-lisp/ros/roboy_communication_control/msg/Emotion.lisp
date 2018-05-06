; Auto-generated. Do not edit!


(cl:in-package roboy_communication_control-msg)


;//! \htmlinclude Emotion.msg.html

(cl:defclass <Emotion> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (emotion
    :reader emotion
    :initarg :emotion
    :type cl:string
    :initform ""))
)

(cl:defclass Emotion (<Emotion>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Emotion>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Emotion)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_control-msg:<Emotion> is deprecated: use roboy_communication_control-msg:Emotion instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Emotion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_control-msg:header-val is deprecated.  Use roboy_communication_control-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'emotion-val :lambda-list '(m))
(cl:defmethod emotion-val ((m <Emotion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_control-msg:emotion-val is deprecated.  Use roboy_communication_control-msg:emotion instead.")
  (emotion m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Emotion>) ostream)
  "Serializes a message object of type '<Emotion>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'emotion))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'emotion))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Emotion>) istream)
  "Deserializes a message object of type '<Emotion>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'emotion) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'emotion) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Emotion>)))
  "Returns string type for a message object of type '<Emotion>"
  "roboy_communication_control/Emotion")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Emotion)))
  "Returns string type for a message object of type 'Emotion"
  "roboy_communication_control/Emotion")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Emotion>)))
  "Returns md5sum for a message object of type '<Emotion>"
  "6e7cfd6974e5f498c01a06ab2c37c19e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Emotion)))
  "Returns md5sum for a message object of type 'Emotion"
  "6e7cfd6974e5f498c01a06ab2c37c19e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Emotion>)))
  "Returns full string definition for message of type '<Emotion>"
  (cl:format cl:nil "Header header~%string emotion~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Emotion)))
  "Returns full string definition for message of type 'Emotion"
  (cl:format cl:nil "Header header~%string emotion~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Emotion>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'emotion))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Emotion>))
  "Converts a ROS message object to a list"
  (cl:list 'Emotion
    (cl:cons ':header (header msg))
    (cl:cons ':emotion (emotion msg))
))
