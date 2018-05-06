; Auto-generated. Do not edit!


(cl:in-package roboy_communication_control-msg)


;//! \htmlinclude ControlLeds.msg.html

(cl:defclass <ControlLeds> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0)
   (duration
    :reader duration
    :initarg :duration
    :type cl:integer
    :initform 0))
)

(cl:defclass ControlLeds (<ControlLeds>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ControlLeds>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ControlLeds)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_control-msg:<ControlLeds> is deprecated: use roboy_communication_control-msg:ControlLeds instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <ControlLeds>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_control-msg:mode-val is deprecated.  Use roboy_communication_control-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'duration-val :lambda-list '(m))
(cl:defmethod duration-val ((m <ControlLeds>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_control-msg:duration-val is deprecated.  Use roboy_communication_control-msg:duration instead.")
  (duration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ControlLeds>) ostream)
  "Serializes a message object of type '<ControlLeds>"
  (cl:let* ((signed (cl:slot-value msg 'mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'duration)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ControlLeds>) istream)
  "Deserializes a message object of type '<ControlLeds>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'duration) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ControlLeds>)))
  "Returns string type for a message object of type '<ControlLeds>"
  "roboy_communication_control/ControlLeds")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControlLeds)))
  "Returns string type for a message object of type 'ControlLeds"
  "roboy_communication_control/ControlLeds")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ControlLeds>)))
  "Returns md5sum for a message object of type '<ControlLeds>"
  "cbdf6d76365c7274e13bc5d8007f65ca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ControlLeds)))
  "Returns md5sum for a message object of type 'ControlLeds"
  "cbdf6d76365c7274e13bc5d8007f65ca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ControlLeds>)))
  "Returns full string definition for message of type '<ControlLeds>"
  (cl:format cl:nil "int16 mode~%int32 duration #seconds~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ControlLeds)))
  "Returns full string definition for message of type 'ControlLeds"
  (cl:format cl:nil "int16 mode~%int32 duration #seconds~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ControlLeds>))
  (cl:+ 0
     2
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ControlLeds>))
  "Converts a ROS message object to a list"
  (cl:list 'ControlLeds
    (cl:cons ':mode (mode msg))
    (cl:cons ':duration (duration msg))
))
