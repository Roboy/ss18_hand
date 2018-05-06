; Auto-generated. Do not edit!


(cl:in-package roboy_communication_control-msg)


;//! \htmlinclude Behavior.msg.html

(cl:defclass <Behavior> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (actions
    :reader actions
    :initarg :actions
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass Behavior (<Behavior>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Behavior>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Behavior)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_control-msg:<Behavior> is deprecated: use roboy_communication_control-msg:Behavior instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Behavior>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_control-msg:name-val is deprecated.  Use roboy_communication_control-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'actions-val :lambda-list '(m))
(cl:defmethod actions-val ((m <Behavior>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_control-msg:actions-val is deprecated.  Use roboy_communication_control-msg:actions instead.")
  (actions m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Behavior>) ostream)
  "Serializes a message object of type '<Behavior>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'actions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'actions))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Behavior>) istream)
  "Deserializes a message object of type '<Behavior>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'actions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'actions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Behavior>)))
  "Returns string type for a message object of type '<Behavior>"
  "roboy_communication_control/Behavior")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Behavior)))
  "Returns string type for a message object of type 'Behavior"
  "roboy_communication_control/Behavior")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Behavior>)))
  "Returns md5sum for a message object of type '<Behavior>"
  "1439b42a51d7a5af5bda5f56b4e3897d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Behavior)))
  "Returns md5sum for a message object of type 'Behavior"
  "1439b42a51d7a5af5bda5f56b4e3897d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Behavior>)))
  "Returns full string definition for message of type '<Behavior>"
  (cl:format cl:nil "string name~%string[] actions~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Behavior)))
  "Returns full string definition for message of type 'Behavior"
  (cl:format cl:nil "string name~%string[] actions~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Behavior>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'actions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Behavior>))
  "Converts a ROS message object to a list"
  (cl:list 'Behavior
    (cl:cons ':name (name msg))
    (cl:cons ':actions (actions msg))
))
