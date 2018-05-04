; Auto-generated. Do not edit!


(cl:in-package roboy_communication_cognition-srv)


;//! \htmlinclude QualityOfTones-request.msg.html

(cl:defclass <QualityOfTones-request> (roslisp-msg-protocol:ros-message)
  ((timeInMilliseconds
    :reader timeInMilliseconds
    :initarg :timeInMilliseconds
    :type cl:float
    :initform 0.0)
   (majorOnly
    :reader majorOnly
    :initarg :majorOnly
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass QualityOfTones-request (<QualityOfTones-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <QualityOfTones-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'QualityOfTones-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_cognition-srv:<QualityOfTones-request> is deprecated: use roboy_communication_cognition-srv:QualityOfTones-request instead.")))

(cl:ensure-generic-function 'timeInMilliseconds-val :lambda-list '(m))
(cl:defmethod timeInMilliseconds-val ((m <QualityOfTones-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:timeInMilliseconds-val is deprecated.  Use roboy_communication_cognition-srv:timeInMilliseconds instead.")
  (timeInMilliseconds m))

(cl:ensure-generic-function 'majorOnly-val :lambda-list '(m))
(cl:defmethod majorOnly-val ((m <QualityOfTones-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:majorOnly-val is deprecated.  Use roboy_communication_cognition-srv:majorOnly instead.")
  (majorOnly m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <QualityOfTones-request>) ostream)
  "Serializes a message object of type '<QualityOfTones-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'timeInMilliseconds))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'majorOnly) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <QualityOfTones-request>) istream)
  "Deserializes a message object of type '<QualityOfTones-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'timeInMilliseconds) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'majorOnly) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<QualityOfTones-request>)))
  "Returns string type for a service object of type '<QualityOfTones-request>"
  "roboy_communication_cognition/QualityOfTonesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QualityOfTones-request)))
  "Returns string type for a service object of type 'QualityOfTones-request"
  "roboy_communication_cognition/QualityOfTonesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<QualityOfTones-request>)))
  "Returns md5sum for a message object of type '<QualityOfTones-request>"
  "b0819310d2b88551910c5d4d0c08bb51")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'QualityOfTones-request)))
  "Returns md5sum for a message object of type 'QualityOfTones-request"
  "b0819310d2b88551910c5d4d0c08bb51")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<QualityOfTones-request>)))
  "Returns full string definition for message of type '<QualityOfTones-request>"
  (cl:format cl:nil "float32 timeInMilliseconds~%bool majorOnly~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'QualityOfTones-request)))
  "Returns full string definition for message of type 'QualityOfTones-request"
  (cl:format cl:nil "float32 timeInMilliseconds~%bool majorOnly~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <QualityOfTones-request>))
  (cl:+ 0
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <QualityOfTones-request>))
  "Converts a ROS message object to a list"
  (cl:list 'QualityOfTones-request
    (cl:cons ':timeInMilliseconds (timeInMilliseconds msg))
    (cl:cons ':majorOnly (majorOnly msg))
))
;//! \htmlinclude QualityOfTones-response.msg.html

(cl:defclass <QualityOfTones-response> (roslisp-msg-protocol:ros-message)
  ((quality
    :reader quality
    :initarg :quality
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (purity
    :reader purity
    :initarg :purity
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (directionZ
    :reader directionZ
    :initarg :directionZ
    :type cl:float
    :initform 0.0)
   (directionY
    :reader directionY
    :initarg :directionY
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (hitPin
    :reader hitPin
    :initarg :hitPin
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass QualityOfTones-response (<QualityOfTones-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <QualityOfTones-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'QualityOfTones-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_cognition-srv:<QualityOfTones-response> is deprecated: use roboy_communication_cognition-srv:QualityOfTones-response instead.")))

(cl:ensure-generic-function 'quality-val :lambda-list '(m))
(cl:defmethod quality-val ((m <QualityOfTones-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:quality-val is deprecated.  Use roboy_communication_cognition-srv:quality instead.")
  (quality m))

(cl:ensure-generic-function 'purity-val :lambda-list '(m))
(cl:defmethod purity-val ((m <QualityOfTones-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:purity-val is deprecated.  Use roboy_communication_cognition-srv:purity instead.")
  (purity m))

(cl:ensure-generic-function 'directionZ-val :lambda-list '(m))
(cl:defmethod directionZ-val ((m <QualityOfTones-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:directionZ-val is deprecated.  Use roboy_communication_cognition-srv:directionZ instead.")
  (directionZ m))

(cl:ensure-generic-function 'directionY-val :lambda-list '(m))
(cl:defmethod directionY-val ((m <QualityOfTones-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:directionY-val is deprecated.  Use roboy_communication_cognition-srv:directionY instead.")
  (directionY m))

(cl:ensure-generic-function 'hitPin-val :lambda-list '(m))
(cl:defmethod hitPin-val ((m <QualityOfTones-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:hitPin-val is deprecated.  Use roboy_communication_cognition-srv:hitPin instead.")
  (hitPin m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <QualityOfTones-response>) ostream)
  "Serializes a message object of type '<QualityOfTones-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'quality))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'quality))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'purity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'purity))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'directionZ))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'directionY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'directionY))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'hitPin) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <QualityOfTones-response>) istream)
  "Deserializes a message object of type '<QualityOfTones-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'quality) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'quality)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'purity) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'purity)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'directionZ) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'directionY) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'directionY)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:setf (cl:slot-value msg 'hitPin) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<QualityOfTones-response>)))
  "Returns string type for a service object of type '<QualityOfTones-response>"
  "roboy_communication_cognition/QualityOfTonesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QualityOfTones-response)))
  "Returns string type for a service object of type 'QualityOfTones-response"
  "roboy_communication_cognition/QualityOfTonesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<QualityOfTones-response>)))
  "Returns md5sum for a message object of type '<QualityOfTones-response>"
  "b0819310d2b88551910c5d4d0c08bb51")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'QualityOfTones-response)))
  "Returns md5sum for a message object of type 'QualityOfTones-response"
  "b0819310d2b88551910c5d4d0c08bb51")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<QualityOfTones-response>)))
  "Returns full string definition for message of type '<QualityOfTones-response>"
  (cl:format cl:nil "float32[] quality~%float32[] purity~%float32 directionZ~%float32[] directionY~%bool hitPin~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'QualityOfTones-response)))
  "Returns full string definition for message of type 'QualityOfTones-response"
  (cl:format cl:nil "float32[] quality~%float32[] purity~%float32 directionZ~%float32[] directionY~%bool hitPin~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <QualityOfTones-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'quality) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'purity) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'directionY) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <QualityOfTones-response>))
  "Converts a ROS message object to a list"
  (cl:list 'QualityOfTones-response
    (cl:cons ':quality (quality msg))
    (cl:cons ':purity (purity msg))
    (cl:cons ':directionZ (directionZ msg))
    (cl:cons ':directionY (directionY msg))
    (cl:cons ':hitPin (hitPin msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'QualityOfTones)))
  'QualityOfTones-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'QualityOfTones)))
  'QualityOfTones-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QualityOfTones)))
  "Returns string type for a service object of type '<QualityOfTones>"
  "roboy_communication_cognition/QualityOfTones")