; Auto-generated. Do not edit!


(cl:in-package roboy_communication_cognition-msg)


;//! \htmlinclude NewFacialFeatures.msg.html

(cl:defclass <NewFacialFeatures> (roslisp-msg-protocol:ros-message)
  ((speaking
    :reader speaking
    :initarg :speaking
    :type cl:boolean
    :initform cl:nil)
   (ff
    :reader ff
    :initarg :ff
    :type (cl:vector cl:float)
   :initform (cl:make-array 128 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass NewFacialFeatures (<NewFacialFeatures>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NewFacialFeatures>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NewFacialFeatures)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_cognition-msg:<NewFacialFeatures> is deprecated: use roboy_communication_cognition-msg:NewFacialFeatures instead.")))

(cl:ensure-generic-function 'speaking-val :lambda-list '(m))
(cl:defmethod speaking-val ((m <NewFacialFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-msg:speaking-val is deprecated.  Use roboy_communication_cognition-msg:speaking instead.")
  (speaking m))

(cl:ensure-generic-function 'ff-val :lambda-list '(m))
(cl:defmethod ff-val ((m <NewFacialFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-msg:ff-val is deprecated.  Use roboy_communication_cognition-msg:ff instead.")
  (ff m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NewFacialFeatures>) ostream)
  "Serializes a message object of type '<NewFacialFeatures>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'speaking) 1 0)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'ff))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NewFacialFeatures>) istream)
  "Deserializes a message object of type '<NewFacialFeatures>"
    (cl:setf (cl:slot-value msg 'speaking) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'ff) (cl:make-array 128))
  (cl:let ((vals (cl:slot-value msg 'ff)))
    (cl:dotimes (i 128)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NewFacialFeatures>)))
  "Returns string type for a message object of type '<NewFacialFeatures>"
  "roboy_communication_cognition/NewFacialFeatures")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NewFacialFeatures)))
  "Returns string type for a message object of type 'NewFacialFeatures"
  "roboy_communication_cognition/NewFacialFeatures")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NewFacialFeatures>)))
  "Returns md5sum for a message object of type '<NewFacialFeatures>"
  "782758a9ad871ad0f7c61033e6a9c6cf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NewFacialFeatures)))
  "Returns md5sum for a message object of type 'NewFacialFeatures"
  "782758a9ad871ad0f7c61033e6a9c6cf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NewFacialFeatures>)))
  "Returns full string definition for message of type '<NewFacialFeatures>"
  (cl:format cl:nil "#only for unrecognized faces~%#is person speaking?~%bool speaking~%#facial features (128x1 vector)~%float64[128] ff~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NewFacialFeatures)))
  "Returns full string definition for message of type 'NewFacialFeatures"
  (cl:format cl:nil "#only for unrecognized faces~%#is person speaking?~%bool speaking~%#facial features (128x1 vector)~%float64[128] ff~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NewFacialFeatures>))
  (cl:+ 0
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'ff) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NewFacialFeatures>))
  "Converts a ROS message object to a list"
  (cl:list 'NewFacialFeatures
    (cl:cons ':speaking (speaking msg))
    (cl:cons ':ff (ff msg))
))
