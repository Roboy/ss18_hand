; Auto-generated. Do not edit!


(cl:in-package roboy_communication_simulation-msg)


;//! \htmlinclude Joint.msg.html

(cl:defclass <Joint> (roslisp-msg-protocol:ros-message)
  ((roboyID
    :reader roboyID
    :initarg :roboyID
    :type cl:integer
    :initform 0)
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (radian
    :reader radian
    :initarg :radian
    :type cl:float
    :initform 0.0))
)

(cl:defclass Joint (<Joint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Joint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Joint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_simulation-msg:<Joint> is deprecated: use roboy_communication_simulation-msg:Joint instead.")))

(cl:ensure-generic-function 'roboyID-val :lambda-list '(m))
(cl:defmethod roboyID-val ((m <Joint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_simulation-msg:roboyID-val is deprecated.  Use roboy_communication_simulation-msg:roboyID instead.")
  (roboyID m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Joint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_simulation-msg:name-val is deprecated.  Use roboy_communication_simulation-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'radian-val :lambda-list '(m))
(cl:defmethod radian-val ((m <Joint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_simulation-msg:radian-val is deprecated.  Use roboy_communication_simulation-msg:radian instead.")
  (radian m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Joint>) ostream)
  "Serializes a message object of type '<Joint>"
  (cl:let* ((signed (cl:slot-value msg 'roboyID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'radian))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Joint>) istream)
  "Deserializes a message object of type '<Joint>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'roboyID) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'radian) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Joint>)))
  "Returns string type for a message object of type '<Joint>"
  "roboy_communication_simulation/Joint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Joint)))
  "Returns string type for a message object of type 'Joint"
  "roboy_communication_simulation/Joint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Joint>)))
  "Returns md5sum for a message object of type '<Joint>"
  "1482579ad92116e0313fcfe2a25a7ac7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Joint)))
  "Returns md5sum for a message object of type 'Joint"
  "1482579ad92116e0313fcfe2a25a7ac7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Joint>)))
  "Returns full string definition for message of type '<Joint>"
  (cl:format cl:nil "int32 roboyID~%string name~%float32 radian~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Joint)))
  "Returns full string definition for message of type 'Joint"
  (cl:format cl:nil "int32 roboyID~%string name~%float32 radian~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Joint>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'name))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Joint>))
  "Converts a ROS message object to a list"
  (cl:list 'Joint
    (cl:cons ':roboyID (roboyID msg))
    (cl:cons ':name (name msg))
    (cl:cons ':radian (radian msg))
))
