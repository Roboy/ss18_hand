; Auto-generated. Do not edit!


(cl:in-package roboy_communication_middleware-msg)


;//! \htmlinclude MotorRecordConfig.msg.html

(cl:defclass <MotorRecordConfig> (roslisp-msg-protocol:ros-message)
  ((ids
    :reader ids
    :initarg :ids
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (control_mode
    :reader control_mode
    :initarg :control_mode
    :type cl:fixnum
    :initform 0)
   (samplingTime
    :reader samplingTime
    :initarg :samplingTime
    :type cl:integer
    :initform 0)
   (recordTime
    :reader recordTime
    :initarg :recordTime
    :type cl:integer
    :initform 0))
)

(cl:defclass MotorRecordConfig (<MotorRecordConfig>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotorRecordConfig>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotorRecordConfig)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_middleware-msg:<MotorRecordConfig> is deprecated: use roboy_communication_middleware-msg:MotorRecordConfig instead.")))

(cl:ensure-generic-function 'ids-val :lambda-list '(m))
(cl:defmethod ids-val ((m <MotorRecordConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-msg:ids-val is deprecated.  Use roboy_communication_middleware-msg:ids instead.")
  (ids m))

(cl:ensure-generic-function 'control_mode-val :lambda-list '(m))
(cl:defmethod control_mode-val ((m <MotorRecordConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-msg:control_mode-val is deprecated.  Use roboy_communication_middleware-msg:control_mode instead.")
  (control_mode m))

(cl:ensure-generic-function 'samplingTime-val :lambda-list '(m))
(cl:defmethod samplingTime-val ((m <MotorRecordConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-msg:samplingTime-val is deprecated.  Use roboy_communication_middleware-msg:samplingTime instead.")
  (samplingTime m))

(cl:ensure-generic-function 'recordTime-val :lambda-list '(m))
(cl:defmethod recordTime-val ((m <MotorRecordConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-msg:recordTime-val is deprecated.  Use roboy_communication_middleware-msg:recordTime instead.")
  (recordTime m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotorRecordConfig>) ostream)
  "Serializes a message object of type '<MotorRecordConfig>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ids))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'ids))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'control_mode)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'samplingTime)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'recordTime)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotorRecordConfig>) istream)
  "Deserializes a message object of type '<MotorRecordConfig>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ids)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'control_mode)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'samplingTime) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'recordTime) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotorRecordConfig>)))
  "Returns string type for a message object of type '<MotorRecordConfig>"
  "roboy_communication_middleware/MotorRecordConfig")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorRecordConfig)))
  "Returns string type for a message object of type 'MotorRecordConfig"
  "roboy_communication_middleware/MotorRecordConfig")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotorRecordConfig>)))
  "Returns md5sum for a message object of type '<MotorRecordConfig>"
  "4bdc623fa132fbb9601cc1d66046343b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotorRecordConfig)))
  "Returns md5sum for a message object of type 'MotorRecordConfig"
  "4bdc623fa132fbb9601cc1d66046343b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotorRecordConfig>)))
  "Returns full string definition for message of type '<MotorRecordConfig>"
  (cl:format cl:nil "uint8[] ids~%uint8 control_mode~%int32 samplingTime~%int32 recordTime~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotorRecordConfig)))
  "Returns full string definition for message of type 'MotorRecordConfig"
  (cl:format cl:nil "uint8[] ids~%uint8 control_mode~%int32 samplingTime~%int32 recordTime~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotorRecordConfig>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotorRecordConfig>))
  "Converts a ROS message object to a list"
  (cl:list 'MotorRecordConfig
    (cl:cons ':ids (ids msg))
    (cl:cons ':control_mode (control_mode msg))
    (cl:cons ':samplingTime (samplingTime msg))
    (cl:cons ':recordTime (recordTime msg))
))
