; Auto-generated. Do not edit!


(cl:in-package roboy_communication_simulation-msg)


;//! \htmlinclude ExternalForce.msg.html

(cl:defclass <ExternalForce> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0)
   (f_x
    :reader f_x
    :initarg :f_x
    :type cl:float
    :initform 0.0)
   (f_y
    :reader f_y
    :initarg :f_y
    :type cl:float
    :initform 0.0)
   (f_z
    :reader f_z
    :initarg :f_z
    :type cl:float
    :initform 0.0)
   (duration
    :reader duration
    :initarg :duration
    :type cl:integer
    :initform 0))
)

(cl:defclass ExternalForce (<ExternalForce>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExternalForce>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExternalForce)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_simulation-msg:<ExternalForce> is deprecated: use roboy_communication_simulation-msg:ExternalForce instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <ExternalForce>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_simulation-msg:name-val is deprecated.  Use roboy_communication_simulation-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <ExternalForce>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_simulation-msg:x-val is deprecated.  Use roboy_communication_simulation-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <ExternalForce>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_simulation-msg:y-val is deprecated.  Use roboy_communication_simulation-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <ExternalForce>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_simulation-msg:z-val is deprecated.  Use roboy_communication_simulation-msg:z instead.")
  (z m))

(cl:ensure-generic-function 'f_x-val :lambda-list '(m))
(cl:defmethod f_x-val ((m <ExternalForce>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_simulation-msg:f_x-val is deprecated.  Use roboy_communication_simulation-msg:f_x instead.")
  (f_x m))

(cl:ensure-generic-function 'f_y-val :lambda-list '(m))
(cl:defmethod f_y-val ((m <ExternalForce>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_simulation-msg:f_y-val is deprecated.  Use roboy_communication_simulation-msg:f_y instead.")
  (f_y m))

(cl:ensure-generic-function 'f_z-val :lambda-list '(m))
(cl:defmethod f_z-val ((m <ExternalForce>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_simulation-msg:f_z-val is deprecated.  Use roboy_communication_simulation-msg:f_z instead.")
  (f_z m))

(cl:ensure-generic-function 'duration-val :lambda-list '(m))
(cl:defmethod duration-val ((m <ExternalForce>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_simulation-msg:duration-val is deprecated.  Use roboy_communication_simulation-msg:duration instead.")
  (duration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExternalForce>) ostream)
  "Serializes a message object of type '<ExternalForce>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'f_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'f_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'f_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'duration)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExternalForce>) istream)
  "Deserializes a message object of type '<ExternalForce>"
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
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'f_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'f_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'f_z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'duration) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExternalForce>)))
  "Returns string type for a message object of type '<ExternalForce>"
  "roboy_communication_simulation/ExternalForce")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExternalForce)))
  "Returns string type for a message object of type 'ExternalForce"
  "roboy_communication_simulation/ExternalForce")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExternalForce>)))
  "Returns md5sum for a message object of type '<ExternalForce>"
  "6e3497e9ca5650a8a3d8803fe7153120")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExternalForce)))
  "Returns md5sum for a message object of type 'ExternalForce"
  "6e3497e9ca5650a8a3d8803fe7153120")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExternalForce>)))
  "Returns full string definition for message of type '<ExternalForce>"
  (cl:format cl:nil "# link name~%string name~%# relativ position on mesh~%float32 x~%float32 y~%float32 z~%# force~%float32 f_x~%float32 f_y~%float32 f_z~%# force duration in milliseconds~%int32 duration~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExternalForce)))
  "Returns full string definition for message of type 'ExternalForce"
  (cl:format cl:nil "# link name~%string name~%# relativ position on mesh~%float32 x~%float32 y~%float32 z~%# force~%float32 f_x~%float32 f_y~%float32 f_z~%# force duration in milliseconds~%int32 duration~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExternalForce>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExternalForce>))
  "Converts a ROS message object to a list"
  (cl:list 'ExternalForce
    (cl:cons ':name (name msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
    (cl:cons ':f_x (f_x msg))
    (cl:cons ':f_y (f_y msg))
    (cl:cons ':f_z (f_z msg))
    (cl:cons ':duration (duration msg))
))
