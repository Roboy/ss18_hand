; Auto-generated. Do not edit!


(cl:in-package roboy_communication_cognition-srv)


;//! \htmlinclude ShowPropertyValue-request.msg.html

(cl:defclass <ShowPropertyValue-request> (roslisp-msg-protocol:ros-message)
  ((object
    :reader object
    :initarg :object
    :type cl:string
    :initform "")
   (property
    :reader property
    :initarg :property
    :type cl:string
    :initform ""))
)

(cl:defclass ShowPropertyValue-request (<ShowPropertyValue-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ShowPropertyValue-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ShowPropertyValue-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_cognition-srv:<ShowPropertyValue-request> is deprecated: use roboy_communication_cognition-srv:ShowPropertyValue-request instead.")))

(cl:ensure-generic-function 'object-val :lambda-list '(m))
(cl:defmethod object-val ((m <ShowPropertyValue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:object-val is deprecated.  Use roboy_communication_cognition-srv:object instead.")
  (object m))

(cl:ensure-generic-function 'property-val :lambda-list '(m))
(cl:defmethod property-val ((m <ShowPropertyValue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:property-val is deprecated.  Use roboy_communication_cognition-srv:property instead.")
  (property m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ShowPropertyValue-request>) ostream)
  "Serializes a message object of type '<ShowPropertyValue-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'object))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'object))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'property))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'property))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ShowPropertyValue-request>) istream)
  "Deserializes a message object of type '<ShowPropertyValue-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'object) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'object) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ShowPropertyValue-request>)))
  "Returns string type for a service object of type '<ShowPropertyValue-request>"
  "roboy_communication_cognition/ShowPropertyValueRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ShowPropertyValue-request)))
  "Returns string type for a service object of type 'ShowPropertyValue-request"
  "roboy_communication_cognition/ShowPropertyValueRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ShowPropertyValue-request>)))
  "Returns md5sum for a message object of type '<ShowPropertyValue-request>"
  "0ae81f3cbcb98e037939a885f700a981")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ShowPropertyValue-request)))
  "Returns md5sum for a message object of type 'ShowPropertyValue-request"
  "0ae81f3cbcb98e037939a885f700a981")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ShowPropertyValue-request>)))
  "Returns full string definition for message of type '<ShowPropertyValue-request>"
  (cl:format cl:nil "string object~%string property~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ShowPropertyValue-request)))
  "Returns full string definition for message of type 'ShowPropertyValue-request"
  (cl:format cl:nil "string object~%string property~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ShowPropertyValue-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'object))
     4 (cl:length (cl:slot-value msg 'property))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ShowPropertyValue-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ShowPropertyValue-request
    (cl:cons ':object (object msg))
    (cl:cons ':property (property msg))
))
;//! \htmlinclude ShowPropertyValue-response.msg.html

(cl:defclass <ShowPropertyValue-response> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass ShowPropertyValue-response (<ShowPropertyValue-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ShowPropertyValue-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ShowPropertyValue-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_cognition-srv:<ShowPropertyValue-response> is deprecated: use roboy_communication_cognition-srv:ShowPropertyValue-response instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <ShowPropertyValue-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:value-val is deprecated.  Use roboy_communication_cognition-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ShowPropertyValue-response>) ostream)
  "Serializes a message object of type '<ShowPropertyValue-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'value))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ShowPropertyValue-response>) istream)
  "Deserializes a message object of type '<ShowPropertyValue-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'value) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'value)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ShowPropertyValue-response>)))
  "Returns string type for a service object of type '<ShowPropertyValue-response>"
  "roboy_communication_cognition/ShowPropertyValueResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ShowPropertyValue-response)))
  "Returns string type for a service object of type 'ShowPropertyValue-response"
  "roboy_communication_cognition/ShowPropertyValueResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ShowPropertyValue-response>)))
  "Returns md5sum for a message object of type '<ShowPropertyValue-response>"
  "0ae81f3cbcb98e037939a885f700a981")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ShowPropertyValue-response)))
  "Returns md5sum for a message object of type 'ShowPropertyValue-response"
  "0ae81f3cbcb98e037939a885f700a981")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ShowPropertyValue-response>)))
  "Returns full string definition for message of type '<ShowPropertyValue-response>"
  (cl:format cl:nil "string[] value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ShowPropertyValue-response)))
  "Returns full string definition for message of type 'ShowPropertyValue-response"
  (cl:format cl:nil "string[] value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ShowPropertyValue-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'value) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ShowPropertyValue-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ShowPropertyValue-response
    (cl:cons ':value (value msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ShowPropertyValue)))
  'ShowPropertyValue-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ShowPropertyValue)))
  'ShowPropertyValue-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ShowPropertyValue)))
  "Returns string type for a service object of type '<ShowPropertyValue>"
  "roboy_communication_cognition/ShowPropertyValue")