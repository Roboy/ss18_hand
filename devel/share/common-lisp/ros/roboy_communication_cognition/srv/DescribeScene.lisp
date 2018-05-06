; Auto-generated. Do not edit!


(cl:in-package roboy_communication_cognition-srv)


;//! \htmlinclude DescribeScene-request.msg.html

(cl:defclass <DescribeScene-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass DescribeScene-request (<DescribeScene-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DescribeScene-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DescribeScene-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_cognition-srv:<DescribeScene-request> is deprecated: use roboy_communication_cognition-srv:DescribeScene-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DescribeScene-request>) ostream)
  "Serializes a message object of type '<DescribeScene-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DescribeScene-request>) istream)
  "Deserializes a message object of type '<DescribeScene-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DescribeScene-request>)))
  "Returns string type for a service object of type '<DescribeScene-request>"
  "roboy_communication_cognition/DescribeSceneRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DescribeScene-request)))
  "Returns string type for a service object of type 'DescribeScene-request"
  "roboy_communication_cognition/DescribeSceneRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DescribeScene-request>)))
  "Returns md5sum for a message object of type '<DescribeScene-request>"
  "7f86144326f6014074f85b3e9d900ff5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DescribeScene-request)))
  "Returns md5sum for a message object of type 'DescribeScene-request"
  "7f86144326f6014074f85b3e9d900ff5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DescribeScene-request>)))
  "Returns full string definition for message of type '<DescribeScene-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DescribeScene-request)))
  "Returns full string definition for message of type 'DescribeScene-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DescribeScene-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DescribeScene-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DescribeScene-request
))
;//! \htmlinclude DescribeScene-response.msg.html

(cl:defclass <DescribeScene-response> (roslisp-msg-protocol:ros-message)
  ((objects_detected
    :reader objects_detected
    :initarg :objects_detected
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass DescribeScene-response (<DescribeScene-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DescribeScene-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DescribeScene-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_cognition-srv:<DescribeScene-response> is deprecated: use roboy_communication_cognition-srv:DescribeScene-response instead.")))

(cl:ensure-generic-function 'objects_detected-val :lambda-list '(m))
(cl:defmethod objects_detected-val ((m <DescribeScene-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:objects_detected-val is deprecated.  Use roboy_communication_cognition-srv:objects_detected instead.")
  (objects_detected m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DescribeScene-response>) ostream)
  "Serializes a message object of type '<DescribeScene-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'objects_detected))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'objects_detected))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DescribeScene-response>) istream)
  "Deserializes a message object of type '<DescribeScene-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'objects_detected) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'objects_detected)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DescribeScene-response>)))
  "Returns string type for a service object of type '<DescribeScene-response>"
  "roboy_communication_cognition/DescribeSceneResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DescribeScene-response)))
  "Returns string type for a service object of type 'DescribeScene-response"
  "roboy_communication_cognition/DescribeSceneResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DescribeScene-response>)))
  "Returns md5sum for a message object of type '<DescribeScene-response>"
  "7f86144326f6014074f85b3e9d900ff5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DescribeScene-response)))
  "Returns md5sum for a message object of type 'DescribeScene-response"
  "7f86144326f6014074f85b3e9d900ff5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DescribeScene-response>)))
  "Returns full string definition for message of type '<DescribeScene-response>"
  (cl:format cl:nil "~%string[] objects_detected~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DescribeScene-response)))
  "Returns full string definition for message of type 'DescribeScene-response"
  (cl:format cl:nil "~%string[] objects_detected~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DescribeScene-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'objects_detected) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DescribeScene-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DescribeScene-response
    (cl:cons ':objects_detected (objects_detected msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DescribeScene)))
  'DescribeScene-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DescribeScene)))
  'DescribeScene-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DescribeScene)))
  "Returns string type for a service object of type '<DescribeScene>"
  "roboy_communication_cognition/DescribeScene")