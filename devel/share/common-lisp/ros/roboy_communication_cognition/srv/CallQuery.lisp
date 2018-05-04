; Auto-generated. Do not edit!


(cl:in-package roboy_communication_cognition-srv)


;//! \htmlinclude CallQuery-request.msg.html

(cl:defclass <CallQuery-request> (roslisp-msg-protocol:ros-message)
  ((query
    :reader query
    :initarg :query
    :type cl:string
    :initform ""))
)

(cl:defclass CallQuery-request (<CallQuery-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CallQuery-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CallQuery-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_cognition-srv:<CallQuery-request> is deprecated: use roboy_communication_cognition-srv:CallQuery-request instead.")))

(cl:ensure-generic-function 'query-val :lambda-list '(m))
(cl:defmethod query-val ((m <CallQuery-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:query-val is deprecated.  Use roboy_communication_cognition-srv:query instead.")
  (query m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CallQuery-request>) ostream)
  "Serializes a message object of type '<CallQuery-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'query))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'query))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CallQuery-request>) istream)
  "Deserializes a message object of type '<CallQuery-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'query) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'query) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CallQuery-request>)))
  "Returns string type for a service object of type '<CallQuery-request>"
  "roboy_communication_cognition/CallQueryRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CallQuery-request)))
  "Returns string type for a service object of type 'CallQuery-request"
  "roboy_communication_cognition/CallQueryRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CallQuery-request>)))
  "Returns md5sum for a message object of type '<CallQuery-request>"
  "5404d412a67bedecd70067ff4e66aff8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CallQuery-request)))
  "Returns md5sum for a message object of type 'CallQuery-request"
  "5404d412a67bedecd70067ff4e66aff8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CallQuery-request>)))
  "Returns full string definition for message of type '<CallQuery-request>"
  (cl:format cl:nil "string query~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CallQuery-request)))
  "Returns full string definition for message of type 'CallQuery-request"
  (cl:format cl:nil "string query~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CallQuery-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'query))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CallQuery-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CallQuery-request
    (cl:cons ':query (query msg))
))
;//! \htmlinclude CallQuery-response.msg.html

(cl:defclass <CallQuery-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CallQuery-response (<CallQuery-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CallQuery-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CallQuery-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_cognition-srv:<CallQuery-response> is deprecated: use roboy_communication_cognition-srv:CallQuery-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <CallQuery-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:result-val is deprecated.  Use roboy_communication_cognition-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CallQuery-response>) ostream)
  "Serializes a message object of type '<CallQuery-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CallQuery-response>) istream)
  "Deserializes a message object of type '<CallQuery-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CallQuery-response>)))
  "Returns string type for a service object of type '<CallQuery-response>"
  "roboy_communication_cognition/CallQueryResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CallQuery-response)))
  "Returns string type for a service object of type 'CallQuery-response"
  "roboy_communication_cognition/CallQueryResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CallQuery-response>)))
  "Returns md5sum for a message object of type '<CallQuery-response>"
  "5404d412a67bedecd70067ff4e66aff8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CallQuery-response)))
  "Returns md5sum for a message object of type 'CallQuery-response"
  "5404d412a67bedecd70067ff4e66aff8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CallQuery-response>)))
  "Returns full string definition for message of type '<CallQuery-response>"
  (cl:format cl:nil "bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CallQuery-response)))
  "Returns full string definition for message of type 'CallQuery-response"
  (cl:format cl:nil "bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CallQuery-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CallQuery-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CallQuery-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CallQuery)))
  'CallQuery-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CallQuery)))
  'CallQuery-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CallQuery)))
  "Returns string type for a service object of type '<CallQuery>"
  "roboy_communication_cognition/CallQuery")