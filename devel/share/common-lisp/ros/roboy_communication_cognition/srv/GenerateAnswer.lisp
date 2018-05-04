; Auto-generated. Do not edit!


(cl:in-package roboy_communication_cognition-srv)


;//! \htmlinclude GenerateAnswer-request.msg.html

(cl:defclass <GenerateAnswer-request> (roslisp-msg-protocol:ros-message)
  ((text_input
    :reader text_input
    :initarg :text_input
    :type cl:string
    :initform ""))
)

(cl:defclass GenerateAnswer-request (<GenerateAnswer-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GenerateAnswer-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GenerateAnswer-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_cognition-srv:<GenerateAnswer-request> is deprecated: use roboy_communication_cognition-srv:GenerateAnswer-request instead.")))

(cl:ensure-generic-function 'text_input-val :lambda-list '(m))
(cl:defmethod text_input-val ((m <GenerateAnswer-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:text_input-val is deprecated.  Use roboy_communication_cognition-srv:text_input instead.")
  (text_input m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GenerateAnswer-request>) ostream)
  "Serializes a message object of type '<GenerateAnswer-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'text_input))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'text_input))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GenerateAnswer-request>) istream)
  "Deserializes a message object of type '<GenerateAnswer-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'text_input) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'text_input) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GenerateAnswer-request>)))
  "Returns string type for a service object of type '<GenerateAnswer-request>"
  "roboy_communication_cognition/GenerateAnswerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GenerateAnswer-request)))
  "Returns string type for a service object of type 'GenerateAnswer-request"
  "roboy_communication_cognition/GenerateAnswerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GenerateAnswer-request>)))
  "Returns md5sum for a message object of type '<GenerateAnswer-request>"
  "d4741618daf7a94d6af22e9650d416c0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GenerateAnswer-request)))
  "Returns md5sum for a message object of type 'GenerateAnswer-request"
  "d4741618daf7a94d6af22e9650d416c0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GenerateAnswer-request>)))
  "Returns full string definition for message of type '<GenerateAnswer-request>"
  (cl:format cl:nil "string text_input~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GenerateAnswer-request)))
  "Returns full string definition for message of type 'GenerateAnswer-request"
  (cl:format cl:nil "string text_input~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GenerateAnswer-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'text_input))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GenerateAnswer-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GenerateAnswer-request
    (cl:cons ':text_input (text_input msg))
))
;//! \htmlinclude GenerateAnswer-response.msg.html

(cl:defclass <GenerateAnswer-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil)
   (text_output
    :reader text_output
    :initarg :text_output
    :type cl:string
    :initform ""))
)

(cl:defclass GenerateAnswer-response (<GenerateAnswer-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GenerateAnswer-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GenerateAnswer-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_cognition-srv:<GenerateAnswer-response> is deprecated: use roboy_communication_cognition-srv:GenerateAnswer-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <GenerateAnswer-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:result-val is deprecated.  Use roboy_communication_cognition-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'text_output-val :lambda-list '(m))
(cl:defmethod text_output-val ((m <GenerateAnswer-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:text_output-val is deprecated.  Use roboy_communication_cognition-srv:text_output instead.")
  (text_output m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GenerateAnswer-response>) ostream)
  "Serializes a message object of type '<GenerateAnswer-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'text_output))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'text_output))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GenerateAnswer-response>) istream)
  "Deserializes a message object of type '<GenerateAnswer-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'text_output) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'text_output) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GenerateAnswer-response>)))
  "Returns string type for a service object of type '<GenerateAnswer-response>"
  "roboy_communication_cognition/GenerateAnswerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GenerateAnswer-response)))
  "Returns string type for a service object of type 'GenerateAnswer-response"
  "roboy_communication_cognition/GenerateAnswerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GenerateAnswer-response>)))
  "Returns md5sum for a message object of type '<GenerateAnswer-response>"
  "d4741618daf7a94d6af22e9650d416c0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GenerateAnswer-response)))
  "Returns md5sum for a message object of type 'GenerateAnswer-response"
  "d4741618daf7a94d6af22e9650d416c0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GenerateAnswer-response>)))
  "Returns full string definition for message of type '<GenerateAnswer-response>"
  (cl:format cl:nil "bool result~%string text_output~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GenerateAnswer-response)))
  "Returns full string definition for message of type 'GenerateAnswer-response"
  (cl:format cl:nil "bool result~%string text_output~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GenerateAnswer-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'text_output))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GenerateAnswer-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GenerateAnswer-response
    (cl:cons ':result (result msg))
    (cl:cons ':text_output (text_output msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GenerateAnswer)))
  'GenerateAnswer-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GenerateAnswer)))
  'GenerateAnswer-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GenerateAnswer)))
  "Returns string type for a service object of type '<GenerateAnswer>"
  "roboy_communication_cognition/GenerateAnswer")