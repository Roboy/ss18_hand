; Auto-generated. Do not edit!


(cl:in-package roboy_communication_middleware-msg)


;//! \htmlinclude LighthousePoseCorrection.msg.html

(cl:defclass <LighthousePoseCorrection> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type cl:integer
    :initform 0)
   (tf
    :reader tf
    :initarg :tf
    :type geometry_msgs-msg:Transform
    :initform (cl:make-instance 'geometry_msgs-msg:Transform)))
)

(cl:defclass LighthousePoseCorrection (<LighthousePoseCorrection>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LighthousePoseCorrection>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LighthousePoseCorrection)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_middleware-msg:<LighthousePoseCorrection> is deprecated: use roboy_communication_middleware-msg:LighthousePoseCorrection instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <LighthousePoseCorrection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-msg:id-val is deprecated.  Use roboy_communication_middleware-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <LighthousePoseCorrection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-msg:type-val is deprecated.  Use roboy_communication_middleware-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'tf-val :lambda-list '(m))
(cl:defmethod tf-val ((m <LighthousePoseCorrection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-msg:tf-val is deprecated.  Use roboy_communication_middleware-msg:tf instead.")
  (tf m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LighthousePoseCorrection>) ostream)
  "Serializes a message object of type '<LighthousePoseCorrection>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'type)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'tf) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LighthousePoseCorrection>) istream)
  "Deserializes a message object of type '<LighthousePoseCorrection>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'type)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'tf) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LighthousePoseCorrection>)))
  "Returns string type for a message object of type '<LighthousePoseCorrection>"
  "roboy_communication_middleware/LighthousePoseCorrection")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LighthousePoseCorrection)))
  "Returns string type for a message object of type 'LighthousePoseCorrection"
  "roboy_communication_middleware/LighthousePoseCorrection")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LighthousePoseCorrection>)))
  "Returns md5sum for a message object of type '<LighthousePoseCorrection>"
  "4dd1f4419400b4a93663e6e275eb162e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LighthousePoseCorrection)))
  "Returns md5sum for a message object of type 'LighthousePoseCorrection"
  "4dd1f4419400b4a93663e6e275eb162e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LighthousePoseCorrection>)))
  "Returns full string definition for message of type '<LighthousePoseCorrection>"
  (cl:format cl:nil "int32 id~%uint32 type~%geometry_msgs/Transform tf~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LighthousePoseCorrection)))
  "Returns full string definition for message of type 'LighthousePoseCorrection"
  (cl:format cl:nil "int32 id~%uint32 type~%geometry_msgs/Transform tf~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LighthousePoseCorrection>))
  (cl:+ 0
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'tf))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LighthousePoseCorrection>))
  "Converts a ROS message object to a list"
  (cl:list 'LighthousePoseCorrection
    (cl:cons ':id (id msg))
    (cl:cons ':type (type msg))
    (cl:cons ':tf (tf msg))
))
