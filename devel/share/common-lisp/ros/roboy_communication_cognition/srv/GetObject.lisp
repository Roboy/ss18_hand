; Auto-generated. Do not edit!


(cl:in-package roboy_communication_cognition-srv)


;//! \htmlinclude GetObject-request.msg.html

(cl:defclass <GetObject-request> (roslisp-msg-protocol:ros-message)
  ((properties
    :reader properties
    :initarg :properties
    :type cl:string
    :initform "")
   (values
    :reader values
    :initarg :values
    :type cl:string
    :initform ""))
)

(cl:defclass GetObject-request (<GetObject-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetObject-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetObject-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_cognition-srv:<GetObject-request> is deprecated: use roboy_communication_cognition-srv:GetObject-request instead.")))

(cl:ensure-generic-function 'properties-val :lambda-list '(m))
(cl:defmethod properties-val ((m <GetObject-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:properties-val is deprecated.  Use roboy_communication_cognition-srv:properties instead.")
  (properties m))

(cl:ensure-generic-function 'values-val :lambda-list '(m))
(cl:defmethod values-val ((m <GetObject-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:values-val is deprecated.  Use roboy_communication_cognition-srv:values instead.")
  (values m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetObject-request>) ostream)
  "Serializes a message object of type '<GetObject-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'properties))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'properties))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'values))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'values))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetObject-request>) istream)
  "Deserializes a message object of type '<GetObject-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'properties) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'properties) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'values) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'values) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetObject-request>)))
  "Returns string type for a service object of type '<GetObject-request>"
  "roboy_communication_cognition/GetObjectRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetObject-request)))
  "Returns string type for a service object of type 'GetObject-request"
  "roboy_communication_cognition/GetObjectRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetObject-request>)))
  "Returns md5sum for a message object of type '<GetObject-request>"
  "5371b92e5e40731a7295d51663dd7780")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetObject-request)))
  "Returns md5sum for a message object of type 'GetObject-request"
  "5371b92e5e40731a7295d51663dd7780")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetObject-request>)))
  "Returns full string definition for message of type '<GetObject-request>"
  (cl:format cl:nil "string properties~%string values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetObject-request)))
  "Returns full string definition for message of type 'GetObject-request"
  (cl:format cl:nil "string properties~%string values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetObject-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'properties))
     4 (cl:length (cl:slot-value msg 'values))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetObject-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetObject-request
    (cl:cons ':properties (properties msg))
    (cl:cons ':values (values msg))
))
;//! \htmlinclude GetObject-response.msg.html

(cl:defclass <GetObject-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil)
   (instance
    :reader instance
    :initarg :instance
    :type cl:string
    :initform ""))
)

(cl:defclass GetObject-response (<GetObject-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetObject-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetObject-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_cognition-srv:<GetObject-response> is deprecated: use roboy_communication_cognition-srv:GetObject-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <GetObject-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:result-val is deprecated.  Use roboy_communication_cognition-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'instance-val :lambda-list '(m))
(cl:defmethod instance-val ((m <GetObject-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:instance-val is deprecated.  Use roboy_communication_cognition-srv:instance instead.")
  (instance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetObject-response>) ostream)
  "Serializes a message object of type '<GetObject-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'instance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'instance))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetObject-response>) istream)
  "Deserializes a message object of type '<GetObject-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetObject-response>)))
  "Returns string type for a service object of type '<GetObject-response>"
  "roboy_communication_cognition/GetObjectResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetObject-response)))
  "Returns string type for a service object of type 'GetObject-response"
  "roboy_communication_cognition/GetObjectResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetObject-response>)))
  "Returns md5sum for a message object of type '<GetObject-response>"
  "5371b92e5e40731a7295d51663dd7780")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetObject-response)))
  "Returns md5sum for a message object of type 'GetObject-response"
  "5371b92e5e40731a7295d51663dd7780")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetObject-response>)))
  "Returns full string definition for message of type '<GetObject-response>"
  (cl:format cl:nil "bool result~%string instance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetObject-response)))
  "Returns full string definition for message of type 'GetObject-response"
  (cl:format cl:nil "bool result~%string instance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetObject-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'instance))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetObject-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetObject-response
    (cl:cons ':result (result msg))
    (cl:cons ':instance (instance msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetObject)))
  'GetObject-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetObject)))
  'GetObject-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetObject)))
  "Returns string type for a service object of type '<GetObject>"
  "roboy_communication_cognition/GetObject")