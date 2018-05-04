; Auto-generated. Do not edit!


(cl:in-package roboy_communication_simulation-msg)


;//! \htmlinclude Abortion.msg.html

(cl:defclass <Abortion> (roslisp-msg-protocol:ros-message)
  ((roboyID
    :reader roboyID
    :initarg :roboyID
    :type cl:integer
    :initform 0)
   (reason
    :reader reason
    :initarg :reason
    :type cl:integer
    :initform 0))
)

(cl:defclass Abortion (<Abortion>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Abortion>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Abortion)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_simulation-msg:<Abortion> is deprecated: use roboy_communication_simulation-msg:Abortion instead.")))

(cl:ensure-generic-function 'roboyID-val :lambda-list '(m))
(cl:defmethod roboyID-val ((m <Abortion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_simulation-msg:roboyID-val is deprecated.  Use roboy_communication_simulation-msg:roboyID instead.")
  (roboyID m))

(cl:ensure-generic-function 'reason-val :lambda-list '(m))
(cl:defmethod reason-val ((m <Abortion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_simulation-msg:reason-val is deprecated.  Use roboy_communication_simulation-msg:reason instead.")
  (reason m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Abortion>) ostream)
  "Serializes a message object of type '<Abortion>"
  (cl:let* ((signed (cl:slot-value msg 'roboyID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'reason)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Abortion>) istream)
  "Deserializes a message object of type '<Abortion>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'roboyID) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reason) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Abortion>)))
  "Returns string type for a message object of type '<Abortion>"
  "roboy_communication_simulation/Abortion")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Abortion)))
  "Returns string type for a message object of type 'Abortion"
  "roboy_communication_simulation/Abortion")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Abortion>)))
  "Returns md5sum for a message object of type '<Abortion>"
  "451c0fac2ec706655a3840dd2387858e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Abortion)))
  "Returns md5sum for a message object of type 'Abortion"
  "451c0fac2ec706655a3840dd2387858e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Abortion>)))
  "Returns full string definition for message of type '<Abortion>"
  (cl:format cl:nil "int32 roboyID~%int32 reason~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Abortion)))
  "Returns full string definition for message of type 'Abortion"
  (cl:format cl:nil "int32 roboyID~%int32 reason~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Abortion>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Abortion>))
  "Converts a ROS message object to a list"
  (cl:list 'Abortion
    (cl:cons ':roboyID (roboyID msg))
    (cl:cons ':reason (reason msg))
))
