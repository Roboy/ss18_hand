; Auto-generated. Do not edit!


(cl:in-package roboy_communication_cognition-srv)


;//! \htmlinclude DataQuery-request.msg.html

(cl:defclass <DataQuery-request> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type cl:string
    :initform "")
   (payload
    :reader payload
    :initarg :payload
    :type cl:string
    :initform ""))
)

(cl:defclass DataQuery-request (<DataQuery-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DataQuery-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DataQuery-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_cognition-srv:<DataQuery-request> is deprecated: use roboy_communication_cognition-srv:DataQuery-request instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DataQuery-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:header-val is deprecated.  Use roboy_communication_cognition-srv:header instead.")
  (header m))

(cl:ensure-generic-function 'payload-val :lambda-list '(m))
(cl:defmethod payload-val ((m <DataQuery-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:payload-val is deprecated.  Use roboy_communication_cognition-srv:payload instead.")
  (payload m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DataQuery-request>) ostream)
  "Serializes a message object of type '<DataQuery-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'header))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'header))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'payload))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'payload))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DataQuery-request>) istream)
  "Deserializes a message object of type '<DataQuery-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'header) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'header) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'payload) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'payload) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DataQuery-request>)))
  "Returns string type for a service object of type '<DataQuery-request>"
  "roboy_communication_cognition/DataQueryRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DataQuery-request)))
  "Returns string type for a service object of type 'DataQuery-request"
  "roboy_communication_cognition/DataQueryRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DataQuery-request>)))
  "Returns md5sum for a message object of type '<DataQuery-request>"
  "069affd70d154d413f85fd5c1967eed6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DataQuery-request)))
  "Returns md5sum for a message object of type 'DataQuery-request"
  "069affd70d154d413f85fd5c1967eed6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DataQuery-request>)))
  "Returns full string definition for message of type '<DataQuery-request>"
  (cl:format cl:nil "string header~%string payload~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DataQuery-request)))
  "Returns full string definition for message of type 'DataQuery-request"
  (cl:format cl:nil "string header~%string payload~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DataQuery-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'payload))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DataQuery-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DataQuery-request
    (cl:cons ':header (header msg))
    (cl:cons ':payload (payload msg))
))
;//! \htmlinclude DataQuery-response.msg.html

(cl:defclass <DataQuery-response> (roslisp-msg-protocol:ros-message)
  ((answer
    :reader answer
    :initarg :answer
    :type cl:string
    :initform ""))
)

(cl:defclass DataQuery-response (<DataQuery-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DataQuery-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DataQuery-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_cognition-srv:<DataQuery-response> is deprecated: use roboy_communication_cognition-srv:DataQuery-response instead.")))

(cl:ensure-generic-function 'answer-val :lambda-list '(m))
(cl:defmethod answer-val ((m <DataQuery-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:answer-val is deprecated.  Use roboy_communication_cognition-srv:answer instead.")
  (answer m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DataQuery-response>) ostream)
  "Serializes a message object of type '<DataQuery-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'answer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'answer))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DataQuery-response>) istream)
  "Deserializes a message object of type '<DataQuery-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'answer) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'answer) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DataQuery-response>)))
  "Returns string type for a service object of type '<DataQuery-response>"
  "roboy_communication_cognition/DataQueryResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DataQuery-response)))
  "Returns string type for a service object of type 'DataQuery-response"
  "roboy_communication_cognition/DataQueryResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DataQuery-response>)))
  "Returns md5sum for a message object of type '<DataQuery-response>"
  "069affd70d154d413f85fd5c1967eed6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DataQuery-response)))
  "Returns md5sum for a message object of type 'DataQuery-response"
  "069affd70d154d413f85fd5c1967eed6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DataQuery-response>)))
  "Returns full string definition for message of type '<DataQuery-response>"
  (cl:format cl:nil "string answer~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DataQuery-response)))
  "Returns full string definition for message of type 'DataQuery-response"
  (cl:format cl:nil "string answer~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DataQuery-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'answer))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DataQuery-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DataQuery-response
    (cl:cons ':answer (answer msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DataQuery)))
  'DataQuery-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DataQuery)))
  'DataQuery-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DataQuery)))
  "Returns string type for a service object of type '<DataQuery>"
  "roboy_communication_cognition/DataQuery")