; Auto-generated. Do not edit!


(cl:in-package roboy_communication_cognition-srv)


;//! \htmlinclude FindObject-request.msg.html

(cl:defclass <FindObject-request> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:string
    :initform ""))
)

(cl:defclass FindObject-request (<FindObject-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FindObject-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FindObject-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_cognition-srv:<FindObject-request> is deprecated: use roboy_communication_cognition-srv:FindObject-request instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <FindObject-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:type-val is deprecated.  Use roboy_communication_cognition-srv:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FindObject-request>) ostream)
  "Serializes a message object of type '<FindObject-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FindObject-request>) istream)
  "Deserializes a message object of type '<FindObject-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FindObject-request>)))
  "Returns string type for a service object of type '<FindObject-request>"
  "roboy_communication_cognition/FindObjectRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FindObject-request)))
  "Returns string type for a service object of type 'FindObject-request"
  "roboy_communication_cognition/FindObjectRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FindObject-request>)))
  "Returns md5sum for a message object of type '<FindObject-request>"
  "8bce2c9439fff72b8d9c35fa63d8c24a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FindObject-request)))
  "Returns md5sum for a message object of type 'FindObject-request"
  "8bce2c9439fff72b8d9c35fa63d8c24a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FindObject-request>)))
  "Returns full string definition for message of type '<FindObject-request>"
  (cl:format cl:nil "~%string type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FindObject-request)))
  "Returns full string definition for message of type 'FindObject-request"
  (cl:format cl:nil "~%string type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FindObject-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FindObject-request>))
  "Converts a ROS message object to a list"
  (cl:list 'FindObject-request
    (cl:cons ':type (type msg))
))
;//! \htmlinclude FindObject-response.msg.html

(cl:defclass <FindObject-response> (roslisp-msg-protocol:ros-message)
  ((found
    :reader found
    :initarg :found
    :type cl:boolean
    :initform cl:nil)
   (x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0))
)

(cl:defclass FindObject-response (<FindObject-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FindObject-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FindObject-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_cognition-srv:<FindObject-response> is deprecated: use roboy_communication_cognition-srv:FindObject-response instead.")))

(cl:ensure-generic-function 'found-val :lambda-list '(m))
(cl:defmethod found-val ((m <FindObject-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:found-val is deprecated.  Use roboy_communication_cognition-srv:found instead.")
  (found m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <FindObject-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:x-val is deprecated.  Use roboy_communication_cognition-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <FindObject-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:y-val is deprecated.  Use roboy_communication_cognition-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <FindObject-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:z-val is deprecated.  Use roboy_communication_cognition-srv:z instead.")
  (z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FindObject-response>) ostream)
  "Serializes a message object of type '<FindObject-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'found) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FindObject-response>) istream)
  "Deserializes a message object of type '<FindObject-response>"
    (cl:setf (cl:slot-value msg 'found) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FindObject-response>)))
  "Returns string type for a service object of type '<FindObject-response>"
  "roboy_communication_cognition/FindObjectResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FindObject-response)))
  "Returns string type for a service object of type 'FindObject-response"
  "roboy_communication_cognition/FindObjectResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FindObject-response>)))
  "Returns md5sum for a message object of type '<FindObject-response>"
  "8bce2c9439fff72b8d9c35fa63d8c24a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FindObject-response)))
  "Returns md5sum for a message object of type 'FindObject-response"
  "8bce2c9439fff72b8d9c35fa63d8c24a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FindObject-response>)))
  "Returns full string definition for message of type '<FindObject-response>"
  (cl:format cl:nil "~%bool found~%~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FindObject-response)))
  "Returns full string definition for message of type 'FindObject-response"
  (cl:format cl:nil "~%bool found~%~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FindObject-response>))
  (cl:+ 0
     1
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FindObject-response>))
  "Converts a ROS message object to a list"
  (cl:list 'FindObject-response
    (cl:cons ':found (found msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'FindObject)))
  'FindObject-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'FindObject)))
  'FindObject-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FindObject)))
  "Returns string type for a service object of type '<FindObject>"
  "roboy_communication_cognition/FindObject")