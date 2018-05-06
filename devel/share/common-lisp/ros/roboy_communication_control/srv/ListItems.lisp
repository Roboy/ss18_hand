; Auto-generated. Do not edit!


(cl:in-package roboy_communication_control-srv)


;//! \htmlinclude ListItems-request.msg.html

(cl:defclass <ListItems-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass ListItems-request (<ListItems-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ListItems-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ListItems-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_control-srv:<ListItems-request> is deprecated: use roboy_communication_control-srv:ListItems-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <ListItems-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_control-srv:name-val is deprecated.  Use roboy_communication_control-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ListItems-request>) ostream)
  "Serializes a message object of type '<ListItems-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ListItems-request>) istream)
  "Deserializes a message object of type '<ListItems-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ListItems-request>)))
  "Returns string type for a service object of type '<ListItems-request>"
  "roboy_communication_control/ListItemsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ListItems-request)))
  "Returns string type for a service object of type 'ListItems-request"
  "roboy_communication_control/ListItemsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ListItems-request>)))
  "Returns md5sum for a message object of type '<ListItems-request>"
  "f59feb99c2158f8692d1c10f10534d0b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ListItems-request)))
  "Returns md5sum for a message object of type 'ListItems-request"
  "f59feb99c2158f8692d1c10f10534d0b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ListItems-request>)))
  "Returns full string definition for message of type '<ListItems-request>"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ListItems-request)))
  "Returns full string definition for message of type 'ListItems-request"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ListItems-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ListItems-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ListItems-request
    (cl:cons ':name (name msg))
))
;//! \htmlinclude ListItems-response.msg.html

(cl:defclass <ListItems-response> (roslisp-msg-protocol:ros-message)
  ((items
    :reader items
    :initarg :items
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass ListItems-response (<ListItems-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ListItems-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ListItems-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_control-srv:<ListItems-response> is deprecated: use roboy_communication_control-srv:ListItems-response instead.")))

(cl:ensure-generic-function 'items-val :lambda-list '(m))
(cl:defmethod items-val ((m <ListItems-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_control-srv:items-val is deprecated.  Use roboy_communication_control-srv:items instead.")
  (items m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ListItems-response>) ostream)
  "Serializes a message object of type '<ListItems-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'items))))
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
   (cl:slot-value msg 'items))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ListItems-response>) istream)
  "Deserializes a message object of type '<ListItems-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'items) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'items)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ListItems-response>)))
  "Returns string type for a service object of type '<ListItems-response>"
  "roboy_communication_control/ListItemsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ListItems-response)))
  "Returns string type for a service object of type 'ListItems-response"
  "roboy_communication_control/ListItemsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ListItems-response>)))
  "Returns md5sum for a message object of type '<ListItems-response>"
  "f59feb99c2158f8692d1c10f10534d0b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ListItems-response)))
  "Returns md5sum for a message object of type 'ListItems-response"
  "f59feb99c2158f8692d1c10f10534d0b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ListItems-response>)))
  "Returns full string definition for message of type '<ListItems-response>"
  (cl:format cl:nil "string[] items~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ListItems-response)))
  "Returns full string definition for message of type 'ListItems-response"
  (cl:format cl:nil "string[] items~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ListItems-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'items) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ListItems-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ListItems-response
    (cl:cons ':items (items msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ListItems)))
  'ListItems-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ListItems)))
  'ListItems-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ListItems)))
  "Returns string type for a service object of type '<ListItems>"
  "roboy_communication_control/ListItems")