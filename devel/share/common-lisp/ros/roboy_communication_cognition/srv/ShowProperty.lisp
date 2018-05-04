; Auto-generated. Do not edit!


(cl:in-package roboy_communication_cognition-srv)


;//! \htmlinclude ShowProperty-request.msg.html

(cl:defclass <ShowProperty-request> (roslisp-msg-protocol:ros-message)
  ((object
    :reader object
    :initarg :object
    :type cl:string
    :initform ""))
)

(cl:defclass ShowProperty-request (<ShowProperty-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ShowProperty-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ShowProperty-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_cognition-srv:<ShowProperty-request> is deprecated: use roboy_communication_cognition-srv:ShowProperty-request instead.")))

(cl:ensure-generic-function 'object-val :lambda-list '(m))
(cl:defmethod object-val ((m <ShowProperty-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:object-val is deprecated.  Use roboy_communication_cognition-srv:object instead.")
  (object m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ShowProperty-request>) ostream)
  "Serializes a message object of type '<ShowProperty-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'object))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'object))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ShowProperty-request>) istream)
  "Deserializes a message object of type '<ShowProperty-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'object) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'object) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ShowProperty-request>)))
  "Returns string type for a service object of type '<ShowProperty-request>"
  "roboy_communication_cognition/ShowPropertyRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ShowProperty-request)))
  "Returns string type for a service object of type 'ShowProperty-request"
  "roboy_communication_cognition/ShowPropertyRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ShowProperty-request>)))
  "Returns md5sum for a message object of type '<ShowProperty-request>"
  "dc601e0fdf79ede7c0526ff3f333e5b2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ShowProperty-request)))
  "Returns md5sum for a message object of type 'ShowProperty-request"
  "dc601e0fdf79ede7c0526ff3f333e5b2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ShowProperty-request>)))
  "Returns full string definition for message of type '<ShowProperty-request>"
  (cl:format cl:nil "string object~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ShowProperty-request)))
  "Returns full string definition for message of type 'ShowProperty-request"
  (cl:format cl:nil "string object~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ShowProperty-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'object))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ShowProperty-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ShowProperty-request
    (cl:cons ':object (object msg))
))
;//! \htmlinclude ShowProperty-response.msg.html

(cl:defclass <ShowProperty-response> (roslisp-msg-protocol:ros-message)
  ((property
    :reader property
    :initarg :property
    :type cl:string
    :initform ""))
)

(cl:defclass ShowProperty-response (<ShowProperty-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ShowProperty-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ShowProperty-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_cognition-srv:<ShowProperty-response> is deprecated: use roboy_communication_cognition-srv:ShowProperty-response instead.")))

(cl:ensure-generic-function 'property-val :lambda-list '(m))
(cl:defmethod property-val ((m <ShowProperty-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:property-val is deprecated.  Use roboy_communication_cognition-srv:property instead.")
  (property m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ShowProperty-response>) ostream)
  "Serializes a message object of type '<ShowProperty-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'property))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'property))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ShowProperty-response>) istream)
  "Deserializes a message object of type '<ShowProperty-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'property) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'property) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ShowProperty-response>)))
  "Returns string type for a service object of type '<ShowProperty-response>"
  "roboy_communication_cognition/ShowPropertyResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ShowProperty-response)))
  "Returns string type for a service object of type 'ShowProperty-response"
  "roboy_communication_cognition/ShowPropertyResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ShowProperty-response>)))
  "Returns md5sum for a message object of type '<ShowProperty-response>"
  "dc601e0fdf79ede7c0526ff3f333e5b2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ShowProperty-response)))
  "Returns md5sum for a message object of type 'ShowProperty-response"
  "dc601e0fdf79ede7c0526ff3f333e5b2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ShowProperty-response>)))
  "Returns full string definition for message of type '<ShowProperty-response>"
  (cl:format cl:nil "string property~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ShowProperty-response)))
  "Returns full string definition for message of type 'ShowProperty-response"
  (cl:format cl:nil "string property~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ShowProperty-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'property))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ShowProperty-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ShowProperty-response
    (cl:cons ':property (property msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ShowProperty)))
  'ShowProperty-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ShowProperty)))
  'ShowProperty-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ShowProperty)))
  "Returns string type for a service object of type '<ShowProperty>"
  "roboy_communication_cognition/ShowProperty")