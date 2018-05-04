; Auto-generated. Do not edit!


(cl:in-package roboy_communication_cognition-srv)


;//! \htmlinclude SaveObject-request.msg.html

(cl:defclass <SaveObject-request> (roslisp-msg-protocol:ros-message)
  ((class_name
    :reader class_name
    :initarg :class_name
    :type cl:string
    :initform "")
   (id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (properties
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

(cl:defclass SaveObject-request (<SaveObject-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveObject-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveObject-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_cognition-srv:<SaveObject-request> is deprecated: use roboy_communication_cognition-srv:SaveObject-request instead.")))

(cl:ensure-generic-function 'class_name-val :lambda-list '(m))
(cl:defmethod class_name-val ((m <SaveObject-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:class_name-val is deprecated.  Use roboy_communication_cognition-srv:class_name instead.")
  (class_name m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <SaveObject-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:id-val is deprecated.  Use roboy_communication_cognition-srv:id instead.")
  (id m))

(cl:ensure-generic-function 'properties-val :lambda-list '(m))
(cl:defmethod properties-val ((m <SaveObject-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:properties-val is deprecated.  Use roboy_communication_cognition-srv:properties instead.")
  (properties m))

(cl:ensure-generic-function 'values-val :lambda-list '(m))
(cl:defmethod values-val ((m <SaveObject-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:values-val is deprecated.  Use roboy_communication_cognition-srv:values instead.")
  (values m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveObject-request>) ostream)
  "Serializes a message object of type '<SaveObject-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'class_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'class_name))
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveObject-request>) istream)
  "Deserializes a message object of type '<SaveObject-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'class_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'class_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveObject-request>)))
  "Returns string type for a service object of type '<SaveObject-request>"
  "roboy_communication_cognition/SaveObjectRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveObject-request)))
  "Returns string type for a service object of type 'SaveObject-request"
  "roboy_communication_cognition/SaveObjectRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveObject-request>)))
  "Returns md5sum for a message object of type '<SaveObject-request>"
  "23e9feb02e011a0c456df65916cb0693")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveObject-request)))
  "Returns md5sum for a message object of type 'SaveObject-request"
  "23e9feb02e011a0c456df65916cb0693")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveObject-request>)))
  "Returns full string definition for message of type '<SaveObject-request>"
  (cl:format cl:nil "string class_name~%int32 id~%string properties~%string values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveObject-request)))
  "Returns full string definition for message of type 'SaveObject-request"
  (cl:format cl:nil "string class_name~%int32 id~%string properties~%string values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveObject-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'class_name))
     4
     4 (cl:length (cl:slot-value msg 'properties))
     4 (cl:length (cl:slot-value msg 'values))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveObject-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveObject-request
    (cl:cons ':class_name (class_name msg))
    (cl:cons ':id (id msg))
    (cl:cons ':properties (properties msg))
    (cl:cons ':values (values msg))
))
;//! \htmlinclude SaveObject-response.msg.html

(cl:defclass <SaveObject-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SaveObject-response (<SaveObject-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveObject-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveObject-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_cognition-srv:<SaveObject-response> is deprecated: use roboy_communication_cognition-srv:SaveObject-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SaveObject-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:result-val is deprecated.  Use roboy_communication_cognition-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'instance-val :lambda-list '(m))
(cl:defmethod instance-val ((m <SaveObject-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:instance-val is deprecated.  Use roboy_communication_cognition-srv:instance instead.")
  (instance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveObject-response>) ostream)
  "Serializes a message object of type '<SaveObject-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'instance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'instance))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveObject-response>) istream)
  "Deserializes a message object of type '<SaveObject-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveObject-response>)))
  "Returns string type for a service object of type '<SaveObject-response>"
  "roboy_communication_cognition/SaveObjectResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveObject-response)))
  "Returns string type for a service object of type 'SaveObject-response"
  "roboy_communication_cognition/SaveObjectResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveObject-response>)))
  "Returns md5sum for a message object of type '<SaveObject-response>"
  "23e9feb02e011a0c456df65916cb0693")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveObject-response)))
  "Returns md5sum for a message object of type 'SaveObject-response"
  "23e9feb02e011a0c456df65916cb0693")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveObject-response>)))
  "Returns full string definition for message of type '<SaveObject-response>"
  (cl:format cl:nil "bool result~%string instance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveObject-response)))
  "Returns full string definition for message of type 'SaveObject-response"
  (cl:format cl:nil "bool result~%string instance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveObject-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'instance))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveObject-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveObject-response
    (cl:cons ':result (result msg))
    (cl:cons ':instance (instance msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SaveObject)))
  'SaveObject-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SaveObject)))
  'SaveObject-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveObject)))
  "Returns string type for a service object of type '<SaveObject>"
  "roboy_communication_cognition/SaveObject")