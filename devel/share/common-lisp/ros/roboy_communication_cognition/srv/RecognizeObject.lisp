; Auto-generated. Do not edit!


(cl:in-package roboy_communication_cognition-srv)


;//! \htmlinclude RecognizeObject-request.msg.html

(cl:defclass <RecognizeObject-request> (roslisp-msg-protocol:ros-message)
  ((object_id
    :reader object_id
    :initarg :object_id
    :type cl:integer
    :initform 0))
)

(cl:defclass RecognizeObject-request (<RecognizeObject-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RecognizeObject-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RecognizeObject-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_cognition-srv:<RecognizeObject-request> is deprecated: use roboy_communication_cognition-srv:RecognizeObject-request instead.")))

(cl:ensure-generic-function 'object_id-val :lambda-list '(m))
(cl:defmethod object_id-val ((m <RecognizeObject-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:object_id-val is deprecated.  Use roboy_communication_cognition-srv:object_id instead.")
  (object_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RecognizeObject-request>) ostream)
  "Serializes a message object of type '<RecognizeObject-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'object_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'object_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'object_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'object_id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RecognizeObject-request>) istream)
  "Deserializes a message object of type '<RecognizeObject-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'object_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'object_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'object_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'object_id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RecognizeObject-request>)))
  "Returns string type for a service object of type '<RecognizeObject-request>"
  "roboy_communication_cognition/RecognizeObjectRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RecognizeObject-request)))
  "Returns string type for a service object of type 'RecognizeObject-request"
  "roboy_communication_cognition/RecognizeObjectRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RecognizeObject-request>)))
  "Returns md5sum for a message object of type '<RecognizeObject-request>"
  "258a9296e168e47170c83d2bf19a1ae6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RecognizeObject-request)))
  "Returns md5sum for a message object of type 'RecognizeObject-request"
  "258a9296e168e47170c83d2bf19a1ae6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RecognizeObject-request>)))
  "Returns full string definition for message of type '<RecognizeObject-request>"
  (cl:format cl:nil "uint32 object_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RecognizeObject-request)))
  "Returns full string definition for message of type 'RecognizeObject-request"
  (cl:format cl:nil "uint32 object_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RecognizeObject-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RecognizeObject-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RecognizeObject-request
    (cl:cons ':object_id (object_id msg))
))
;//! \htmlinclude RecognizeObject-response.msg.html

(cl:defclass <RecognizeObject-response> (roslisp-msg-protocol:ros-message)
  ((object_name
    :reader object_name
    :initarg :object_name
    :type cl:string
    :initform ""))
)

(cl:defclass RecognizeObject-response (<RecognizeObject-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RecognizeObject-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RecognizeObject-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_cognition-srv:<RecognizeObject-response> is deprecated: use roboy_communication_cognition-srv:RecognizeObject-response instead.")))

(cl:ensure-generic-function 'object_name-val :lambda-list '(m))
(cl:defmethod object_name-val ((m <RecognizeObject-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:object_name-val is deprecated.  Use roboy_communication_cognition-srv:object_name instead.")
  (object_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RecognizeObject-response>) ostream)
  "Serializes a message object of type '<RecognizeObject-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'object_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'object_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RecognizeObject-response>) istream)
  "Deserializes a message object of type '<RecognizeObject-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'object_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'object_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RecognizeObject-response>)))
  "Returns string type for a service object of type '<RecognizeObject-response>"
  "roboy_communication_cognition/RecognizeObjectResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RecognizeObject-response)))
  "Returns string type for a service object of type 'RecognizeObject-response"
  "roboy_communication_cognition/RecognizeObjectResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RecognizeObject-response>)))
  "Returns md5sum for a message object of type '<RecognizeObject-response>"
  "258a9296e168e47170c83d2bf19a1ae6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RecognizeObject-response)))
  "Returns md5sum for a message object of type 'RecognizeObject-response"
  "258a9296e168e47170c83d2bf19a1ae6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RecognizeObject-response>)))
  "Returns full string definition for message of type '<RecognizeObject-response>"
  (cl:format cl:nil "string object_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RecognizeObject-response)))
  "Returns full string definition for message of type 'RecognizeObject-response"
  (cl:format cl:nil "string object_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RecognizeObject-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'object_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RecognizeObject-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RecognizeObject-response
    (cl:cons ':object_name (object_name msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RecognizeObject)))
  'RecognizeObject-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RecognizeObject)))
  'RecognizeObject-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RecognizeObject)))
  "Returns string type for a service object of type '<RecognizeObject>"
  "roboy_communication_cognition/RecognizeObject")