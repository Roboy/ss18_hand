; Auto-generated. Do not edit!


(cl:in-package roboy_communication_middleware-msg)


;//! \htmlinclude JointStatus.msg.html

(cl:defclass <JointStatus> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (absAngles
    :reader absAngles
    :initarg :absAngles
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (relAngles
    :reader relAngles
    :initarg :relAngles
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (tacho
    :reader tacho
    :initarg :tacho
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (agcGain
    :reader agcGain
    :initarg :agcGain
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (tooFar
    :reader tooFar
    :initarg :tooFar
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil))
   (tooClose
    :reader tooClose
    :initarg :tooClose
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil)))
)

(cl:defclass JointStatus (<JointStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_middleware-msg:<JointStatus> is deprecated: use roboy_communication_middleware-msg:JointStatus instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <JointStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-msg:id-val is deprecated.  Use roboy_communication_middleware-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'absAngles-val :lambda-list '(m))
(cl:defmethod absAngles-val ((m <JointStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-msg:absAngles-val is deprecated.  Use roboy_communication_middleware-msg:absAngles instead.")
  (absAngles m))

(cl:ensure-generic-function 'relAngles-val :lambda-list '(m))
(cl:defmethod relAngles-val ((m <JointStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-msg:relAngles-val is deprecated.  Use roboy_communication_middleware-msg:relAngles instead.")
  (relAngles m))

(cl:ensure-generic-function 'tacho-val :lambda-list '(m))
(cl:defmethod tacho-val ((m <JointStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-msg:tacho-val is deprecated.  Use roboy_communication_middleware-msg:tacho instead.")
  (tacho m))

(cl:ensure-generic-function 'agcGain-val :lambda-list '(m))
(cl:defmethod agcGain-val ((m <JointStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-msg:agcGain-val is deprecated.  Use roboy_communication_middleware-msg:agcGain instead.")
  (agcGain m))

(cl:ensure-generic-function 'tooFar-val :lambda-list '(m))
(cl:defmethod tooFar-val ((m <JointStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-msg:tooFar-val is deprecated.  Use roboy_communication_middleware-msg:tooFar instead.")
  (tooFar m))

(cl:ensure-generic-function 'tooClose-val :lambda-list '(m))
(cl:defmethod tooClose-val ((m <JointStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-msg:tooClose-val is deprecated.  Use roboy_communication_middleware-msg:tooClose instead.")
  (tooClose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointStatus>) ostream)
  "Serializes a message object of type '<JointStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'absAngles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'absAngles))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'relAngles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'relAngles))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tacho))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'tacho))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'agcGain))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'agcGain))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tooFar))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'tooFar))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tooClose))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'tooClose))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointStatus>) istream)
  "Deserializes a message object of type '<JointStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'absAngles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'absAngles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'relAngles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'relAngles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'tacho) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'tacho)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'agcGain) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'agcGain)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'tooFar) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'tooFar)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'tooClose) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'tooClose)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointStatus>)))
  "Returns string type for a message object of type '<JointStatus>"
  "roboy_communication_middleware/JointStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointStatus)))
  "Returns string type for a message object of type 'JointStatus"
  "roboy_communication_middleware/JointStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointStatus>)))
  "Returns md5sum for a message object of type '<JointStatus>"
  "126236eed80c5a19c2a712307f0137f2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointStatus)))
  "Returns md5sum for a message object of type 'JointStatus"
  "126236eed80c5a19c2a712307f0137f2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointStatus>)))
  "Returns full string definition for message of type '<JointStatus>"
  (cl:format cl:nil "uint8 id~%uint32[] absAngles~%uint32[] relAngles~%uint32[] tacho~%uint8[] agcGain~%bool[] tooFar~%bool[] tooClose~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointStatus)))
  "Returns full string definition for message of type 'JointStatus"
  (cl:format cl:nil "uint8 id~%uint32[] absAngles~%uint32[] relAngles~%uint32[] tacho~%uint8[] agcGain~%bool[] tooFar~%bool[] tooClose~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointStatus>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'absAngles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'relAngles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tacho) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'agcGain) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tooFar) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tooClose) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'JointStatus
    (cl:cons ':id (id msg))
    (cl:cons ':absAngles (absAngles msg))
    (cl:cons ':relAngles (relAngles msg))
    (cl:cons ':tacho (tacho msg))
    (cl:cons ':agcGain (agcGain msg))
    (cl:cons ':tooFar (tooFar msg))
    (cl:cons ':tooClose (tooClose msg))
))
