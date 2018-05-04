; Auto-generated. Do not edit!


(cl:in-package roboy_communication_middleware-srv)


;//! \htmlinclude ControlMode-request.msg.html

(cl:defclass <ControlMode-request> (roslisp-msg-protocol:ros-message)
  ((control_mode
    :reader control_mode
    :initarg :control_mode
    :type cl:integer
    :initform 0)
   (setPoint
    :reader setPoint
    :initarg :setPoint
    :type cl:integer
    :initform 0))
)

(cl:defclass ControlMode-request (<ControlMode-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ControlMode-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ControlMode-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_middleware-srv:<ControlMode-request> is deprecated: use roboy_communication_middleware-srv:ControlMode-request instead.")))

(cl:ensure-generic-function 'control_mode-val :lambda-list '(m))
(cl:defmethod control_mode-val ((m <ControlMode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-srv:control_mode-val is deprecated.  Use roboy_communication_middleware-srv:control_mode instead.")
  (control_mode m))

(cl:ensure-generic-function 'setPoint-val :lambda-list '(m))
(cl:defmethod setPoint-val ((m <ControlMode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-srv:setPoint-val is deprecated.  Use roboy_communication_middleware-srv:setPoint instead.")
  (setPoint m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ControlMode-request>) ostream)
  "Serializes a message object of type '<ControlMode-request>"
  (cl:let* ((signed (cl:slot-value msg 'control_mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'setPoint)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ControlMode-request>) istream)
  "Deserializes a message object of type '<ControlMode-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'control_mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'setPoint) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ControlMode-request>)))
  "Returns string type for a service object of type '<ControlMode-request>"
  "roboy_communication_middleware/ControlModeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControlMode-request)))
  "Returns string type for a service object of type 'ControlMode-request"
  "roboy_communication_middleware/ControlModeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ControlMode-request>)))
  "Returns md5sum for a message object of type '<ControlMode-request>"
  "f4a9008e9e32a87b9ee7b89f4816168f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ControlMode-request)))
  "Returns md5sum for a message object of type 'ControlMode-request"
  "f4a9008e9e32a87b9ee7b89f4816168f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ControlMode-request>)))
  "Returns full string definition for message of type '<ControlMode-request>"
  (cl:format cl:nil "int32 control_mode~%int32 setPoint~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ControlMode-request)))
  "Returns full string definition for message of type 'ControlMode-request"
  (cl:format cl:nil "int32 control_mode~%int32 setPoint~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ControlMode-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ControlMode-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ControlMode-request
    (cl:cons ':control_mode (control_mode msg))
    (cl:cons ':setPoint (setPoint msg))
))
;//! \htmlinclude ControlMode-response.msg.html

(cl:defclass <ControlMode-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ControlMode-response (<ControlMode-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ControlMode-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ControlMode-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_middleware-srv:<ControlMode-response> is deprecated: use roboy_communication_middleware-srv:ControlMode-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ControlMode-response>) ostream)
  "Serializes a message object of type '<ControlMode-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ControlMode-response>) istream)
  "Deserializes a message object of type '<ControlMode-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ControlMode-response>)))
  "Returns string type for a service object of type '<ControlMode-response>"
  "roboy_communication_middleware/ControlModeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControlMode-response)))
  "Returns string type for a service object of type 'ControlMode-response"
  "roboy_communication_middleware/ControlModeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ControlMode-response>)))
  "Returns md5sum for a message object of type '<ControlMode-response>"
  "f4a9008e9e32a87b9ee7b89f4816168f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ControlMode-response)))
  "Returns md5sum for a message object of type 'ControlMode-response"
  "f4a9008e9e32a87b9ee7b89f4816168f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ControlMode-response>)))
  "Returns full string definition for message of type '<ControlMode-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ControlMode-response)))
  "Returns full string definition for message of type 'ControlMode-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ControlMode-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ControlMode-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ControlMode-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ControlMode)))
  'ControlMode-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ControlMode)))
  'ControlMode-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControlMode)))
  "Returns string type for a service object of type '<ControlMode>"
  "roboy_communication_middleware/ControlMode")