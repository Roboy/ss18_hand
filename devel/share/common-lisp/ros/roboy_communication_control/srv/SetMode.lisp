; Auto-generated. Do not edit!


(cl:in-package roboy_communication_control-srv)


;//! \htmlinclude SetMode-request.msg.html

(cl:defclass <SetMode-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetMode-request (<SetMode-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetMode-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetMode-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_control-srv:<SetMode-request> is deprecated: use roboy_communication_control-srv:SetMode-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <SetMode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_control-srv:id-val is deprecated.  Use roboy_communication_control-srv:id instead.")
  (id m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <SetMode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_control-srv:mode-val is deprecated.  Use roboy_communication_control-srv:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetMode-request>) ostream)
  "Serializes a message object of type '<SetMode-request>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetMode-request>) istream)
  "Deserializes a message object of type '<SetMode-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetMode-request>)))
  "Returns string type for a service object of type '<SetMode-request>"
  "roboy_communication_control/SetModeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMode-request)))
  "Returns string type for a service object of type 'SetMode-request"
  "roboy_communication_control/SetModeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetMode-request>)))
  "Returns md5sum for a message object of type '<SetMode-request>"
  "16becad94c6302504e3fb238db13fc32")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetMode-request)))
  "Returns md5sum for a message object of type 'SetMode-request"
  "16becad94c6302504e3fb238db13fc32")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetMode-request>)))
  "Returns full string definition for message of type '<SetMode-request>"
  (cl:format cl:nil "int8 id~%int8 mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetMode-request)))
  "Returns full string definition for message of type 'SetMode-request"
  (cl:format cl:nil "int8 id~%int8 mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetMode-request>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetMode-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetMode-request
    (cl:cons ':id (id msg))
    (cl:cons ':mode (mode msg))
))
;//! \htmlinclude SetMode-response.msg.html

(cl:defclass <SetMode-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetMode-response (<SetMode-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetMode-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetMode-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_control-srv:<SetMode-response> is deprecated: use roboy_communication_control-srv:SetMode-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetMode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_control-srv:success-val is deprecated.  Use roboy_communication_control-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetMode-response>) ostream)
  "Serializes a message object of type '<SetMode-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetMode-response>) istream)
  "Deserializes a message object of type '<SetMode-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetMode-response>)))
  "Returns string type for a service object of type '<SetMode-response>"
  "roboy_communication_control/SetModeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMode-response)))
  "Returns string type for a service object of type 'SetMode-response"
  "roboy_communication_control/SetModeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetMode-response>)))
  "Returns md5sum for a message object of type '<SetMode-response>"
  "16becad94c6302504e3fb238db13fc32")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetMode-response)))
  "Returns md5sum for a message object of type 'SetMode-response"
  "16becad94c6302504e3fb238db13fc32")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetMode-response>)))
  "Returns full string definition for message of type '<SetMode-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetMode-response)))
  "Returns full string definition for message of type 'SetMode-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetMode-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetMode-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetMode-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetMode)))
  'SetMode-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetMode)))
  'SetMode-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMode)))
  "Returns string type for a service object of type '<SetMode>"
  "roboy_communication_control/SetMode")