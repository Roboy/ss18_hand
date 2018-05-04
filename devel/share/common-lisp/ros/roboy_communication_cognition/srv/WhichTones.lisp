; Auto-generated. Do not edit!


(cl:in-package roboy_communication_cognition-srv)


;//! \htmlinclude WhichTones-request.msg.html

(cl:defclass <WhichTones-request> (roslisp-msg-protocol:ros-message)
  ((timeInMilliseconds
    :reader timeInMilliseconds
    :initarg :timeInMilliseconds
    :type cl:float
    :initform 0.0))
)

(cl:defclass WhichTones-request (<WhichTones-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WhichTones-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WhichTones-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_cognition-srv:<WhichTones-request> is deprecated: use roboy_communication_cognition-srv:WhichTones-request instead.")))

(cl:ensure-generic-function 'timeInMilliseconds-val :lambda-list '(m))
(cl:defmethod timeInMilliseconds-val ((m <WhichTones-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:timeInMilliseconds-val is deprecated.  Use roboy_communication_cognition-srv:timeInMilliseconds instead.")
  (timeInMilliseconds m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WhichTones-request>) ostream)
  "Serializes a message object of type '<WhichTones-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'timeInMilliseconds))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WhichTones-request>) istream)
  "Deserializes a message object of type '<WhichTones-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'timeInMilliseconds) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WhichTones-request>)))
  "Returns string type for a service object of type '<WhichTones-request>"
  "roboy_communication_cognition/WhichTonesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WhichTones-request)))
  "Returns string type for a service object of type 'WhichTones-request"
  "roboy_communication_cognition/WhichTonesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WhichTones-request>)))
  "Returns md5sum for a message object of type '<WhichTones-request>"
  "9bb4a7459b0f3655f623402ca1383bd0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WhichTones-request)))
  "Returns md5sum for a message object of type 'WhichTones-request"
  "9bb4a7459b0f3655f623402ca1383bd0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WhichTones-request>)))
  "Returns full string definition for message of type '<WhichTones-request>"
  (cl:format cl:nil "float32 timeInMilliseconds~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WhichTones-request)))
  "Returns full string definition for message of type 'WhichTones-request"
  (cl:format cl:nil "float32 timeInMilliseconds~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WhichTones-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WhichTones-request>))
  "Converts a ROS message object to a list"
  (cl:list 'WhichTones-request
    (cl:cons ':timeInMilliseconds (timeInMilliseconds msg))
))
;//! \htmlinclude WhichTones-response.msg.html

(cl:defclass <WhichTones-response> (roslisp-msg-protocol:ros-message)
  ((tones
    :reader tones
    :initarg :tones
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (timestamps
    :reader timestamps
    :initarg :timestamps
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass WhichTones-response (<WhichTones-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WhichTones-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WhichTones-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_cognition-srv:<WhichTones-response> is deprecated: use roboy_communication_cognition-srv:WhichTones-response instead.")))

(cl:ensure-generic-function 'tones-val :lambda-list '(m))
(cl:defmethod tones-val ((m <WhichTones-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:tones-val is deprecated.  Use roboy_communication_cognition-srv:tones instead.")
  (tones m))

(cl:ensure-generic-function 'timestamps-val :lambda-list '(m))
(cl:defmethod timestamps-val ((m <WhichTones-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:timestamps-val is deprecated.  Use roboy_communication_cognition-srv:timestamps instead.")
  (timestamps m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WhichTones-response>) ostream)
  "Serializes a message object of type '<WhichTones-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tones))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream))
   (cl:slot-value msg 'tones))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'timestamps))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'timestamps))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WhichTones-response>) istream)
  "Deserializes a message object of type '<WhichTones-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'tones) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'tones)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'timestamps) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'timestamps)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WhichTones-response>)))
  "Returns string type for a service object of type '<WhichTones-response>"
  "roboy_communication_cognition/WhichTonesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WhichTones-response)))
  "Returns string type for a service object of type 'WhichTones-response"
  "roboy_communication_cognition/WhichTonesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WhichTones-response>)))
  "Returns md5sum for a message object of type '<WhichTones-response>"
  "9bb4a7459b0f3655f623402ca1383bd0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WhichTones-response)))
  "Returns md5sum for a message object of type 'WhichTones-response"
  "9bb4a7459b0f3655f623402ca1383bd0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WhichTones-response>)))
  "Returns full string definition for message of type '<WhichTones-response>"
  (cl:format cl:nil "uint16[] tones~%float32[] timestamps~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WhichTones-response)))
  "Returns full string definition for message of type 'WhichTones-response"
  (cl:format cl:nil "uint16[] tones~%float32[] timestamps~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WhichTones-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tones) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'timestamps) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WhichTones-response>))
  "Converts a ROS message object to a list"
  (cl:list 'WhichTones-response
    (cl:cons ':tones (tones msg))
    (cl:cons ':timestamps (timestamps msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'WhichTones)))
  'WhichTones-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'WhichTones)))
  'WhichTones-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WhichTones)))
  "Returns string type for a service object of type '<WhichTones>"
  "roboy_communication_cognition/WhichTones")