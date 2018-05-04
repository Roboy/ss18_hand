; Auto-generated. Do not edit!


(cl:in-package roboy_communication_cognition-srv)


;//! \htmlinclude Talk-request.msg.html

(cl:defclass <Talk-request> (roslisp-msg-protocol:ros-message)
  ((text
    :reader text
    :initarg :text
    :type cl:string
    :initform ""))
)

(cl:defclass Talk-request (<Talk-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Talk-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Talk-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_cognition-srv:<Talk-request> is deprecated: use roboy_communication_cognition-srv:Talk-request instead.")))

(cl:ensure-generic-function 'text-val :lambda-list '(m))
(cl:defmethod text-val ((m <Talk-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:text-val is deprecated.  Use roboy_communication_cognition-srv:text instead.")
  (text m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Talk-request>) ostream)
  "Serializes a message object of type '<Talk-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'text))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'text))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Talk-request>) istream)
  "Deserializes a message object of type '<Talk-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Talk-request>)))
  "Returns string type for a service object of type '<Talk-request>"
  "roboy_communication_cognition/TalkRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Talk-request)))
  "Returns string type for a service object of type 'Talk-request"
  "roboy_communication_cognition/TalkRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Talk-request>)))
  "Returns md5sum for a message object of type '<Talk-request>"
  "6ca61db74fc49874aa02b7ab6bcb76f8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Talk-request)))
  "Returns md5sum for a message object of type 'Talk-request"
  "6ca61db74fc49874aa02b7ab6bcb76f8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Talk-request>)))
  "Returns full string definition for message of type '<Talk-request>"
  (cl:format cl:nil "string text~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Talk-request)))
  "Returns full string definition for message of type 'Talk-request"
  (cl:format cl:nil "string text~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Talk-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'text))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Talk-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Talk-request
    (cl:cons ':text (text msg))
))
;//! \htmlinclude Talk-response.msg.html

(cl:defclass <Talk-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Talk-response (<Talk-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Talk-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Talk-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_cognition-srv:<Talk-response> is deprecated: use roboy_communication_cognition-srv:Talk-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Talk-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:success-val is deprecated.  Use roboy_communication_cognition-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Talk-response>) ostream)
  "Serializes a message object of type '<Talk-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Talk-response>) istream)
  "Deserializes a message object of type '<Talk-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Talk-response>)))
  "Returns string type for a service object of type '<Talk-response>"
  "roboy_communication_cognition/TalkResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Talk-response)))
  "Returns string type for a service object of type 'Talk-response"
  "roboy_communication_cognition/TalkResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Talk-response>)))
  "Returns md5sum for a message object of type '<Talk-response>"
  "6ca61db74fc49874aa02b7ab6bcb76f8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Talk-response)))
  "Returns md5sum for a message object of type 'Talk-response"
  "6ca61db74fc49874aa02b7ab6bcb76f8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Talk-response>)))
  "Returns full string definition for message of type '<Talk-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Talk-response)))
  "Returns full string definition for message of type 'Talk-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Talk-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Talk-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Talk-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Talk)))
  'Talk-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Talk)))
  'Talk-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Talk)))
  "Returns string type for a service object of type '<Talk>"
  "roboy_communication_cognition/Talk")