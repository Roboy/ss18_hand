; Auto-generated. Do not edit!


(cl:in-package roboy_communication_middleware-msg)


;//! \htmlinclude HandCommand.msg.html

(cl:defclass <HandCommand> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (setPoint
    :reader setPoint
    :initarg :setPoint
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (motorid
    :reader motorid
    :initarg :motorid
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass HandCommand (<HandCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HandCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HandCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_middleware-msg:<HandCommand> is deprecated: use roboy_communication_middleware-msg:HandCommand instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <HandCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-msg:id-val is deprecated.  Use roboy_communication_middleware-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'setPoint-val :lambda-list '(m))
(cl:defmethod setPoint-val ((m <HandCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-msg:setPoint-val is deprecated.  Use roboy_communication_middleware-msg:setPoint instead.")
  (setPoint m))

(cl:ensure-generic-function 'motorid-val :lambda-list '(m))
(cl:defmethod motorid-val ((m <HandCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-msg:motorid-val is deprecated.  Use roboy_communication_middleware-msg:motorid instead.")
  (motorid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HandCommand>) ostream)
  "Serializes a message object of type '<HandCommand>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'setPoint))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'setPoint))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'motorid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'motorid))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HandCommand>) istream)
  "Deserializes a message object of type '<HandCommand>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'setPoint) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'setPoint)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'motorid) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'motorid)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HandCommand>)))
  "Returns string type for a message object of type '<HandCommand>"
  "roboy_communication_middleware/HandCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HandCommand)))
  "Returns string type for a message object of type 'HandCommand"
  "roboy_communication_middleware/HandCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HandCommand>)))
  "Returns md5sum for a message object of type '<HandCommand>"
  "33ffaf8168256fe4b3d8ba74b9a0642d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HandCommand)))
  "Returns md5sum for a message object of type 'HandCommand"
  "33ffaf8168256fe4b3d8ba74b9a0642d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HandCommand>)))
  "Returns full string definition for message of type '<HandCommand>"
  (cl:format cl:nil "uint8 id~%uint8[] setPoint~%uint8[] motorid~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HandCommand)))
  "Returns full string definition for message of type 'HandCommand"
  (cl:format cl:nil "uint8 id~%uint8[] setPoint~%uint8[] motorid~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HandCommand>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'setPoint) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'motorid) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HandCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'HandCommand
    (cl:cons ':id (id msg))
    (cl:cons ':setPoint (setPoint msg))
    (cl:cons ':motorid (motorid msg))
))
