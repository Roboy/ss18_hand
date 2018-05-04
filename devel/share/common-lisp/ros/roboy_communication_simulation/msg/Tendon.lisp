; Auto-generated. Do not edit!


(cl:in-package roboy_communication_simulation-msg)


;//! \htmlinclude Tendon.msg.html

(cl:defclass <Tendon> (roslisp-msg-protocol:ros-message)
  ((roboyID
    :reader roboyID
    :initarg :roboyID
    :type cl:integer
    :initform 0)
   (viaPoints
    :reader viaPoints
    :initarg :viaPoints
    :type (cl:vector geometry_msgs-msg:Vector3)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Vector3 :initial-element (cl:make-instance 'geometry_msgs-msg:Vector3))))
)

(cl:defclass Tendon (<Tendon>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Tendon>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Tendon)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_simulation-msg:<Tendon> is deprecated: use roboy_communication_simulation-msg:Tendon instead.")))

(cl:ensure-generic-function 'roboyID-val :lambda-list '(m))
(cl:defmethod roboyID-val ((m <Tendon>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_simulation-msg:roboyID-val is deprecated.  Use roboy_communication_simulation-msg:roboyID instead.")
  (roboyID m))

(cl:ensure-generic-function 'viaPoints-val :lambda-list '(m))
(cl:defmethod viaPoints-val ((m <Tendon>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_simulation-msg:viaPoints-val is deprecated.  Use roboy_communication_simulation-msg:viaPoints instead.")
  (viaPoints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Tendon>) ostream)
  "Serializes a message object of type '<Tendon>"
  (cl:let* ((signed (cl:slot-value msg 'roboyID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'viaPoints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'viaPoints))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Tendon>) istream)
  "Deserializes a message object of type '<Tendon>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'roboyID) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'viaPoints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'viaPoints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Vector3))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Tendon>)))
  "Returns string type for a message object of type '<Tendon>"
  "roboy_communication_simulation/Tendon")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Tendon)))
  "Returns string type for a message object of type 'Tendon"
  "roboy_communication_simulation/Tendon")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Tendon>)))
  "Returns md5sum for a message object of type '<Tendon>"
  "6a1def8dc9efa9f1180288df5984e8b7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Tendon)))
  "Returns md5sum for a message object of type 'Tendon"
  "6a1def8dc9efa9f1180288df5984e8b7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Tendon>)))
  "Returns full string definition for message of type '<Tendon>"
  (cl:format cl:nil "int32 roboyID~%geometry_msgs/Vector3[] viaPoints~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Tendon)))
  "Returns full string definition for message of type 'Tendon"
  (cl:format cl:nil "int32 roboyID~%geometry_msgs/Vector3[] viaPoints~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Tendon>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'viaPoints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Tendon>))
  "Converts a ROS message object to a list"
  (cl:list 'Tendon
    (cl:cons ':roboyID (roboyID msg))
    (cl:cons ':viaPoints (viaPoints msg))
))
