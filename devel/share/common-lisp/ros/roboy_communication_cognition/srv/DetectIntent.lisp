; Auto-generated. Do not edit!


(cl:in-package roboy_communication_cognition-srv)


;//! \htmlinclude DetectIntent-request.msg.html

(cl:defclass <DetectIntent-request> (roslisp-msg-protocol:ros-message)
  ((sentence
    :reader sentence
    :initarg :sentence
    :type cl:string
    :initform ""))
)

(cl:defclass DetectIntent-request (<DetectIntent-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DetectIntent-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DetectIntent-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_cognition-srv:<DetectIntent-request> is deprecated: use roboy_communication_cognition-srv:DetectIntent-request instead.")))

(cl:ensure-generic-function 'sentence-val :lambda-list '(m))
(cl:defmethod sentence-val ((m <DetectIntent-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:sentence-val is deprecated.  Use roboy_communication_cognition-srv:sentence instead.")
  (sentence m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DetectIntent-request>) ostream)
  "Serializes a message object of type '<DetectIntent-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'sentence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'sentence))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DetectIntent-request>) istream)
  "Deserializes a message object of type '<DetectIntent-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sentence) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'sentence) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DetectIntent-request>)))
  "Returns string type for a service object of type '<DetectIntent-request>"
  "roboy_communication_cognition/DetectIntentRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetectIntent-request)))
  "Returns string type for a service object of type 'DetectIntent-request"
  "roboy_communication_cognition/DetectIntentRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DetectIntent-request>)))
  "Returns md5sum for a message object of type '<DetectIntent-request>"
  "70b4f9547191039dfd285ee1d326f6c8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DetectIntent-request)))
  "Returns md5sum for a message object of type 'DetectIntent-request"
  "70b4f9547191039dfd285ee1d326f6c8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DetectIntent-request>)))
  "Returns full string definition for message of type '<DetectIntent-request>"
  (cl:format cl:nil "string sentence~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DetectIntent-request)))
  "Returns full string definition for message of type 'DetectIntent-request"
  (cl:format cl:nil "string sentence~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DetectIntent-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'sentence))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DetectIntent-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DetectIntent-request
    (cl:cons ':sentence (sentence msg))
))
;//! \htmlinclude DetectIntent-response.msg.html

(cl:defclass <DetectIntent-response> (roslisp-msg-protocol:ros-message)
  ((intent
    :reader intent
    :initarg :intent
    :type cl:string
    :initform "")
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass DetectIntent-response (<DetectIntent-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DetectIntent-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DetectIntent-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_cognition-srv:<DetectIntent-response> is deprecated: use roboy_communication_cognition-srv:DetectIntent-response instead.")))

(cl:ensure-generic-function 'intent-val :lambda-list '(m))
(cl:defmethod intent-val ((m <DetectIntent-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:intent-val is deprecated.  Use roboy_communication_cognition-srv:intent instead.")
  (intent m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <DetectIntent-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:distance-val is deprecated.  Use roboy_communication_cognition-srv:distance instead.")
  (distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DetectIntent-response>) ostream)
  "Serializes a message object of type '<DetectIntent-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'intent))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'intent))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DetectIntent-response>) istream)
  "Deserializes a message object of type '<DetectIntent-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'intent) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'intent) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DetectIntent-response>)))
  "Returns string type for a service object of type '<DetectIntent-response>"
  "roboy_communication_cognition/DetectIntentResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetectIntent-response)))
  "Returns string type for a service object of type 'DetectIntent-response"
  "roboy_communication_cognition/DetectIntentResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DetectIntent-response>)))
  "Returns md5sum for a message object of type '<DetectIntent-response>"
  "70b4f9547191039dfd285ee1d326f6c8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DetectIntent-response)))
  "Returns md5sum for a message object of type 'DetectIntent-response"
  "70b4f9547191039dfd285ee1d326f6c8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DetectIntent-response>)))
  "Returns full string definition for message of type '<DetectIntent-response>"
  (cl:format cl:nil "string intent~%float32 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DetectIntent-response)))
  "Returns full string definition for message of type 'DetectIntent-response"
  (cl:format cl:nil "string intent~%float32 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DetectIntent-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'intent))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DetectIntent-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DetectIntent-response
    (cl:cons ':intent (intent msg))
    (cl:cons ':distance (distance msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DetectIntent)))
  'DetectIntent-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DetectIntent)))
  'DetectIntent-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetectIntent)))
  "Returns string type for a service object of type '<DetectIntent>"
  "roboy_communication_cognition/DetectIntent")