; Auto-generated. Do not edit!


(cl:in-package roboy_communication_control-msg)


;//! \htmlinclude InfoNotification.msg.html

(cl:defclass <InfoNotification> (roslisp-msg-protocol:ros-message)
  ((code
    :reader code
    :initarg :code
    :type cl:integer
    :initform 0)
   (object
    :reader object
    :initarg :object
    :type cl:string
    :initform "")
   (msg
    :reader msg
    :initarg :msg
    :type cl:string
    :initform "")
   (extra
    :reader extra
    :initarg :extra
    :type cl:string
    :initform "")
   (validityDuration
    :reader validityDuration
    :initarg :validityDuration
    :type cl:integer
    :initform 0))
)

(cl:defclass InfoNotification (<InfoNotification>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InfoNotification>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InfoNotification)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_control-msg:<InfoNotification> is deprecated: use roboy_communication_control-msg:InfoNotification instead.")))

(cl:ensure-generic-function 'code-val :lambda-list '(m))
(cl:defmethod code-val ((m <InfoNotification>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_control-msg:code-val is deprecated.  Use roboy_communication_control-msg:code instead.")
  (code m))

(cl:ensure-generic-function 'object-val :lambda-list '(m))
(cl:defmethod object-val ((m <InfoNotification>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_control-msg:object-val is deprecated.  Use roboy_communication_control-msg:object instead.")
  (object m))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <InfoNotification>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_control-msg:msg-val is deprecated.  Use roboy_communication_control-msg:msg instead.")
  (msg m))

(cl:ensure-generic-function 'extra-val :lambda-list '(m))
(cl:defmethod extra-val ((m <InfoNotification>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_control-msg:extra-val is deprecated.  Use roboy_communication_control-msg:extra instead.")
  (extra m))

(cl:ensure-generic-function 'validityDuration-val :lambda-list '(m))
(cl:defmethod validityDuration-val ((m <InfoNotification>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_control-msg:validityDuration-val is deprecated.  Use roboy_communication_control-msg:validityDuration instead.")
  (validityDuration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InfoNotification>) ostream)
  "Serializes a message object of type '<InfoNotification>"
  (cl:let* ((signed (cl:slot-value msg 'code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'object))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'object))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'extra))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'extra))
  (cl:let* ((signed (cl:slot-value msg 'validityDuration)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InfoNotification>) istream)
  "Deserializes a message object of type '<InfoNotification>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'code) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
      (cl:setf (cl:slot-value msg 'msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'extra) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'extra) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'validityDuration) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InfoNotification>)))
  "Returns string type for a message object of type '<InfoNotification>"
  "roboy_communication_control/InfoNotification")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InfoNotification)))
  "Returns string type for a message object of type 'InfoNotification"
  "roboy_communication_control/InfoNotification")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InfoNotification>)))
  "Returns md5sum for a message object of type '<InfoNotification>"
  "e83a19f2165c907848c09efd00ad9d5e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InfoNotification)))
  "Returns md5sum for a message object of type 'InfoNotification"
  "e83a19f2165c907848c09efd00ad9d5e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InfoNotification>)))
  "Returns full string definition for message of type '<InfoNotification>"
  (cl:format cl:nil "int32 code~%string object~%string msg~%string extra~%int32 validityDuration~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InfoNotification)))
  "Returns full string definition for message of type 'InfoNotification"
  (cl:format cl:nil "int32 code~%string object~%string msg~%string extra~%int32 validityDuration~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InfoNotification>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'object))
     4 (cl:length (cl:slot-value msg 'msg))
     4 (cl:length (cl:slot-value msg 'extra))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InfoNotification>))
  "Converts a ROS message object to a list"
  (cl:list 'InfoNotification
    (cl:cons ':code (code msg))
    (cl:cons ':object (object msg))
    (cl:cons ':msg (msg msg))
    (cl:cons ':extra (extra msg))
    (cl:cons ':validityDuration (validityDuration msg))
))
