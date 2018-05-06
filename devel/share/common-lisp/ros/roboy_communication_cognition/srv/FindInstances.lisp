; Auto-generated. Do not edit!


(cl:in-package roboy_communication_cognition-srv)


;//! \htmlinclude FindInstances-request.msg.html

(cl:defclass <FindInstances-request> (roslisp-msg-protocol:ros-message)
  ((property
    :reader property
    :initarg :property
    :type cl:string
    :initform "")
   (value
    :reader value
    :initarg :value
    :type cl:string
    :initform ""))
)

(cl:defclass FindInstances-request (<FindInstances-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FindInstances-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FindInstances-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_cognition-srv:<FindInstances-request> is deprecated: use roboy_communication_cognition-srv:FindInstances-request instead.")))

(cl:ensure-generic-function 'property-val :lambda-list '(m))
(cl:defmethod property-val ((m <FindInstances-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:property-val is deprecated.  Use roboy_communication_cognition-srv:property instead.")
  (property m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <FindInstances-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:value-val is deprecated.  Use roboy_communication_cognition-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FindInstances-request>) ostream)
  "Serializes a message object of type '<FindInstances-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'property))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'property))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'value))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FindInstances-request>) istream)
  "Deserializes a message object of type '<FindInstances-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'property) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'property) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'value) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FindInstances-request>)))
  "Returns string type for a service object of type '<FindInstances-request>"
  "roboy_communication_cognition/FindInstancesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FindInstances-request)))
  "Returns string type for a service object of type 'FindInstances-request"
  "roboy_communication_cognition/FindInstancesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FindInstances-request>)))
  "Returns md5sum for a message object of type '<FindInstances-request>"
  "7a424b6de2ab577e112c2faf018865de")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FindInstances-request)))
  "Returns md5sum for a message object of type 'FindInstances-request"
  "7a424b6de2ab577e112c2faf018865de")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FindInstances-request>)))
  "Returns full string definition for message of type '<FindInstances-request>"
  (cl:format cl:nil "string property~%string value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FindInstances-request)))
  "Returns full string definition for message of type 'FindInstances-request"
  (cl:format cl:nil "string property~%string value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FindInstances-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'property))
     4 (cl:length (cl:slot-value msg 'value))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FindInstances-request>))
  "Converts a ROS message object to a list"
  (cl:list 'FindInstances-request
    (cl:cons ':property (property msg))
    (cl:cons ':value (value msg))
))
;//! \htmlinclude FindInstances-response.msg.html

(cl:defclass <FindInstances-response> (roslisp-msg-protocol:ros-message)
  ((instances
    :reader instances
    :initarg :instances
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass FindInstances-response (<FindInstances-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FindInstances-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FindInstances-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_cognition-srv:<FindInstances-response> is deprecated: use roboy_communication_cognition-srv:FindInstances-response instead.")))

(cl:ensure-generic-function 'instances-val :lambda-list '(m))
(cl:defmethod instances-val ((m <FindInstances-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:instances-val is deprecated.  Use roboy_communication_cognition-srv:instances instead.")
  (instances m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FindInstances-response>) ostream)
  "Serializes a message object of type '<FindInstances-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'instances))))
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
   (cl:slot-value msg 'instances))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FindInstances-response>) istream)
  "Deserializes a message object of type '<FindInstances-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'instances) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'instances)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FindInstances-response>)))
  "Returns string type for a service object of type '<FindInstances-response>"
  "roboy_communication_cognition/FindInstancesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FindInstances-response)))
  "Returns string type for a service object of type 'FindInstances-response"
  "roboy_communication_cognition/FindInstancesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FindInstances-response>)))
  "Returns md5sum for a message object of type '<FindInstances-response>"
  "7a424b6de2ab577e112c2faf018865de")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FindInstances-response)))
  "Returns md5sum for a message object of type 'FindInstances-response"
  "7a424b6de2ab577e112c2faf018865de")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FindInstances-response>)))
  "Returns full string definition for message of type '<FindInstances-response>"
  (cl:format cl:nil "string[] instances~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FindInstances-response)))
  "Returns full string definition for message of type 'FindInstances-response"
  (cl:format cl:nil "string[] instances~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FindInstances-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'instances) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FindInstances-response>))
  "Converts a ROS message object to a list"
  (cl:list 'FindInstances-response
    (cl:cons ':instances (instances msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'FindInstances)))
  'FindInstances-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'FindInstances)))
  'FindInstances-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FindInstances)))
  "Returns string type for a service object of type '<FindInstances>"
  "roboy_communication_cognition/FindInstances")