; Auto-generated. Do not edit!


(cl:in-package roboy_communication_cognition-msg)


;//! \htmlinclude FaceCoordinates.msg.html

(cl:defclass <FaceCoordinates> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (speaking
    :reader speaking
    :initarg :speaking
    :type cl:boolean
    :initform cl:nil)
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
    :initform 0.0))
)

(cl:defclass FaceCoordinates (<FaceCoordinates>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FaceCoordinates>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FaceCoordinates)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_cognition-msg:<FaceCoordinates> is deprecated: use roboy_communication_cognition-msg:FaceCoordinates instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <FaceCoordinates>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-msg:id-val is deprecated.  Use roboy_communication_cognition-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'speaking-val :lambda-list '(m))
(cl:defmethod speaking-val ((m <FaceCoordinates>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-msg:speaking-val is deprecated.  Use roboy_communication_cognition-msg:speaking instead.")
  (speaking m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <FaceCoordinates>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-msg:x-val is deprecated.  Use roboy_communication_cognition-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <FaceCoordinates>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-msg:y-val is deprecated.  Use roboy_communication_cognition-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <FaceCoordinates>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_cognition-msg:z-val is deprecated.  Use roboy_communication_cognition-msg:z instead.")
  (z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FaceCoordinates>) ostream)
  "Serializes a message object of type '<FaceCoordinates>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'speaking) 1 0)) ostream)
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FaceCoordinates>) istream)
  "Deserializes a message object of type '<FaceCoordinates>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'speaking) (cl:not (cl:zerop (cl:read-byte istream))))
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FaceCoordinates>)))
  "Returns string type for a message object of type '<FaceCoordinates>"
  "roboy_communication_cognition/FaceCoordinates")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FaceCoordinates)))
  "Returns string type for a message object of type 'FaceCoordinates"
  "roboy_communication_cognition/FaceCoordinates")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FaceCoordinates>)))
  "Returns md5sum for a message object of type '<FaceCoordinates>"
  "fa161a73b9038ffc21d5bb777d5c89bb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FaceCoordinates)))
  "Returns md5sum for a message object of type 'FaceCoordinates"
  "fa161a73b9038ffc21d5bb777d5c89bb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FaceCoordinates>)))
  "Returns full string definition for message of type '<FaceCoordinates>"
  (cl:format cl:nil "#stored id to facial features~%int32 id~%#is person speaking?~%bool speaking~%#3D position of person in transformed global coordinates~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FaceCoordinates)))
  "Returns full string definition for message of type 'FaceCoordinates"
  (cl:format cl:nil "#stored id to facial features~%int32 id~%#is person speaking?~%bool speaking~%#3D position of person in transformed global coordinates~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FaceCoordinates>))
  (cl:+ 0
     4
     1
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FaceCoordinates>))
  "Converts a ROS message object to a list"
  (cl:list 'FaceCoordinates
    (cl:cons ':id (id msg))
    (cl:cons ':speaking (speaking msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
))
