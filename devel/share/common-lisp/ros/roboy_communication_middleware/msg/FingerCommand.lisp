; Auto-generated. Do not edit!


(cl:in-package roboy_communication_middleware-msg)


;//! \htmlinclude FingerCommand.msg.html

(cl:defclass <FingerCommand> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (finger
    :reader finger
    :initarg :finger
    :type cl:fixnum
    :initform 0)
   (angles
    :reader angles
    :initarg :angles
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass FingerCommand (<FingerCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FingerCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FingerCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_middleware-msg:<FingerCommand> is deprecated: use roboy_communication_middleware-msg:FingerCommand instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <FingerCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-msg:id-val is deprecated.  Use roboy_communication_middleware-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'finger-val :lambda-list '(m))
(cl:defmethod finger-val ((m <FingerCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-msg:finger-val is deprecated.  Use roboy_communication_middleware-msg:finger instead.")
  (finger m))

(cl:ensure-generic-function 'angles-val :lambda-list '(m))
(cl:defmethod angles-val ((m <FingerCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-msg:angles-val is deprecated.  Use roboy_communication_middleware-msg:angles instead.")
  (angles m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FingerCommand>) ostream)
  "Serializes a message object of type '<FingerCommand>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'finger)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'angles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'angles))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FingerCommand>) istream)
  "Deserializes a message object of type '<FingerCommand>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'finger)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'angles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'angles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FingerCommand>)))
  "Returns string type for a message object of type '<FingerCommand>"
  "roboy_communication_middleware/FingerCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FingerCommand)))
  "Returns string type for a message object of type 'FingerCommand"
  "roboy_communication_middleware/FingerCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FingerCommand>)))
  "Returns md5sum for a message object of type '<FingerCommand>"
  "067fba6d65ca9da7c94ac130f3808f9a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FingerCommand)))
  "Returns md5sum for a message object of type 'FingerCommand"
  "067fba6d65ca9da7c94ac130f3808f9a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FingerCommand>)))
  "Returns full string definition for message of type '<FingerCommand>"
  (cl:format cl:nil "uint8 id~%uint8 finger~%uint8[] angles~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FingerCommand)))
  "Returns full string definition for message of type 'FingerCommand"
  (cl:format cl:nil "uint8 id~%uint8 finger~%uint8[] angles~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FingerCommand>))
  (cl:+ 0
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'angles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FingerCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'FingerCommand
    (cl:cons ':id (id msg))
    (cl:cons ':finger (finger msg))
    (cl:cons ':angles (angles msg))
))
