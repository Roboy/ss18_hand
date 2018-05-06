; Auto-generated. Do not edit!


(cl:in-package roboy_communication_middleware-srv)


;//! \htmlinclude MotorCalibrationService-request.msg.html

(cl:defclass <MotorCalibrationService-request> (roslisp-msg-protocol:ros-message)
  ((fpga
    :reader fpga
    :initarg :fpga
    :type cl:integer
    :initform 0)
   (motor
    :reader motor
    :initarg :motor
    :type cl:integer
    :initform 0)
   (degree
    :reader degree
    :initarg :degree
    :type cl:integer
    :initform 0)
   (timeout
    :reader timeout
    :initarg :timeout
    :type cl:integer
    :initform 0)
   (numberOfDataPoints
    :reader numberOfDataPoints
    :initarg :numberOfDataPoints
    :type cl:integer
    :initform 0)
   (displacement_min
    :reader displacement_min
    :initarg :displacement_min
    :type cl:integer
    :initform 0)
   (displacement_max
    :reader displacement_max
    :initarg :displacement_max
    :type cl:integer
    :initform 0))
)

(cl:defclass MotorCalibrationService-request (<MotorCalibrationService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotorCalibrationService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotorCalibrationService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_middleware-srv:<MotorCalibrationService-request> is deprecated: use roboy_communication_middleware-srv:MotorCalibrationService-request instead.")))

(cl:ensure-generic-function 'fpga-val :lambda-list '(m))
(cl:defmethod fpga-val ((m <MotorCalibrationService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-srv:fpga-val is deprecated.  Use roboy_communication_middleware-srv:fpga instead.")
  (fpga m))

(cl:ensure-generic-function 'motor-val :lambda-list '(m))
(cl:defmethod motor-val ((m <MotorCalibrationService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-srv:motor-val is deprecated.  Use roboy_communication_middleware-srv:motor instead.")
  (motor m))

(cl:ensure-generic-function 'degree-val :lambda-list '(m))
(cl:defmethod degree-val ((m <MotorCalibrationService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-srv:degree-val is deprecated.  Use roboy_communication_middleware-srv:degree instead.")
  (degree m))

(cl:ensure-generic-function 'timeout-val :lambda-list '(m))
(cl:defmethod timeout-val ((m <MotorCalibrationService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-srv:timeout-val is deprecated.  Use roboy_communication_middleware-srv:timeout instead.")
  (timeout m))

(cl:ensure-generic-function 'numberOfDataPoints-val :lambda-list '(m))
(cl:defmethod numberOfDataPoints-val ((m <MotorCalibrationService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-srv:numberOfDataPoints-val is deprecated.  Use roboy_communication_middleware-srv:numberOfDataPoints instead.")
  (numberOfDataPoints m))

(cl:ensure-generic-function 'displacement_min-val :lambda-list '(m))
(cl:defmethod displacement_min-val ((m <MotorCalibrationService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-srv:displacement_min-val is deprecated.  Use roboy_communication_middleware-srv:displacement_min instead.")
  (displacement_min m))

(cl:ensure-generic-function 'displacement_max-val :lambda-list '(m))
(cl:defmethod displacement_max-val ((m <MotorCalibrationService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-srv:displacement_max-val is deprecated.  Use roboy_communication_middleware-srv:displacement_max instead.")
  (displacement_max m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotorCalibrationService-request>) ostream)
  "Serializes a message object of type '<MotorCalibrationService-request>"
  (cl:let* ((signed (cl:slot-value msg 'fpga)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'motor)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'degree)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'timeout)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'numberOfDataPoints)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'displacement_min)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'displacement_max)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotorCalibrationService-request>) istream)
  "Deserializes a message object of type '<MotorCalibrationService-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'fpga) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motor) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'degree) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'timeout) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'numberOfDataPoints) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'displacement_min) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'displacement_max) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotorCalibrationService-request>)))
  "Returns string type for a service object of type '<MotorCalibrationService-request>"
  "roboy_communication_middleware/MotorCalibrationServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorCalibrationService-request)))
  "Returns string type for a service object of type 'MotorCalibrationService-request"
  "roboy_communication_middleware/MotorCalibrationServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotorCalibrationService-request>)))
  "Returns md5sum for a message object of type '<MotorCalibrationService-request>"
  "78e9593b5280af42e349c156e06528a2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotorCalibrationService-request)))
  "Returns md5sum for a message object of type 'MotorCalibrationService-request"
  "78e9593b5280af42e349c156e06528a2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotorCalibrationService-request>)))
  "Returns full string definition for message of type '<MotorCalibrationService-request>"
  (cl:format cl:nil "int32 fpga~%int32 motor~%int32 degree~%int32 timeout~%int32 numberOfDataPoints~%int32 displacement_min~%int32 displacement_max~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotorCalibrationService-request)))
  "Returns full string definition for message of type 'MotorCalibrationService-request"
  (cl:format cl:nil "int32 fpga~%int32 motor~%int32 degree~%int32 timeout~%int32 numberOfDataPoints~%int32 displacement_min~%int32 displacement_max~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotorCalibrationService-request>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotorCalibrationService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MotorCalibrationService-request
    (cl:cons ':fpga (fpga msg))
    (cl:cons ':motor (motor msg))
    (cl:cons ':degree (degree msg))
    (cl:cons ':timeout (timeout msg))
    (cl:cons ':numberOfDataPoints (numberOfDataPoints msg))
    (cl:cons ':displacement_min (displacement_min msg))
    (cl:cons ':displacement_max (displacement_max msg))
))
;//! \htmlinclude MotorCalibrationService-response.msg.html

(cl:defclass <MotorCalibrationService-response> (roslisp-msg-protocol:ros-message)
  ((estimated_spring_parameters
    :reader estimated_spring_parameters
    :initarg :estimated_spring_parameters
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (load
    :reader load
    :initarg :load
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (displacement
    :reader displacement
    :initarg :displacement
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass MotorCalibrationService-response (<MotorCalibrationService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotorCalibrationService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotorCalibrationService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_middleware-srv:<MotorCalibrationService-response> is deprecated: use roboy_communication_middleware-srv:MotorCalibrationService-response instead.")))

(cl:ensure-generic-function 'estimated_spring_parameters-val :lambda-list '(m))
(cl:defmethod estimated_spring_parameters-val ((m <MotorCalibrationService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-srv:estimated_spring_parameters-val is deprecated.  Use roboy_communication_middleware-srv:estimated_spring_parameters instead.")
  (estimated_spring_parameters m))

(cl:ensure-generic-function 'load-val :lambda-list '(m))
(cl:defmethod load-val ((m <MotorCalibrationService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-srv:load-val is deprecated.  Use roboy_communication_middleware-srv:load instead.")
  (load m))

(cl:ensure-generic-function 'displacement-val :lambda-list '(m))
(cl:defmethod displacement-val ((m <MotorCalibrationService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-srv:displacement-val is deprecated.  Use roboy_communication_middleware-srv:displacement instead.")
  (displacement m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotorCalibrationService-response>) ostream)
  "Serializes a message object of type '<MotorCalibrationService-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'estimated_spring_parameters))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'estimated_spring_parameters))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'load))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'load))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'displacement))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'displacement))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotorCalibrationService-response>) istream)
  "Deserializes a message object of type '<MotorCalibrationService-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'estimated_spring_parameters) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'estimated_spring_parameters)))
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
  (cl:setf (cl:slot-value msg 'load) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'load)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'displacement) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'displacement)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotorCalibrationService-response>)))
  "Returns string type for a service object of type '<MotorCalibrationService-response>"
  "roboy_communication_middleware/MotorCalibrationServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorCalibrationService-response)))
  "Returns string type for a service object of type 'MotorCalibrationService-response"
  "roboy_communication_middleware/MotorCalibrationServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotorCalibrationService-response>)))
  "Returns md5sum for a message object of type '<MotorCalibrationService-response>"
  "78e9593b5280af42e349c156e06528a2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotorCalibrationService-response)))
  "Returns md5sum for a message object of type 'MotorCalibrationService-response"
  "78e9593b5280af42e349c156e06528a2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotorCalibrationService-response>)))
  "Returns full string definition for message of type '<MotorCalibrationService-response>"
  (cl:format cl:nil "float32[] estimated_spring_parameters~%float64[] load~%float64[] displacement~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotorCalibrationService-response)))
  "Returns full string definition for message of type 'MotorCalibrationService-response"
  (cl:format cl:nil "float32[] estimated_spring_parameters~%float64[] load~%float64[] displacement~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotorCalibrationService-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'estimated_spring_parameters) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'load) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'displacement) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotorCalibrationService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MotorCalibrationService-response
    (cl:cons ':estimated_spring_parameters (estimated_spring_parameters msg))
    (cl:cons ':load (load msg))
    (cl:cons ':displacement (displacement msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MotorCalibrationService)))
  'MotorCalibrationService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MotorCalibrationService)))
  'MotorCalibrationService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorCalibrationService)))
  "Returns string type for a service object of type '<MotorCalibrationService>"
  "roboy_communication_middleware/MotorCalibrationService")