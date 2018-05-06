; Auto-generated. Do not edit!


(cl:in-package roboy_communication_cognition-msg)


;//! \htmlinclude SpeechSynthesis.msg.html

(cl:defclass <SpeechSynthesis> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (phoneme
    :reader phoneme
    :initarg :phoneme
    :type cl:string
    :initform "")
   (duration
    :reader duration
    :initarg :duration
    :type cl:integer
    :initform 0))
)

(cl:defclass SpeechSynthesis (<SpeechSynthesis>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpeechSynthesis>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpeechSynthesis)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_cognition-msg:<SpeechSynthesis> is deprecated: use roboy_communication_cognition-msg:SpeechSynthesis instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SpeechSynthesis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-msg:header-val is deprecated.  Use roboy_communication_cognition-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'phoneme-val :lambda-list '(m))
(cl:defmethod phoneme-val ((m <SpeechSynthesis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-msg:phoneme-val is deprecated.  Use roboy_communication_cognition-msg:phoneme instead.")
  (phoneme m))

(cl:ensure-generic-function 'duration-val :lambda-list '(m))
(cl:defmethod duration-val ((m <SpeechSynthesis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-msg:duration-val is deprecated.  Use roboy_communication_cognition-msg:duration instead.")
  (duration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpeechSynthesis>) ostream)
  "Serializes a message object of type '<SpeechSynthesis>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'phoneme))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'phoneme))
  (cl:let* ((signed (cl:slot-value msg 'duration)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpeechSynthesis>) istream)
  "Deserializes a message object of type '<SpeechSynthesis>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'phoneme) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'phoneme) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'duration) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpeechSynthesis>)))
  "Returns string type for a message object of type '<SpeechSynthesis>"
  "roboy_communication_cognition/SpeechSynthesis")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpeechSynthesis)))
  "Returns string type for a message object of type 'SpeechSynthesis"
  "roboy_communication_cognition/SpeechSynthesis")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpeechSynthesis>)))
  "Returns md5sum for a message object of type '<SpeechSynthesis>"
  "7565d6a98b05035d8bd6d3457a620114")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpeechSynthesis)))
  "Returns md5sum for a message object of type 'SpeechSynthesis"
  "7565d6a98b05035d8bd6d3457a620114")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpeechSynthesis>)))
  "Returns full string definition for message of type '<SpeechSynthesis>"
  (cl:format cl:nil "Header header~%string phoneme~%int32 duration~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpeechSynthesis)))
  "Returns full string definition for message of type 'SpeechSynthesis"
  (cl:format cl:nil "Header header~%string phoneme~%int32 duration~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpeechSynthesis>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'phoneme))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpeechSynthesis>))
  "Converts a ROS message object to a list"
  (cl:list 'SpeechSynthesis
    (cl:cons ':header (header msg))
    (cl:cons ':phoneme (phoneme msg))
    (cl:cons ':duration (duration msg))
))
