; Auto-generated. Do not edit!


(cl:in-package roboy_communication_middleware-srv)


;//! \htmlinclude Record-request.msg.html

(cl:defclass <Record-request> (roslisp-msg-protocol:ros-message)
  ((controllers
    :reader controllers
    :initarg :controllers
    :type (cl:vector roboy_communication_middleware-msg:ControllerRequest)
   :initform (cl:make-array 0 :element-type 'roboy_communication_middleware-msg:ControllerRequest :initial-element (cl:make-instance 'roboy_communication_middleware-msg:ControllerRequest)))
   (sampleRate
    :reader sampleRate
    :initarg :sampleRate
    :type cl:float
    :initform 0.0))
)

(cl:defclass Record-request (<Record-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Record-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Record-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_middleware-srv:<Record-request> is deprecated: use roboy_communication_middleware-srv:Record-request instead.")))

(cl:ensure-generic-function 'controllers-val :lambda-list '(m))
(cl:defmethod controllers-val ((m <Record-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-srv:controllers-val is deprecated.  Use roboy_communication_middleware-srv:controllers instead.")
  (controllers m))

(cl:ensure-generic-function 'sampleRate-val :lambda-list '(m))
(cl:defmethod sampleRate-val ((m <Record-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-srv:sampleRate-val is deprecated.  Use roboy_communication_middleware-srv:sampleRate instead.")
  (sampleRate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Record-request>) ostream)
  "Serializes a message object of type '<Record-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'controllers))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'controllers))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'sampleRate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Record-request>) istream)
  "Deserializes a message object of type '<Record-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'controllers) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'controllers)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'roboy_communication_middleware-msg:ControllerRequest))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sampleRate) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Record-request>)))
  "Returns string type for a service object of type '<Record-request>"
  "roboy_communication_middleware/RecordRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Record-request)))
  "Returns string type for a service object of type 'Record-request"
  "roboy_communication_middleware/RecordRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Record-request>)))
  "Returns md5sum for a message object of type '<Record-request>"
  "8246afadbae0b4cfcc4b33aa0dfa16f2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Record-request)))
  "Returns md5sum for a message object of type 'Record-request"
  "8246afadbae0b4cfcc4b33aa0dfa16f2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Record-request>)))
  "Returns full string definition for message of type '<Record-request>"
  (cl:format cl:nil "ControllerRequest[] controllers~%float32 sampleRate~%~%================================================================================~%MSG: roboy_communication_middleware/ControllerRequest~%int32    id~%uint32   controlmode~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Record-request)))
  "Returns full string definition for message of type 'Record-request"
  (cl:format cl:nil "ControllerRequest[] controllers~%float32 sampleRate~%~%================================================================================~%MSG: roboy_communication_middleware/ControllerRequest~%int32    id~%uint32   controlmode~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Record-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'controllers) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Record-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Record-request
    (cl:cons ':controllers (controllers msg))
    (cl:cons ':sampleRate (sampleRate msg))
))
;//! \htmlinclude Record-response.msg.html

(cl:defclass <Record-response> (roslisp-msg-protocol:ros-message)
  ((trajectories
    :reader trajectories
    :initarg :trajectories
    :type (cl:vector roboy_communication_middleware-msg:Trajectory)
   :initform (cl:make-array 0 :element-type 'roboy_communication_middleware-msg:Trajectory :initial-element (cl:make-instance 'roboy_communication_middleware-msg:Trajectory))))
)

(cl:defclass Record-response (<Record-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Record-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Record-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_middleware-srv:<Record-response> is deprecated: use roboy_communication_middleware-srv:Record-response instead.")))

(cl:ensure-generic-function 'trajectories-val :lambda-list '(m))
(cl:defmethod trajectories-val ((m <Record-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-srv:trajectories-val is deprecated.  Use roboy_communication_middleware-srv:trajectories instead.")
  (trajectories m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Record-response>) ostream)
  "Serializes a message object of type '<Record-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'trajectories))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'trajectories))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Record-response>) istream)
  "Deserializes a message object of type '<Record-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'trajectories) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'trajectories)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'roboy_communication_middleware-msg:Trajectory))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Record-response>)))
  "Returns string type for a service object of type '<Record-response>"
  "roboy_communication_middleware/RecordResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Record-response)))
  "Returns string type for a service object of type 'Record-response"
  "roboy_communication_middleware/RecordResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Record-response>)))
  "Returns md5sum for a message object of type '<Record-response>"
  "8246afadbae0b4cfcc4b33aa0dfa16f2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Record-response)))
  "Returns md5sum for a message object of type 'Record-response"
  "8246afadbae0b4cfcc4b33aa0dfa16f2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Record-response>)))
  "Returns full string definition for message of type '<Record-response>"
  (cl:format cl:nil "Trajectory[] trajectories~%~%================================================================================~%MSG: roboy_communication_middleware/Trajectory~%uint32 id~%float32 samplerate~%float32[] waypoints~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Record-response)))
  "Returns full string definition for message of type 'Record-response"
  (cl:format cl:nil "Trajectory[] trajectories~%~%================================================================================~%MSG: roboy_communication_middleware/Trajectory~%uint32 id~%float32 samplerate~%float32[] waypoints~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Record-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'trajectories) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Record-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Record-response
    (cl:cons ':trajectories (trajectories msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Record)))
  'Record-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Record)))
  'Record-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Record)))
  "Returns string type for a service object of type '<Record>"
  "roboy_communication_middleware/Record")