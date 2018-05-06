; Auto-generated. Do not edit!


(cl:in-package roboy_communication_cognition-srv)


;//! \htmlinclude AssertProperty-request.msg.html

(cl:defclass <AssertProperty-request> (roslisp-msg-protocol:ros-message)
  ((object
    :reader object
    :initarg :object
    :type cl:string
    :initform "")
   (property
    :reader property
    :initarg :property
    :type cl:string
    :initform "")
   (instance
    :reader instance
    :initarg :instance
    :type cl:string
    :initform ""))
)

(cl:defclass AssertProperty-request (<AssertProperty-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AssertProperty-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AssertProperty-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_cognition-srv:<AssertProperty-request> is deprecated: use roboy_communication_cognition-srv:AssertProperty-request instead.")))

(cl:ensure-generic-function 'object-val :lambda-list '(m))
(cl:defmethod object-val ((m <AssertProperty-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:object-val is deprecated.  Use roboy_communication_cognition-srv:object instead.")
  (object m))

(cl:ensure-generic-function 'property-val :lambda-list '(m))
(cl:defmethod property-val ((m <AssertProperty-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:property-val is deprecated.  Use roboy_communication_cognition-srv:property instead.")
  (property m))

(cl:ensure-generic-function 'instance-val :lambda-list '(m))
(cl:defmethod instance-val ((m <AssertProperty-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:instance-val is deprecated.  Use roboy_communication_cognition-srv:instance instead.")
  (instance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AssertProperty-request>) ostream)
  "Serializes a message object of type '<AssertProperty-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'object))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'object))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'property))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'property))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'instance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'instance))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AssertProperty-request>) istream)
  "Deserializes a message object of type '<AssertProperty-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'object) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'object) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
      (cl:setf (cl:slot-value msg 'instance) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'instance) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AssertProperty-request>)))
  "Returns string type for a service object of type '<AssertProperty-request>"
  "roboy_communication_cognition/AssertPropertyRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AssertProperty-request)))
  "Returns string type for a service object of type 'AssertProperty-request"
  "roboy_communication_cognition/AssertPropertyRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AssertProperty-request>)))
  "Returns md5sum for a message object of type '<AssertProperty-request>"
  "096b73ba3a5f0d25198ae92ca0a7239c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AssertProperty-request)))
  "Returns md5sum for a message object of type 'AssertProperty-request"
  "096b73ba3a5f0d25198ae92ca0a7239c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AssertProperty-request>)))
  "Returns full string definition for message of type '<AssertProperty-request>"
  (cl:format cl:nil "string object~%string property~%string instance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AssertProperty-request)))
  "Returns full string definition for message of type 'AssertProperty-request"
  (cl:format cl:nil "string object~%string property~%string instance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AssertProperty-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'object))
     4 (cl:length (cl:slot-value msg 'property))
     4 (cl:length (cl:slot-value msg 'instance))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AssertProperty-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AssertProperty-request
    (cl:cons ':object (object msg))
    (cl:cons ':property (property msg))
    (cl:cons ':instance (instance msg))
))
;//! \htmlinclude AssertProperty-response.msg.html

(cl:defclass <AssertProperty-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass AssertProperty-response (<AssertProperty-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AssertProperty-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AssertProperty-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_cognition-srv:<AssertProperty-response> is deprecated: use roboy_communication_cognition-srv:AssertProperty-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <AssertProperty-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:result-val is deprecated.  Use roboy_communication_cognition-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AssertProperty-response>) ostream)
  "Serializes a message object of type '<AssertProperty-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AssertProperty-response>) istream)
  "Deserializes a message object of type '<AssertProperty-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AssertProperty-response>)))
  "Returns string type for a service object of type '<AssertProperty-response>"
  "roboy_communication_cognition/AssertPropertyResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AssertProperty-response)))
  "Returns string type for a service object of type 'AssertProperty-response"
  "roboy_communication_cognition/AssertPropertyResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AssertProperty-response>)))
  "Returns md5sum for a message object of type '<AssertProperty-response>"
  "096b73ba3a5f0d25198ae92ca0a7239c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AssertProperty-response)))
  "Returns md5sum for a message object of type 'AssertProperty-response"
  "096b73ba3a5f0d25198ae92ca0a7239c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AssertProperty-response>)))
  "Returns full string definition for message of type '<AssertProperty-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AssertProperty-response)))
  "Returns full string definition for message of type 'AssertProperty-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AssertProperty-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AssertProperty-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AssertProperty-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AssertProperty)))
  'AssertProperty-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AssertProperty)))
  'AssertProperty-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AssertProperty)))
  "Returns string type for a service object of type '<AssertProperty>"
  "roboy_communication_cognition/AssertProperty")