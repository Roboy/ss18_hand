; Auto-generated. Do not edit!


(cl:in-package roboy_communication_cognition-srv)


;//! \htmlinclude EvalSeq2Seq-request.msg.html

(cl:defclass <EvalSeq2Seq-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass EvalSeq2Seq-request (<EvalSeq2Seq-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EvalSeq2Seq-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EvalSeq2Seq-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_cognition-srv:<EvalSeq2Seq-request> is deprecated: use roboy_communication_cognition-srv:EvalSeq2Seq-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EvalSeq2Seq-request>) ostream)
  "Serializes a message object of type '<EvalSeq2Seq-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EvalSeq2Seq-request>) istream)
  "Deserializes a message object of type '<EvalSeq2Seq-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EvalSeq2Seq-request>)))
  "Returns string type for a service object of type '<EvalSeq2Seq-request>"
  "roboy_communication_cognition/EvalSeq2SeqRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EvalSeq2Seq-request)))
  "Returns string type for a service object of type 'EvalSeq2Seq-request"
  "roboy_communication_cognition/EvalSeq2SeqRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EvalSeq2Seq-request>)))
  "Returns md5sum for a message object of type '<EvalSeq2Seq-request>"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EvalSeq2Seq-request)))
  "Returns md5sum for a message object of type 'EvalSeq2Seq-request"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EvalSeq2Seq-request>)))
  "Returns full string definition for message of type '<EvalSeq2Seq-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EvalSeq2Seq-request)))
  "Returns full string definition for message of type 'EvalSeq2Seq-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EvalSeq2Seq-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EvalSeq2Seq-request>))
  "Converts a ROS message object to a list"
  (cl:list 'EvalSeq2Seq-request
))
;//! \htmlinclude EvalSeq2Seq-response.msg.html

(cl:defclass <EvalSeq2Seq-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass EvalSeq2Seq-response (<EvalSeq2Seq-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EvalSeq2Seq-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EvalSeq2Seq-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_cognition-srv:<EvalSeq2Seq-response> is deprecated: use roboy_communication_cognition-srv:EvalSeq2Seq-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <EvalSeq2Seq-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:result-val is deprecated.  Use roboy_communication_cognition-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EvalSeq2Seq-response>) ostream)
  "Serializes a message object of type '<EvalSeq2Seq-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EvalSeq2Seq-response>) istream)
  "Deserializes a message object of type '<EvalSeq2Seq-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EvalSeq2Seq-response>)))
  "Returns string type for a service object of type '<EvalSeq2Seq-response>"
  "roboy_communication_cognition/EvalSeq2SeqResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EvalSeq2Seq-response)))
  "Returns string type for a service object of type 'EvalSeq2Seq-response"
  "roboy_communication_cognition/EvalSeq2SeqResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EvalSeq2Seq-response>)))
  "Returns md5sum for a message object of type '<EvalSeq2Seq-response>"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EvalSeq2Seq-response)))
  "Returns md5sum for a message object of type 'EvalSeq2Seq-response"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EvalSeq2Seq-response>)))
  "Returns full string definition for message of type '<EvalSeq2Seq-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EvalSeq2Seq-response)))
  "Returns full string definition for message of type 'EvalSeq2Seq-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EvalSeq2Seq-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EvalSeq2Seq-response>))
  "Converts a ROS message object to a list"
  (cl:list 'EvalSeq2Seq-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'EvalSeq2Seq)))
  'EvalSeq2Seq-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'EvalSeq2Seq)))
  'EvalSeq2Seq-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EvalSeq2Seq)))
  "Returns string type for a service object of type '<EvalSeq2Seq>"
  "roboy_communication_cognition/EvalSeq2Seq")