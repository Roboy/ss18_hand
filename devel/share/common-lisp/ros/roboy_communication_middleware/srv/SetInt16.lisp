; Auto-generated. Do not edit!


(cl:in-package roboy_communication_middleware-srv)


;//! \htmlinclude SetInt16-request.msg.html

(cl:defclass <SetInt16-request> (roslisp-msg-protocol:ros-message)
  ((setpoint
    :reader setpoint
    :initarg :setpoint
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetInt16-request (<SetInt16-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetInt16-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetInt16-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_middleware-srv:<SetInt16-request> is deprecated: use roboy_communication_middleware-srv:SetInt16-request instead.")))

(cl:ensure-generic-function 'setpoint-val :lambda-list '(m))
(cl:defmethod setpoint-val ((m <SetInt16-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-srv:setpoint-val is deprecated.  Use roboy_communication_middleware-srv:setpoint instead.")
  (setpoint m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetInt16-request>) ostream)
  "Serializes a message object of type '<SetInt16-request>"
  (cl:let* ((signed (cl:slot-value msg 'setpoint)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetInt16-request>) istream)
  "Deserializes a message object of type '<SetInt16-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'setpoint) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetInt16-request>)))
  "Returns string type for a service object of type '<SetInt16-request>"
  "roboy_communication_middleware/SetInt16Request")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetInt16-request)))
  "Returns string type for a service object of type 'SetInt16-request"
  "roboy_communication_middleware/SetInt16Request")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetInt16-request>)))
  "Returns md5sum for a message object of type '<SetInt16-request>"
  "8ee399a1f7e5b4decdfc42e0ba4ab098")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetInt16-request)))
  "Returns md5sum for a message object of type 'SetInt16-request"
  "8ee399a1f7e5b4decdfc42e0ba4ab098")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetInt16-request>)))
  "Returns full string definition for message of type '<SetInt16-request>"
  (cl:format cl:nil "int16 setpoint~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetInt16-request)))
  "Returns full string definition for message of type 'SetInt16-request"
  (cl:format cl:nil "int16 setpoint~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetInt16-request>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetInt16-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetInt16-request
    (cl:cons ':setpoint (setpoint msg))
))
;//! \htmlinclude SetInt16-response.msg.html

(cl:defclass <SetInt16-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetInt16-response (<SetInt16-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetInt16-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetInt16-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_middleware-srv:<SetInt16-response> is deprecated: use roboy_communication_middleware-srv:SetInt16-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetInt16-response>) ostream)
  "Serializes a message object of type '<SetInt16-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetInt16-response>) istream)
  "Deserializes a message object of type '<SetInt16-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetInt16-response>)))
  "Returns string type for a service object of type '<SetInt16-response>"
  "roboy_communication_middleware/SetInt16Response")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetInt16-response)))
  "Returns string type for a service object of type 'SetInt16-response"
  "roboy_communication_middleware/SetInt16Response")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetInt16-response>)))
  "Returns md5sum for a message object of type '<SetInt16-response>"
  "8ee399a1f7e5b4decdfc42e0ba4ab098")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetInt16-response)))
  "Returns md5sum for a message object of type 'SetInt16-response"
  "8ee399a1f7e5b4decdfc42e0ba4ab098")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetInt16-response>)))
  "Returns full string definition for message of type '<SetInt16-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetInt16-response)))
  "Returns full string definition for message of type 'SetInt16-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetInt16-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetInt16-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetInt16-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetInt16)))
  'SetInt16-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetInt16)))
  'SetInt16-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetInt16)))
  "Returns string type for a service object of type '<SetInt16>"
  "roboy_communication_middleware/SetInt16")