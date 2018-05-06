; Auto-generated. Do not edit!


(cl:in-package roboy_communication_middleware-srv)


;//! \htmlinclude InverseKinematics-request.msg.html

(cl:defclass <InverseKinematics-request> (roslisp-msg-protocol:ros-message)
  ((targetPosition
    :reader targetPosition
    :initarg :targetPosition
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (ankle_left
    :reader ankle_left
    :initarg :ankle_left
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (ankle_right_sensor
    :reader ankle_right_sensor
    :initarg :ankle_right_sensor
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (lighthouse_sensor_id
    :reader lighthouse_sensor_id
    :initarg :lighthouse_sensor_id
    :type cl:integer
    :initform 0)
   (initial_angles
    :reader initial_angles
    :initarg :initial_angles
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (inspect
    :reader inspect
    :initarg :inspect
    :type cl:boolean
    :initform cl:nil)
   (visualize_initial
    :reader visualize_initial
    :initarg :visualize_initial
    :type cl:boolean
    :initform cl:nil)
   (visualize_result
    :reader visualize_result
    :initarg :visualize_result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass InverseKinematics-request (<InverseKinematics-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InverseKinematics-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InverseKinematics-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_middleware-srv:<InverseKinematics-request> is deprecated: use roboy_communication_middleware-srv:InverseKinematics-request instead.")))

(cl:ensure-generic-function 'targetPosition-val :lambda-list '(m))
(cl:defmethod targetPosition-val ((m <InverseKinematics-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-srv:targetPosition-val is deprecated.  Use roboy_communication_middleware-srv:targetPosition instead.")
  (targetPosition m))

(cl:ensure-generic-function 'ankle_left-val :lambda-list '(m))
(cl:defmethod ankle_left-val ((m <InverseKinematics-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-srv:ankle_left-val is deprecated.  Use roboy_communication_middleware-srv:ankle_left instead.")
  (ankle_left m))

(cl:ensure-generic-function 'ankle_right_sensor-val :lambda-list '(m))
(cl:defmethod ankle_right_sensor-val ((m <InverseKinematics-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-srv:ankle_right_sensor-val is deprecated.  Use roboy_communication_middleware-srv:ankle_right_sensor instead.")
  (ankle_right_sensor m))

(cl:ensure-generic-function 'lighthouse_sensor_id-val :lambda-list '(m))
(cl:defmethod lighthouse_sensor_id-val ((m <InverseKinematics-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-srv:lighthouse_sensor_id-val is deprecated.  Use roboy_communication_middleware-srv:lighthouse_sensor_id instead.")
  (lighthouse_sensor_id m))

(cl:ensure-generic-function 'initial_angles-val :lambda-list '(m))
(cl:defmethod initial_angles-val ((m <InverseKinematics-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-srv:initial_angles-val is deprecated.  Use roboy_communication_middleware-srv:initial_angles instead.")
  (initial_angles m))

(cl:ensure-generic-function 'inspect-val :lambda-list '(m))
(cl:defmethod inspect-val ((m <InverseKinematics-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-srv:inspect-val is deprecated.  Use roboy_communication_middleware-srv:inspect instead.")
  (inspect m))

(cl:ensure-generic-function 'visualize_initial-val :lambda-list '(m))
(cl:defmethod visualize_initial-val ((m <InverseKinematics-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-srv:visualize_initial-val is deprecated.  Use roboy_communication_middleware-srv:visualize_initial instead.")
  (visualize_initial m))

(cl:ensure-generic-function 'visualize_result-val :lambda-list '(m))
(cl:defmethod visualize_result-val ((m <InverseKinematics-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-srv:visualize_result-val is deprecated.  Use roboy_communication_middleware-srv:visualize_result instead.")
  (visualize_result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InverseKinematics-request>) ostream)
  "Serializes a message object of type '<InverseKinematics-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'targetPosition) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ankle_left) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ankle_right_sensor) ostream)
  (cl:let* ((signed (cl:slot-value msg 'lighthouse_sensor_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'initial_angles))))
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
   (cl:slot-value msg 'initial_angles))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'inspect) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'visualize_initial) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'visualize_result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InverseKinematics-request>) istream)
  "Deserializes a message object of type '<InverseKinematics-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'targetPosition) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ankle_left) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ankle_right_sensor) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lighthouse_sensor_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'initial_angles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'initial_angles)))
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
    (cl:setf (cl:slot-value msg 'inspect) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'visualize_initial) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'visualize_result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InverseKinematics-request>)))
  "Returns string type for a service object of type '<InverseKinematics-request>"
  "roboy_communication_middleware/InverseKinematicsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InverseKinematics-request)))
  "Returns string type for a service object of type 'InverseKinematics-request"
  "roboy_communication_middleware/InverseKinematicsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InverseKinematics-request>)))
  "Returns md5sum for a message object of type '<InverseKinematics-request>"
  "7ed4cab343a38215cfd78eb6ab4e3999")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InverseKinematics-request)))
  "Returns md5sum for a message object of type 'InverseKinematics-request"
  "7ed4cab343a38215cfd78eb6ab4e3999")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InverseKinematics-request>)))
  "Returns full string definition for message of type '<InverseKinematics-request>"
  (cl:format cl:nil "~%geometry_msgs/Vector3 targetPosition~%~%geometry_msgs/Vector3 ankle_left~%~%geometry_msgs/Vector3 ankle_right_sensor~%~%~%int32 lighthouse_sensor_id~%~%float64[] initial_angles~%~%bool inspect~%bool visualize_initial~%bool visualize_result~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InverseKinematics-request)))
  "Returns full string definition for message of type 'InverseKinematics-request"
  (cl:format cl:nil "~%geometry_msgs/Vector3 targetPosition~%~%geometry_msgs/Vector3 ankle_left~%~%geometry_msgs/Vector3 ankle_right_sensor~%~%~%int32 lighthouse_sensor_id~%~%float64[] initial_angles~%~%bool inspect~%bool visualize_initial~%bool visualize_result~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InverseKinematics-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'targetPosition))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ankle_left))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ankle_right_sensor))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'initial_angles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InverseKinematics-request>))
  "Converts a ROS message object to a list"
  (cl:list 'InverseKinematics-request
    (cl:cons ':targetPosition (targetPosition msg))
    (cl:cons ':ankle_left (ankle_left msg))
    (cl:cons ':ankle_right_sensor (ankle_right_sensor msg))
    (cl:cons ':lighthouse_sensor_id (lighthouse_sensor_id msg))
    (cl:cons ':initial_angles (initial_angles msg))
    (cl:cons ':inspect (inspect msg))
    (cl:cons ':visualize_initial (visualize_initial msg))
    (cl:cons ':visualize_result (visualize_result msg))
))
;//! \htmlinclude InverseKinematics-response.msg.html

(cl:defclass <InverseKinematics-response> (roslisp-msg-protocol:ros-message)
  ((angles
    :reader angles
    :initarg :angles
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (resultPosition
    :reader resultPosition
    :initarg :resultPosition
    :type (cl:vector geometry_msgs-msg:Vector3)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Vector3 :initial-element (cl:make-instance 'geometry_msgs-msg:Vector3))))
)

(cl:defclass InverseKinematics-response (<InverseKinematics-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InverseKinematics-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InverseKinematics-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_middleware-srv:<InverseKinematics-response> is deprecated: use roboy_communication_middleware-srv:InverseKinematics-response instead.")))

(cl:ensure-generic-function 'angles-val :lambda-list '(m))
(cl:defmethod angles-val ((m <InverseKinematics-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-srv:angles-val is deprecated.  Use roboy_communication_middleware-srv:angles instead.")
  (angles m))

(cl:ensure-generic-function 'resultPosition-val :lambda-list '(m))
(cl:defmethod resultPosition-val ((m <InverseKinematics-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-srv:resultPosition-val is deprecated.  Use roboy_communication_middleware-srv:resultPosition instead.")
  (resultPosition m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InverseKinematics-response>) ostream)
  "Serializes a message object of type '<InverseKinematics-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'angles))))
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
   (cl:slot-value msg 'angles))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'resultPosition))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'resultPosition))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InverseKinematics-response>) istream)
  "Deserializes a message object of type '<InverseKinematics-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'angles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'angles)))
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
  (cl:setf (cl:slot-value msg 'resultPosition) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'resultPosition)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Vector3))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InverseKinematics-response>)))
  "Returns string type for a service object of type '<InverseKinematics-response>"
  "roboy_communication_middleware/InverseKinematicsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InverseKinematics-response)))
  "Returns string type for a service object of type 'InverseKinematics-response"
  "roboy_communication_middleware/InverseKinematicsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InverseKinematics-response>)))
  "Returns md5sum for a message object of type '<InverseKinematics-response>"
  "7ed4cab343a38215cfd78eb6ab4e3999")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InverseKinematics-response)))
  "Returns md5sum for a message object of type 'InverseKinematics-response"
  "7ed4cab343a38215cfd78eb6ab4e3999")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InverseKinematics-response>)))
  "Returns full string definition for message of type '<InverseKinematics-response>"
  (cl:format cl:nil "~%float64[] angles~%~%geometry_msgs/Vector3[] resultPosition~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InverseKinematics-response)))
  "Returns full string definition for message of type 'InverseKinematics-response"
  (cl:format cl:nil "~%float64[] angles~%~%geometry_msgs/Vector3[] resultPosition~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InverseKinematics-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'angles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'resultPosition) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InverseKinematics-response>))
  "Converts a ROS message object to a list"
  (cl:list 'InverseKinematics-response
    (cl:cons ':angles (angles msg))
    (cl:cons ':resultPosition (resultPosition msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'InverseKinematics)))
  'InverseKinematics-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'InverseKinematics)))
  'InverseKinematics-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InverseKinematics)))
  "Returns string type for a service object of type '<InverseKinematics>"
  "roboy_communication_middleware/InverseKinematics")