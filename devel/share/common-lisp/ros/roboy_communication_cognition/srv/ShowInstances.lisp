; Auto-generated. Do not edit!


(cl:in-package roboy_communication_cognition-srv)


;//! \htmlinclude ShowInstances-request.msg.html

(cl:defclass <ShowInstances-request> (roslisp-msg-protocol:ros-message)
  ((object_class
    :reader object_class
    :initarg :object_class
    :type cl:string
    :initform ""))
)

(cl:defclass ShowInstances-request (<ShowInstances-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ShowInstances-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ShowInstances-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_cognition-srv:<ShowInstances-request> is deprecated: use roboy_communication_cognition-srv:ShowInstances-request instead.")))

(cl:ensure-generic-function 'object_class-val :lambda-list '(m))
(cl:defmethod object_class-val ((m <ShowInstances-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:object_class-val is deprecated.  Use roboy_communication_cognition-srv:object_class instead.")
  (object_class m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ShowInstances-request>) ostream)
  "Serializes a message object of type '<ShowInstances-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'object_class))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'object_class))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ShowInstances-request>) istream)
  "Deserializes a message object of type '<ShowInstances-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'object_class) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'object_class) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ShowInstances-request>)))
  "Returns string type for a service object of type '<ShowInstances-request>"
  "roboy_communication_cognition/ShowInstancesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ShowInstances-request)))
  "Returns string type for a service object of type 'ShowInstances-request"
  "roboy_communication_cognition/ShowInstancesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ShowInstances-request>)))
  "Returns md5sum for a message object of type '<ShowInstances-request>"
  "cdb5eab71cb46cce11dc358585f13c8e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ShowInstances-request)))
  "Returns md5sum for a message object of type 'ShowInstances-request"
  "cdb5eab71cb46cce11dc358585f13c8e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ShowInstances-request>)))
  "Returns full string definition for message of type '<ShowInstances-request>"
  (cl:format cl:nil "string object_class~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ShowInstances-request)))
  "Returns full string definition for message of type 'ShowInstances-request"
  (cl:format cl:nil "string object_class~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ShowInstances-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'object_class))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ShowInstances-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ShowInstances-request
    (cl:cons ':object_class (object_class msg))
))
;//! \htmlinclude ShowInstances-response.msg.html

(cl:defclass <ShowInstances-response> (roslisp-msg-protocol:ros-message)
  ((instances
    :reader instances
    :initarg :instances
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass ShowInstances-response (<ShowInstances-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ShowInstances-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ShowInstances-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_cognition-srv:<ShowInstances-response> is deprecated: use roboy_communication_cognition-srv:ShowInstances-response instead.")))

(cl:ensure-generic-function 'instances-val :lambda-list '(m))
(cl:defmethod instances-val ((m <ShowInstances-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:instances-val is deprecated.  Use roboy_communication_cognition-srv:instances instead.")
  (instances m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ShowInstances-response>) ostream)
  "Serializes a message object of type '<ShowInstances-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'instances))))
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
   (cl:slot-value msg 'instances))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ShowInstances-response>) istream)
  "Deserializes a message object of type '<ShowInstances-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'instances) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'instances)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ShowInstances-response>)))
  "Returns string type for a service object of type '<ShowInstances-response>"
  "roboy_communication_cognition/ShowInstancesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ShowInstances-response)))
  "Returns string type for a service object of type 'ShowInstances-response"
  "roboy_communication_cognition/ShowInstancesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ShowInstances-response>)))
  "Returns md5sum for a message object of type '<ShowInstances-response>"
  "cdb5eab71cb46cce11dc358585f13c8e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ShowInstances-response)))
  "Returns md5sum for a message object of type 'ShowInstances-response"
  "cdb5eab71cb46cce11dc358585f13c8e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ShowInstances-response>)))
  "Returns full string definition for message of type '<ShowInstances-response>"
  (cl:format cl:nil "string[] instances~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ShowInstances-response)))
  "Returns full string definition for message of type 'ShowInstances-response"
  (cl:format cl:nil "string[] instances~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ShowInstances-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'instances) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ShowInstances-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ShowInstances-response
    (cl:cons ':instances (instances msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ShowInstances)))
  'ShowInstances-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ShowInstances)))
  'ShowInstances-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ShowInstances)))
  "Returns string type for a service object of type '<ShowInstances>"
  "roboy_communication_cognition/ShowInstances")