; Auto-generated. Do not edit!


(cl:in-package roboy_communication_middleware-msg)


;//! \htmlinclude DarkRoom.msg.html

(cl:defclass <DarkRoom> (roslisp-msg-protocol:ros-message)
  ((objectID
    :reader objectID
    :initarg :objectID
    :type cl:string
    :initform "")
   (timestamp
    :reader timestamp
    :initarg :timestamp
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (sensor_value
    :reader sensor_value
    :initarg :sensor_value
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass DarkRoom (<DarkRoom>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DarkRoom>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DarkRoom)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_middleware-msg:<DarkRoom> is deprecated: use roboy_communication_middleware-msg:DarkRoom instead.")))

(cl:ensure-generic-function 'objectID-val :lambda-list '(m))
(cl:defmethod objectID-val ((m <DarkRoom>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-msg:objectID-val is deprecated.  Use roboy_communication_middleware-msg:objectID instead.")
  (objectID m))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <DarkRoom>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-msg:timestamp-val is deprecated.  Use roboy_communication_middleware-msg:timestamp instead.")
  (timestamp m))

(cl:ensure-generic-function 'sensor_value-val :lambda-list '(m))
(cl:defmethod sensor_value-val ((m <DarkRoom>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-msg:sensor_value-val is deprecated.  Use roboy_communication_middleware-msg:sensor_value instead.")
  (sensor_value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DarkRoom>) ostream)
  "Serializes a message object of type '<DarkRoom>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'objectID))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'objectID))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'timestamp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'timestamp))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sensor_value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'sensor_value))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DarkRoom>) istream)
  "Deserializes a message object of type '<DarkRoom>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'objectID) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'objectID) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'timestamp) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'timestamp)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'sensor_value) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sensor_value)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DarkRoom>)))
  "Returns string type for a message object of type '<DarkRoom>"
  "roboy_communication_middleware/DarkRoom")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DarkRoom)))
  "Returns string type for a message object of type 'DarkRoom"
  "roboy_communication_middleware/DarkRoom")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DarkRoom>)))
  "Returns md5sum for a message object of type '<DarkRoom>"
  "aed743726215b7331fbd6743cff531dc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DarkRoom)))
  "Returns md5sum for a message object of type 'DarkRoom"
  "aed743726215b7331fbd6743cff531dc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DarkRoom>)))
  "Returns full string definition for message of type '<DarkRoom>"
  (cl:format cl:nil "string objectID~%int32[] timestamp~%uint32[] sensor_value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DarkRoom)))
  "Returns full string definition for message of type 'DarkRoom"
  (cl:format cl:nil "string objectID~%int32[] timestamp~%uint32[] sensor_value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DarkRoom>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'objectID))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'timestamp) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sensor_value) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DarkRoom>))
  "Converts a ROS message object to a list"
  (cl:list 'DarkRoom
    (cl:cons ':objectID (objectID msg))
    (cl:cons ':timestamp (timestamp msg))
    (cl:cons ':sensor_value (sensor_value msg))
))
