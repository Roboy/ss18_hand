; Auto-generated. Do not edit!


(cl:in-package roboy_communication_cognition-srv)


;//! \htmlinclude LookAtSpeaker-request.msg.html

(cl:defclass <LookAtSpeaker-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass LookAtSpeaker-request (<LookAtSpeaker-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LookAtSpeaker-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LookAtSpeaker-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_cognition-srv:<LookAtSpeaker-request> is deprecated: use roboy_communication_cognition-srv:LookAtSpeaker-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LookAtSpeaker-request>) ostream)
  "Serializes a message object of type '<LookAtSpeaker-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LookAtSpeaker-request>) istream)
  "Deserializes a message object of type '<LookAtSpeaker-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LookAtSpeaker-request>)))
  "Returns string type for a service object of type '<LookAtSpeaker-request>"
  "roboy_communication_cognition/LookAtSpeakerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LookAtSpeaker-request)))
  "Returns string type for a service object of type 'LookAtSpeaker-request"
  "roboy_communication_cognition/LookAtSpeakerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LookAtSpeaker-request>)))
  "Returns md5sum for a message object of type '<LookAtSpeaker-request>"
  "15a9db50325f4812c0499779cd2dc36e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LookAtSpeaker-request)))
  "Returns md5sum for a message object of type 'LookAtSpeaker-request"
  "15a9db50325f4812c0499779cd2dc36e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LookAtSpeaker-request>)))
  "Returns full string definition for message of type '<LookAtSpeaker-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LookAtSpeaker-request)))
  "Returns full string definition for message of type 'LookAtSpeaker-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LookAtSpeaker-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LookAtSpeaker-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LookAtSpeaker-request
))
;//! \htmlinclude LookAtSpeaker-response.msg.html

(cl:defclass <LookAtSpeaker-response> (roslisp-msg-protocol:ros-message)
  ((turned
    :reader turned
    :initarg :turned
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass LookAtSpeaker-response (<LookAtSpeaker-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LookAtSpeaker-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LookAtSpeaker-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_cognition-srv:<LookAtSpeaker-response> is deprecated: use roboy_communication_cognition-srv:LookAtSpeaker-response instead.")))

(cl:ensure-generic-function 'turned-val :lambda-list '(m))
(cl:defmethod turned-val ((m <LookAtSpeaker-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:turned-val is deprecated.  Use roboy_communication_cognition-srv:turned instead.")
  (turned m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LookAtSpeaker-response>) ostream)
  "Serializes a message object of type '<LookAtSpeaker-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'turned) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LookAtSpeaker-response>) istream)
  "Deserializes a message object of type '<LookAtSpeaker-response>"
    (cl:setf (cl:slot-value msg 'turned) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LookAtSpeaker-response>)))
  "Returns string type for a service object of type '<LookAtSpeaker-response>"
  "roboy_communication_cognition/LookAtSpeakerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LookAtSpeaker-response)))
  "Returns string type for a service object of type 'LookAtSpeaker-response"
  "roboy_communication_cognition/LookAtSpeakerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LookAtSpeaker-response>)))
  "Returns md5sum for a message object of type '<LookAtSpeaker-response>"
  "15a9db50325f4812c0499779cd2dc36e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LookAtSpeaker-response)))
  "Returns md5sum for a message object of type 'LookAtSpeaker-response"
  "15a9db50325f4812c0499779cd2dc36e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LookAtSpeaker-response>)))
  "Returns full string definition for message of type '<LookAtSpeaker-response>"
  (cl:format cl:nil "~%bool turned~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LookAtSpeaker-response)))
  "Returns full string definition for message of type 'LookAtSpeaker-response"
  (cl:format cl:nil "~%bool turned~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LookAtSpeaker-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LookAtSpeaker-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LookAtSpeaker-response
    (cl:cons ':turned (turned msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LookAtSpeaker)))
  'LookAtSpeaker-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LookAtSpeaker)))
  'LookAtSpeaker-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LookAtSpeaker)))
  "Returns string type for a service object of type '<LookAtSpeaker>"
  "roboy_communication_cognition/LookAtSpeaker")