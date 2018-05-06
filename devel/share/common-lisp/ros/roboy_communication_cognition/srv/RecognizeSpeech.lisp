; Auto-generated. Do not edit!


(cl:in-package roboy_communication_cognition-srv)


;//! \htmlinclude RecognizeSpeech-request.msg.html

(cl:defclass <RecognizeSpeech-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass RecognizeSpeech-request (<RecognizeSpeech-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RecognizeSpeech-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RecognizeSpeech-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_cognition-srv:<RecognizeSpeech-request> is deprecated: use roboy_communication_cognition-srv:RecognizeSpeech-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RecognizeSpeech-request>) ostream)
  "Serializes a message object of type '<RecognizeSpeech-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RecognizeSpeech-request>) istream)
  "Deserializes a message object of type '<RecognizeSpeech-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RecognizeSpeech-request>)))
  "Returns string type for a service object of type '<RecognizeSpeech-request>"
  "roboy_communication_cognition/RecognizeSpeechRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RecognizeSpeech-request)))
  "Returns string type for a service object of type 'RecognizeSpeech-request"
  "roboy_communication_cognition/RecognizeSpeechRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RecognizeSpeech-request>)))
  "Returns md5sum for a message object of type '<RecognizeSpeech-request>"
  "74697ed3d931f6eede8bf3a8dfeca160")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RecognizeSpeech-request)))
  "Returns md5sum for a message object of type 'RecognizeSpeech-request"
  "74697ed3d931f6eede8bf3a8dfeca160")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RecognizeSpeech-request>)))
  "Returns full string definition for message of type '<RecognizeSpeech-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RecognizeSpeech-request)))
  "Returns full string definition for message of type 'RecognizeSpeech-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RecognizeSpeech-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RecognizeSpeech-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RecognizeSpeech-request
))
;//! \htmlinclude RecognizeSpeech-response.msg.html

(cl:defclass <RecognizeSpeech-response> (roslisp-msg-protocol:ros-message)
  ((text
    :reader text
    :initarg :text
    :type cl:string
    :initform ""))
)

(cl:defclass RecognizeSpeech-response (<RecognizeSpeech-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RecognizeSpeech-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RecognizeSpeech-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_cognition-srv:<RecognizeSpeech-response> is deprecated: use roboy_communication_cognition-srv:RecognizeSpeech-response instead.")))

(cl:ensure-generic-function 'text-val :lambda-list '(m))
(cl:defmethod text-val ((m <RecognizeSpeech-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:text-val is deprecated.  Use roboy_communication_cognition-srv:text instead.")
  (text m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RecognizeSpeech-response>) ostream)
  "Serializes a message object of type '<RecognizeSpeech-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'text))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'text))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RecognizeSpeech-response>) istream)
  "Deserializes a message object of type '<RecognizeSpeech-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'text) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'text) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RecognizeSpeech-response>)))
  "Returns string type for a service object of type '<RecognizeSpeech-response>"
  "roboy_communication_cognition/RecognizeSpeechResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RecognizeSpeech-response)))
  "Returns string type for a service object of type 'RecognizeSpeech-response"
  "roboy_communication_cognition/RecognizeSpeechResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RecognizeSpeech-response>)))
  "Returns md5sum for a message object of type '<RecognizeSpeech-response>"
  "74697ed3d931f6eede8bf3a8dfeca160")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RecognizeSpeech-response)))
  "Returns md5sum for a message object of type 'RecognizeSpeech-response"
  "74697ed3d931f6eede8bf3a8dfeca160")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RecognizeSpeech-response>)))
  "Returns full string definition for message of type '<RecognizeSpeech-response>"
  (cl:format cl:nil "string text~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RecognizeSpeech-response)))
  "Returns full string definition for message of type 'RecognizeSpeech-response"
  (cl:format cl:nil "string text~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RecognizeSpeech-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'text))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RecognizeSpeech-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RecognizeSpeech-response
    (cl:cons ':text (text msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RecognizeSpeech)))
  'RecognizeSpeech-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RecognizeSpeech)))
  'RecognizeSpeech-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RecognizeSpeech)))
  "Returns string type for a service object of type '<RecognizeSpeech>"
  "roboy_communication_cognition/RecognizeSpeech")