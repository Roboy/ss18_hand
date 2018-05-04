; Auto-generated. Do not edit!


(cl:in-package roboy_communication_control-srv)


;//! \htmlinclude MoveYaw-request.msg.html

(cl:defclass <MoveYaw-request> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:integer
    :initform 0))
)

(cl:defclass MoveYaw-request (<MoveYaw-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveYaw-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveYaw-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_control-srv:<MoveYaw-request> is deprecated: use roboy_communication_control-srv:MoveYaw-request instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <MoveYaw-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_control-srv:value-val is deprecated.  Use roboy_communication_control-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveYaw-request>) ostream)
  "Serializes a message object of type '<MoveYaw-request>"
  (cl:let* ((signed (cl:slot-value msg 'value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveYaw-request>) istream)
  "Deserializes a message object of type '<MoveYaw-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveYaw-request>)))
  "Returns string type for a service object of type '<MoveYaw-request>"
  "roboy_communication_control/MoveYawRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveYaw-request)))
  "Returns string type for a service object of type 'MoveYaw-request"
  "roboy_communication_control/MoveYawRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveYaw-request>)))
  "Returns md5sum for a message object of type '<MoveYaw-request>"
  "bc437afb45673379bdb9f299f9cbbc9e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveYaw-request)))
  "Returns md5sum for a message object of type 'MoveYaw-request"
  "bc437afb45673379bdb9f299f9cbbc9e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveYaw-request>)))
  "Returns full string definition for message of type '<MoveYaw-request>"
  (cl:format cl:nil "int32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveYaw-request)))
  "Returns full string definition for message of type 'MoveYaw-request"
  (cl:format cl:nil "int32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveYaw-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveYaw-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveYaw-request
    (cl:cons ':value (value msg))
))
;//! \htmlinclude MoveYaw-response.msg.html

(cl:defclass <MoveYaw-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MoveYaw-response (<MoveYaw-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveYaw-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveYaw-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_control-srv:<MoveYaw-response> is deprecated: use roboy_communication_control-srv:MoveYaw-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <MoveYaw-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_control-srv:success-val is deprecated.  Use roboy_communication_control-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveYaw-response>) ostream)
  "Serializes a message object of type '<MoveYaw-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveYaw-response>) istream)
  "Deserializes a message object of type '<MoveYaw-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveYaw-response>)))
  "Returns string type for a service object of type '<MoveYaw-response>"
  "roboy_communication_control/MoveYawResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveYaw-response)))
  "Returns string type for a service object of type 'MoveYaw-response"
  "roboy_communication_control/MoveYawResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveYaw-response>)))
  "Returns md5sum for a message object of type '<MoveYaw-response>"
  "bc437afb45673379bdb9f299f9cbbc9e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveYaw-response)))
  "Returns md5sum for a message object of type 'MoveYaw-response"
  "bc437afb45673379bdb9f299f9cbbc9e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveYaw-response>)))
  "Returns full string definition for message of type '<MoveYaw-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveYaw-response)))
  "Returns full string definition for message of type 'MoveYaw-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveYaw-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveYaw-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveYaw-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MoveYaw)))
  'MoveYaw-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MoveYaw)))
  'MoveYaw-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveYaw)))
  "Returns string type for a service object of type '<MoveYaw>"
  "roboy_communication_control/MoveYaw")