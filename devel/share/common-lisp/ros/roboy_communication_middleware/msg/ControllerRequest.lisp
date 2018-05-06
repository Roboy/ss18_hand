; Auto-generated. Do not edit!


(cl:in-package roboy_communication_middleware-msg)


;//! \htmlinclude ControllerRequest.msg.html

(cl:defclass <ControllerRequest> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (controlmode
    :reader controlmode
    :initarg :controlmode
    :type cl:integer
    :initform 0))
)

(cl:defclass ControllerRequest (<ControllerRequest>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ControllerRequest>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ControllerRequest)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_middleware-msg:<ControllerRequest> is deprecated: use roboy_communication_middleware-msg:ControllerRequest instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <ControllerRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-msg:id-val is deprecated.  Use roboy_communication_middleware-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'controlmode-val :lambda-list '(m))
(cl:defmethod controlmode-val ((m <ControllerRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-msg:controlmode-val is deprecated.  Use roboy_communication_middleware-msg:controlmode instead.")
  (controlmode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ControllerRequest>) ostream)
  "Serializes a message object of type '<ControllerRequest>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'controlmode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'controlmode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'controlmode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'controlmode)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ControllerRequest>) istream)
  "Deserializes a message object of type '<ControllerRequest>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'controlmode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'controlmode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'controlmode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'controlmode)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ControllerRequest>)))
  "Returns string type for a message object of type '<ControllerRequest>"
  "roboy_communication_middleware/ControllerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControllerRequest)))
  "Returns string type for a message object of type 'ControllerRequest"
  "roboy_communication_middleware/ControllerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ControllerRequest>)))
  "Returns md5sum for a message object of type '<ControllerRequest>"
  "3e5385e007339c63f87202900089e407")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ControllerRequest)))
  "Returns md5sum for a message object of type 'ControllerRequest"
  "3e5385e007339c63f87202900089e407")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ControllerRequest>)))
  "Returns full string definition for message of type '<ControllerRequest>"
  (cl:format cl:nil "int32    id~%uint32   controlmode~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ControllerRequest)))
  "Returns full string definition for message of type 'ControllerRequest"
  (cl:format cl:nil "int32    id~%uint32   controlmode~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ControllerRequest>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ControllerRequest>))
  "Converts a ROS message object to a list"
  (cl:list 'ControllerRequest
    (cl:cons ':id (id msg))
    (cl:cons ':controlmode (controlmode msg))
))
