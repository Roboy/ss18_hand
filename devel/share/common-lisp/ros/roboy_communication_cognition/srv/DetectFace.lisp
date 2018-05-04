; Auto-generated. Do not edit!


(cl:in-package roboy_communication_cognition-srv)


;//! \htmlinclude DetectFace-request.msg.html

(cl:defclass <DetectFace-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass DetectFace-request (<DetectFace-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DetectFace-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DetectFace-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_cognition-srv:<DetectFace-request> is deprecated: use roboy_communication_cognition-srv:DetectFace-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DetectFace-request>) ostream)
  "Serializes a message object of type '<DetectFace-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DetectFace-request>) istream)
  "Deserializes a message object of type '<DetectFace-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DetectFace-request>)))
  "Returns string type for a service object of type '<DetectFace-request>"
  "roboy_communication_cognition/DetectFaceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetectFace-request)))
  "Returns string type for a service object of type 'DetectFace-request"
  "roboy_communication_cognition/DetectFaceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DetectFace-request>)))
  "Returns md5sum for a message object of type '<DetectFace-request>"
  "94fee4081dfe1f4cd412b0ed430e52b4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DetectFace-request)))
  "Returns md5sum for a message object of type 'DetectFace-request"
  "94fee4081dfe1f4cd412b0ed430e52b4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DetectFace-request>)))
  "Returns full string definition for message of type '<DetectFace-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DetectFace-request)))
  "Returns full string definition for message of type 'DetectFace-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DetectFace-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DetectFace-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DetectFace-request
))
;//! \htmlinclude DetectFace-response.msg.html

(cl:defclass <DetectFace-response> (roslisp-msg-protocol:ros-message)
  ((face_detected
    :reader face_detected
    :initarg :face_detected
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass DetectFace-response (<DetectFace-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DetectFace-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DetectFace-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_cognition-srv:<DetectFace-response> is deprecated: use roboy_communication_cognition-srv:DetectFace-response instead.")))

(cl:ensure-generic-function 'face_detected-val :lambda-list '(m))
(cl:defmethod face_detected-val ((m <DetectFace-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:face_detected-val is deprecated.  Use roboy_communication_cognition-srv:face_detected instead.")
  (face_detected m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DetectFace-response>) ostream)
  "Serializes a message object of type '<DetectFace-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'face_detected) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DetectFace-response>) istream)
  "Deserializes a message object of type '<DetectFace-response>"
    (cl:setf (cl:slot-value msg 'face_detected) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DetectFace-response>)))
  "Returns string type for a service object of type '<DetectFace-response>"
  "roboy_communication_cognition/DetectFaceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetectFace-response)))
  "Returns string type for a service object of type 'DetectFace-response"
  "roboy_communication_cognition/DetectFaceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DetectFace-response>)))
  "Returns md5sum for a message object of type '<DetectFace-response>"
  "94fee4081dfe1f4cd412b0ed430e52b4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DetectFace-response)))
  "Returns md5sum for a message object of type 'DetectFace-response"
  "94fee4081dfe1f4cd412b0ed430e52b4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DetectFace-response>)))
  "Returns full string definition for message of type '<DetectFace-response>"
  (cl:format cl:nil "bool face_detected~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DetectFace-response)))
  "Returns full string definition for message of type 'DetectFace-response"
  (cl:format cl:nil "bool face_detected~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DetectFace-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DetectFace-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DetectFace-response
    (cl:cons ':face_detected (face_detected msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DetectFace)))
  'DetectFace-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DetectFace)))
  'DetectFace-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetectFace)))
  "Returns string type for a service object of type '<DetectFace>"
  "roboy_communication_cognition/DetectFace")