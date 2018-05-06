; Auto-generated. Do not edit!


(cl:in-package roboy_communication_cognition-srv)


;//! \htmlinclude TrainSeq2Seq-request.msg.html

(cl:defclass <TrainSeq2Seq-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass TrainSeq2Seq-request (<TrainSeq2Seq-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrainSeq2Seq-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrainSeq2Seq-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_cognition-srv:<TrainSeq2Seq-request> is deprecated: use roboy_communication_cognition-srv:TrainSeq2Seq-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrainSeq2Seq-request>) ostream)
  "Serializes a message object of type '<TrainSeq2Seq-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrainSeq2Seq-request>) istream)
  "Deserializes a message object of type '<TrainSeq2Seq-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrainSeq2Seq-request>)))
  "Returns string type for a service object of type '<TrainSeq2Seq-request>"
  "roboy_communication_cognition/TrainSeq2SeqRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrainSeq2Seq-request)))
  "Returns string type for a service object of type 'TrainSeq2Seq-request"
  "roboy_communication_cognition/TrainSeq2SeqRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrainSeq2Seq-request>)))
  "Returns md5sum for a message object of type '<TrainSeq2Seq-request>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrainSeq2Seq-request)))
  "Returns md5sum for a message object of type 'TrainSeq2Seq-request"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrainSeq2Seq-request>)))
  "Returns full string definition for message of type '<TrainSeq2Seq-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrainSeq2Seq-request)))
  "Returns full string definition for message of type 'TrainSeq2Seq-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrainSeq2Seq-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrainSeq2Seq-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TrainSeq2Seq-request
))
;//! \htmlinclude TrainSeq2Seq-response.msg.html

(cl:defclass <TrainSeq2Seq-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass TrainSeq2Seq-response (<TrainSeq2Seq-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrainSeq2Seq-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrainSeq2Seq-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_cognition-srv:<TrainSeq2Seq-response> is deprecated: use roboy_communication_cognition-srv:TrainSeq2Seq-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <TrainSeq2Seq-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:success-val is deprecated.  Use roboy_communication_cognition-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrainSeq2Seq-response>) ostream)
  "Serializes a message object of type '<TrainSeq2Seq-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrainSeq2Seq-response>) istream)
  "Deserializes a message object of type '<TrainSeq2Seq-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrainSeq2Seq-response>)))
  "Returns string type for a service object of type '<TrainSeq2Seq-response>"
  "roboy_communication_cognition/TrainSeq2SeqResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrainSeq2Seq-response)))
  "Returns string type for a service object of type 'TrainSeq2Seq-response"
  "roboy_communication_cognition/TrainSeq2SeqResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrainSeq2Seq-response>)))
  "Returns md5sum for a message object of type '<TrainSeq2Seq-response>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrainSeq2Seq-response)))
  "Returns md5sum for a message object of type 'TrainSeq2Seq-response"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrainSeq2Seq-response>)))
  "Returns full string definition for message of type '<TrainSeq2Seq-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrainSeq2Seq-response)))
  "Returns full string definition for message of type 'TrainSeq2Seq-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrainSeq2Seq-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrainSeq2Seq-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TrainSeq2Seq-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TrainSeq2Seq)))
  'TrainSeq2Seq-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TrainSeq2Seq)))
  'TrainSeq2Seq-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrainSeq2Seq)))
  "Returns string type for a service object of type '<TrainSeq2Seq>"
  "roboy_communication_cognition/TrainSeq2Seq")