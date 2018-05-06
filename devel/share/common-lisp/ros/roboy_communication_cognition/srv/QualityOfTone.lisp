; Auto-generated. Do not edit!


(cl:in-package roboy_communication_cognition-srv)


;//! \htmlinclude QualityOfTone-request.msg.html

(cl:defclass <QualityOfTone-request> (roslisp-msg-protocol:ros-message)
  ((tone
    :reader tone
    :initarg :tone
    :type cl:string
    :initform "")
   (timeInMilliseconds
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

(cl:defclass QualityOfTone-request (<QualityOfTone-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <QualityOfTone-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'QualityOfTone-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_cognition-srv:<QualityOfTone-request> is deprecated: use roboy_communication_cognition-srv:QualityOfTone-request instead.")))

(cl:ensure-generic-function 'tone-val :lambda-list '(m))
(cl:defmethod tone-val ((m <QualityOfTone-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:tone-val is deprecated.  Use roboy_communication_cognition-srv:tone instead.")
  (tone m))

(cl:ensure-generic-function 'timeInMilliseconds-val :lambda-list '(m))
(cl:defmethod timeInMilliseconds-val ((m <QualityOfTone-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:timeInMilliseconds-val is deprecated.  Use roboy_communication_cognition-srv:timeInMilliseconds instead.")
  (timeInMilliseconds m))

(cl:ensure-generic-function 'majorOnly-val :lambda-list '(m))
(cl:defmethod majorOnly-val ((m <QualityOfTone-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:majorOnly-val is deprecated.  Use roboy_communication_cognition-srv:majorOnly instead.")
  (majorOnly m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <QualityOfTone-request>) ostream)
  "Serializes a message object of type '<QualityOfTone-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'tone))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'tone))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'timeInMilliseconds))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'majorOnly) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <QualityOfTone-request>) istream)
  "Deserializes a message object of type '<QualityOfTone-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tone) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'tone) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'timeInMilliseconds) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'majorOnly) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<QualityOfTone-request>)))
  "Returns string type for a service object of type '<QualityOfTone-request>"
  "roboy_communication_cognition/QualityOfToneRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QualityOfTone-request)))
  "Returns string type for a service object of type 'QualityOfTone-request"
  "roboy_communication_cognition/QualityOfToneRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<QualityOfTone-request>)))
  "Returns md5sum for a message object of type '<QualityOfTone-request>"
  "ebc7c4e9f07e3e393dc5857ee7083482")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'QualityOfTone-request)))
  "Returns md5sum for a message object of type 'QualityOfTone-request"
  "ebc7c4e9f07e3e393dc5857ee7083482")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<QualityOfTone-request>)))
  "Returns full string definition for message of type '<QualityOfTone-request>"
  (cl:format cl:nil "string tone~%float32 timeInMilliseconds~%bool majorOnly~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'QualityOfTone-request)))
  "Returns full string definition for message of type 'QualityOfTone-request"
  (cl:format cl:nil "string tone~%float32 timeInMilliseconds~%bool majorOnly~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <QualityOfTone-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'tone))
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <QualityOfTone-request>))
  "Converts a ROS message object to a list"
  (cl:list 'QualityOfTone-request
    (cl:cons ':tone (tone msg))
    (cl:cons ':timeInMilliseconds (timeInMilliseconds msg))
    (cl:cons ':majorOnly (majorOnly msg))
))
;//! \htmlinclude QualityOfTone-response.msg.html

(cl:defclass <QualityOfTone-response> (roslisp-msg-protocol:ros-message)
  ((quality
    :reader quality
    :initarg :quality
    :type cl:float
    :initform 0.0)
   (purity
    :reader purity
    :initarg :purity
    :type cl:float
    :initform 0.0)
   (directionZ
    :reader directionZ
    :initarg :directionZ
    :type cl:float
    :initform 0.0)
   (directionY
    :reader directionY
    :initarg :directionY
    :type cl:float
    :initform 0.0)
   (hitPin
    :reader hitPin
    :initarg :hitPin
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass QualityOfTone-response (<QualityOfTone-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <QualityOfTone-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'QualityOfTone-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_cognition-srv:<QualityOfTone-response> is deprecated: use roboy_communication_cognition-srv:QualityOfTone-response instead.")))

(cl:ensure-generic-function 'quality-val :lambda-list '(m))
(cl:defmethod quality-val ((m <QualityOfTone-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:quality-val is deprecated.  Use roboy_communication_cognition-srv:quality instead.")
  (quality m))

(cl:ensure-generic-function 'purity-val :lambda-list '(m))
(cl:defmethod purity-val ((m <QualityOfTone-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:purity-val is deprecated.  Use roboy_communication_cognition-srv:purity instead.")
  (purity m))

(cl:ensure-generic-function 'directionZ-val :lambda-list '(m))
(cl:defmethod directionZ-val ((m <QualityOfTone-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:directionZ-val is deprecated.  Use roboy_communication_cognition-srv:directionZ instead.")
  (directionZ m))

(cl:ensure-generic-function 'directionY-val :lambda-list '(m))
(cl:defmethod directionY-val ((m <QualityOfTone-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:directionY-val is deprecated.  Use roboy_communication_cognition-srv:directionY instead.")
  (directionY m))

(cl:ensure-generic-function 'hitPin-val :lambda-list '(m))
(cl:defmethod hitPin-val ((m <QualityOfTone-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-srv:hitPin-val is deprecated.  Use roboy_communication_cognition-srv:hitPin instead.")
  (hitPin m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <QualityOfTone-response>) ostream)
  "Serializes a message object of type '<QualityOfTone-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'quality))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'purity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'directionZ))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'directionY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'hitPin) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <QualityOfTone-response>) istream)
  "Deserializes a message object of type '<QualityOfTone-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'quality) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'purity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'directionZ) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'directionY) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'hitPin) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<QualityOfTone-response>)))
  "Returns string type for a service object of type '<QualityOfTone-response>"
  "roboy_communication_cognition/QualityOfToneResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QualityOfTone-response)))
  "Returns string type for a service object of type 'QualityOfTone-response"
  "roboy_communication_cognition/QualityOfToneResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<QualityOfTone-response>)))
  "Returns md5sum for a message object of type '<QualityOfTone-response>"
  "ebc7c4e9f07e3e393dc5857ee7083482")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'QualityOfTone-response)))
  "Returns md5sum for a message object of type 'QualityOfTone-response"
  "ebc7c4e9f07e3e393dc5857ee7083482")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<QualityOfTone-response>)))
  "Returns full string definition for message of type '<QualityOfTone-response>"
  (cl:format cl:nil "float32 quality~%float32 purity~%float32 directionZ~%float32 directionY~%bool hitPin~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'QualityOfTone-response)))
  "Returns full string definition for message of type 'QualityOfTone-response"
  (cl:format cl:nil "float32 quality~%float32 purity~%float32 directionZ~%float32 directionY~%bool hitPin~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <QualityOfTone-response>))
  (cl:+ 0
     4
     4
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <QualityOfTone-response>))
  "Converts a ROS message object to a list"
  (cl:list 'QualityOfTone-response
    (cl:cons ':quality (quality msg))
    (cl:cons ':purity (purity msg))
    (cl:cons ':directionZ (directionZ msg))
    (cl:cons ':directionY (directionY msg))
    (cl:cons ':hitPin (hitPin msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'QualityOfTone)))
  'QualityOfTone-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'QualityOfTone)))
  'QualityOfTone-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QualityOfTone)))
  "Returns string type for a service object of type '<QualityOfTone>"
  "roboy_communication_cognition/QualityOfTone")