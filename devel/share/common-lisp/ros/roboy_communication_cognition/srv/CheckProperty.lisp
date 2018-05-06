; Auto-generated. Do not edit!


(cl:in-package roboy_communication_cognition-srv)


;//! \htmlinclude CheckProperty-request.msg.html

(cl:defclass <CheckProperty-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass CheckProperty-request (<CheckProperty-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CheckProperty-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CheckProperty-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_cognition-srv:<CheckProperty-request> is deprecated: use roboy_communication_cognition-srv:CheckProperty-request instead.")))

(cl:ensure-generic-function 'object-val :lambda-list '(m))
(cl:defmethod object-val ((m <CheckProperty-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:object-val is deprecated.  Use roboy_communication_cognition-srv:object instead.")
  (object m))

(cl:ensure-generic-function 'property-val :lambda-list '(m))
(cl:defmethod property-val ((m <CheckProperty-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:property-val is deprecated.  Use roboy_communication_cognition-srv:property instead.")
  (property m))

(cl:ensure-generic-function 'instance-val :lambda-list '(m))
(cl:defmethod instance-val ((m <CheckProperty-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:instance-val is deprecated.  Use roboy_communication_cognition-srv:instance instead.")
  (instance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CheckProperty-request>) ostream)
  "Serializes a message object of type '<CheckProperty-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CheckProperty-request>) istream)
  "Deserializes a message object of type '<CheckProperty-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CheckProperty-request>)))
  "Returns string type for a service object of type '<CheckProperty-request>"
  "roboy_communication_cognition/CheckPropertyRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckProperty-request)))
  "Returns string type for a service object of type 'CheckProperty-request"
  "roboy_communication_cognition/CheckPropertyRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CheckProperty-request>)))
  "Returns md5sum for a message object of type '<CheckProperty-request>"
  "096b73ba3a5f0d25198ae92ca0a7239c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CheckProperty-request)))
  "Returns md5sum for a message object of type 'CheckProperty-request"
  "096b73ba3a5f0d25198ae92ca0a7239c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CheckProperty-request>)))
  "Returns full string definition for message of type '<CheckProperty-request>"
  (cl:format cl:nil "string object~%string property~%string instance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CheckProperty-request)))
  "Returns full string definition for message of type 'CheckProperty-request"
  (cl:format cl:nil "string object~%string property~%string instance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CheckProperty-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'object))
     4 (cl:length (cl:slot-value msg 'property))
     4 (cl:length (cl:slot-value msg 'instance))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CheckProperty-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CheckProperty-request
    (cl:cons ':object (object msg))
    (cl:cons ':property (property msg))
    (cl:cons ':instance (instance msg))
))
;//! \htmlinclude CheckProperty-response.msg.html

(cl:defclass <CheckProperty-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CheckProperty-response (<CheckProperty-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CheckProperty-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CheckProperty-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_cognition-srv:<CheckProperty-response> is deprecated: use roboy_communication_cognition-srv:CheckProperty-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <CheckProperty-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:result-val is deprecated.  Use roboy_communication_cognition-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CheckProperty-response>) ostream)
  "Serializes a message object of type '<CheckProperty-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CheckProperty-response>) istream)
  "Deserializes a message object of type '<CheckProperty-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CheckProperty-response>)))
  "Returns string type for a service object of type '<CheckProperty-response>"
  "roboy_communication_cognition/CheckPropertyResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckProperty-response)))
  "Returns string type for a service object of type 'CheckProperty-response"
  "roboy_communication_cognition/CheckPropertyResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CheckProperty-response>)))
  "Returns md5sum for a message object of type '<CheckProperty-response>"
  "096b73ba3a5f0d25198ae92ca0a7239c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CheckProperty-response)))
  "Returns md5sum for a message object of type 'CheckProperty-response"
  "096b73ba3a5f0d25198ae92ca0a7239c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CheckProperty-response>)))
  "Returns full string definition for message of type '<CheckProperty-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CheckProperty-response)))
  "Returns full string definition for message of type 'CheckProperty-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CheckProperty-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CheckProperty-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CheckProperty-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CheckProperty)))
  'CheckProperty-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CheckProperty)))
  'CheckProperty-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckProperty)))
  "Returns string type for a service object of type '<CheckProperty>"
  "roboy_communication_cognition/CheckProperty")