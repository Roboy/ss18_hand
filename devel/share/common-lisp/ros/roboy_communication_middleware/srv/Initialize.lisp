; Auto-generated. Do not edit!


(cl:in-package roboy_communication_middleware-srv)


;//! \htmlinclude Initialize-request.msg.html

(cl:defclass <Initialize-request> (roslisp-msg-protocol:ros-message)
  ((idList
    :reader idList
    :initarg :idList
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (controlmode
    :reader controlmode
    :initarg :controlmode
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass Initialize-request (<Initialize-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Initialize-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Initialize-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_middleware-srv:<Initialize-request> is deprecated: use roboy_communication_middleware-srv:Initialize-request instead.")))

(cl:ensure-generic-function 'idList-val :lambda-list '(m))
(cl:defmethod idList-val ((m <Initialize-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-srv:idList-val is deprecated.  Use roboy_communication_middleware-srv:idList instead.")
  (idList m))

(cl:ensure-generic-function 'controlmode-val :lambda-list '(m))
(cl:defmethod controlmode-val ((m <Initialize-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-srv:controlmode-val is deprecated.  Use roboy_communication_middleware-srv:controlmode instead.")
  (controlmode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Initialize-request>) ostream)
  "Serializes a message object of type '<Initialize-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'idList))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    ))
   (cl:slot-value msg 'idList))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'controlmode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'controlmode))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Initialize-request>) istream)
  "Deserializes a message object of type '<Initialize-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'idList) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'idList)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'controlmode) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'controlmode)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Initialize-request>)))
  "Returns string type for a service object of type '<Initialize-request>"
  "roboy_communication_middleware/InitializeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Initialize-request)))
  "Returns string type for a service object of type 'Initialize-request"
  "roboy_communication_middleware/InitializeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Initialize-request>)))
  "Returns md5sum for a message object of type '<Initialize-request>"
  "9549151cdabb82b0cb5be3949926ea6c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Initialize-request)))
  "Returns md5sum for a message object of type 'Initialize-request"
  "9549151cdabb82b0cb5be3949926ea6c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Initialize-request>)))
  "Returns full string definition for message of type '<Initialize-request>"
  (cl:format cl:nil "int8[] idList~%uint8[] controlmode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Initialize-request)))
  "Returns full string definition for message of type 'Initialize-request"
  (cl:format cl:nil "int8[] idList~%uint8[] controlmode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Initialize-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'idList) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'controlmode) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Initialize-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Initialize-request
    (cl:cons ':idList (idList msg))
    (cl:cons ':controlmode (controlmode msg))
))
;//! \htmlinclude Initialize-response.msg.html

(cl:defclass <Initialize-response> (roslisp-msg-protocol:ros-message)
  ((states
    :reader states
    :initarg :states
    :type (cl:vector roboy_communication_middleware-msg:ControllerState)
   :initform (cl:make-array 0 :element-type 'roboy_communication_middleware-msg:ControllerState :initial-element (cl:make-instance 'roboy_communication_middleware-msg:ControllerState))))
)

(cl:defclass Initialize-response (<Initialize-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Initialize-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Initialize-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_middleware-srv:<Initialize-response> is deprecated: use roboy_communication_middleware-srv:Initialize-response instead.")))

(cl:ensure-generic-function 'states-val :lambda-list '(m))
(cl:defmethod states-val ((m <Initialize-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-srv:states-val is deprecated.  Use roboy_communication_middleware-srv:states instead.")
  (states m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Initialize-response>) ostream)
  "Serializes a message object of type '<Initialize-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'states))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'states))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Initialize-response>) istream)
  "Deserializes a message object of type '<Initialize-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'states) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'states)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'roboy_communication_middleware-msg:ControllerState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Initialize-response>)))
  "Returns string type for a service object of type '<Initialize-response>"
  "roboy_communication_middleware/InitializeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Initialize-response)))
  "Returns string type for a service object of type 'Initialize-response"
  "roboy_communication_middleware/InitializeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Initialize-response>)))
  "Returns md5sum for a message object of type '<Initialize-response>"
  "9549151cdabb82b0cb5be3949926ea6c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Initialize-response)))
  "Returns md5sum for a message object of type 'Initialize-response"
  "9549151cdabb82b0cb5be3949926ea6c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Initialize-response>)))
  "Returns full string definition for message of type '<Initialize-response>"
  (cl:format cl:nil "ControllerState[] states~%~%~%================================================================================~%MSG: roboy_communication_middleware/ControllerState~%int32 id~%int8 state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Initialize-response)))
  "Returns full string definition for message of type 'Initialize-response"
  (cl:format cl:nil "ControllerState[] states~%~%~%================================================================================~%MSG: roboy_communication_middleware/ControllerState~%int32 id~%int8 state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Initialize-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'states) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Initialize-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Initialize-response
    (cl:cons ':states (states msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Initialize)))
  'Initialize-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Initialize)))
  'Initialize-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Initialize)))
  "Returns string type for a service object of type '<Initialize>"
  "roboy_communication_middleware/Initialize")