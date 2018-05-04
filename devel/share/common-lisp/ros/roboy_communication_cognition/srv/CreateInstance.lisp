; Auto-generated. Do not edit!


(cl:in-package roboy_communication_cognition-srv)


;//! \htmlinclude CreateInstance-request.msg.html

(cl:defclass <CreateInstance-request> (roslisp-msg-protocol:ros-message)
  ((object_class
    :reader object_class
    :initarg :object_class
    :type cl:string
    :initform "")
   (id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0))
)

(cl:defclass CreateInstance-request (<CreateInstance-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CreateInstance-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CreateInstance-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_cognition-srv:<CreateInstance-request> is deprecated: use roboy_communication_cognition-srv:CreateInstance-request instead.")))

(cl:ensure-generic-function 'object_class-val :lambda-list '(m))
(cl:defmethod object_class-val ((m <CreateInstance-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:object_class-val is deprecated.  Use roboy_communication_cognition-srv:object_class instead.")
  (object_class m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <CreateInstance-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:id-val is deprecated.  Use roboy_communication_cognition-srv:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CreateInstance-request>) ostream)
  "Serializes a message object of type '<CreateInstance-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'object_class))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'object_class))
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CreateInstance-request>) istream)
  "Deserializes a message object of type '<CreateInstance-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'object_class) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'object_class) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CreateInstance-request>)))
  "Returns string type for a service object of type '<CreateInstance-request>"
  "roboy_communication_cognition/CreateInstanceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CreateInstance-request)))
  "Returns string type for a service object of type 'CreateInstance-request"
  "roboy_communication_cognition/CreateInstanceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CreateInstance-request>)))
  "Returns md5sum for a message object of type '<CreateInstance-request>"
  "257cb06b1a8f1794705928d0364b72b0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CreateInstance-request)))
  "Returns md5sum for a message object of type 'CreateInstance-request"
  "257cb06b1a8f1794705928d0364b72b0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CreateInstance-request>)))
  "Returns full string definition for message of type '<CreateInstance-request>"
  (cl:format cl:nil "string object_class~%int32 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CreateInstance-request)))
  "Returns full string definition for message of type 'CreateInstance-request"
  (cl:format cl:nil "string object_class~%int32 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CreateInstance-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'object_class))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CreateInstance-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CreateInstance-request
    (cl:cons ':object_class (object_class msg))
    (cl:cons ':id (id msg))
))
;//! \htmlinclude CreateInstance-response.msg.html

(cl:defclass <CreateInstance-response> (roslisp-msg-protocol:ros-message)
  ((instance
    :reader instance
    :initarg :instance
    :type cl:string
    :initform ""))
)

(cl:defclass CreateInstance-response (<CreateInstance-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CreateInstance-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CreateInstance-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_cognition-srv:<CreateInstance-response> is deprecated: use roboy_communication_cognition-srv:CreateInstance-response instead.")))

(cl:ensure-generic-function 'instance-val :lambda-list '(m))
(cl:defmethod instance-val ((m <CreateInstance-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:instance-val is deprecated.  Use roboy_communication_cognition-srv:instance instead.")
  (instance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CreateInstance-response>) ostream)
  "Serializes a message object of type '<CreateInstance-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'instance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'instance))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CreateInstance-response>) istream)
  "Deserializes a message object of type '<CreateInstance-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'instance) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'instance) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CreateInstance-response>)))
  "Returns string type for a service object of type '<CreateInstance-response>"
  "roboy_communication_cognition/CreateInstanceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CreateInstance-response)))
  "Returns string type for a service object of type 'CreateInstance-response"
  "roboy_communication_cognition/CreateInstanceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CreateInstance-response>)))
  "Returns md5sum for a message object of type '<CreateInstance-response>"
  "257cb06b1a8f1794705928d0364b72b0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CreateInstance-response)))
  "Returns md5sum for a message object of type 'CreateInstance-response"
  "257cb06b1a8f1794705928d0364b72b0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CreateInstance-response>)))
  "Returns full string definition for message of type '<CreateInstance-response>"
  (cl:format cl:nil "string instance~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CreateInstance-response)))
  "Returns full string definition for message of type 'CreateInstance-response"
  (cl:format cl:nil "string instance~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CreateInstance-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'instance))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CreateInstance-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CreateInstance-response
    (cl:cons ':instance (instance msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CreateInstance)))
  'CreateInstance-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CreateInstance)))
  'CreateInstance-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CreateInstance)))
  "Returns string type for a service object of type '<CreateInstance>"
  "roboy_communication_cognition/CreateInstance")