; Auto-generated. Do not edit!


(cl:in-package roboy_communication_simulation-srv)


;//! \htmlinclude Energies-request.msg.html

(cl:defclass <Energies-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Energies-request (<Energies-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Energies-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Energies-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_simulation-srv:<Energies-request> is deprecated: use roboy_communication_simulation-srv:Energies-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Energies-request>) ostream)
  "Serializes a message object of type '<Energies-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Energies-request>) istream)
  "Deserializes a message object of type '<Energies-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Energies-request>)))
  "Returns string type for a service object of type '<Energies-request>"
  "roboy_communication_simulation/EnergiesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Energies-request)))
  "Returns string type for a service object of type 'Energies-request"
  "roboy_communication_simulation/EnergiesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Energies-request>)))
  "Returns md5sum for a message object of type '<Energies-request>"
  "3a6c57e829cf6beb9c3918f4ad1ffcad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Energies-request)))
  "Returns md5sum for a message object of type 'Energies-request"
  "3a6c57e829cf6beb9c3918f4ad1ffcad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Energies-request>)))
  "Returns full string definition for message of type '<Energies-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Energies-request)))
  "Returns full string definition for message of type 'Energies-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Energies-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Energies-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Energies-request
))
;//! \htmlinclude Energies-response.msg.html

(cl:defclass <Energies-response> (roslisp-msg-protocol:ros-message)
  ((E_speed
    :reader E_speed
    :initarg :E_speed
    :type cl:float
    :initform 0.0)
   (E_headvel
    :reader E_headvel
    :initarg :E_headvel
    :type cl:float
    :initform 0.0)
   (E_headori
    :reader E_headori
    :initarg :E_headori
    :type cl:float
    :initform 0.0)
   (E_slide
    :reader E_slide
    :initarg :E_slide
    :type cl:float
    :initform 0.0)
   (E_effort
    :reader E_effort
    :initarg :E_effort
    :type cl:float
    :initform 0.0))
)

(cl:defclass Energies-response (<Energies-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Energies-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Energies-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_simulation-srv:<Energies-response> is deprecated: use roboy_communication_simulation-srv:Energies-response instead.")))

(cl:ensure-generic-function 'E_speed-val :lambda-list '(m))
(cl:defmethod E_speed-val ((m <Energies-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_simulation-srv:E_speed-val is deprecated.  Use roboy_communication_simulation-srv:E_speed instead.")
  (E_speed m))

(cl:ensure-generic-function 'E_headvel-val :lambda-list '(m))
(cl:defmethod E_headvel-val ((m <Energies-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_simulation-srv:E_headvel-val is deprecated.  Use roboy_communication_simulation-srv:E_headvel instead.")
  (E_headvel m))

(cl:ensure-generic-function 'E_headori-val :lambda-list '(m))
(cl:defmethod E_headori-val ((m <Energies-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_simulation-srv:E_headori-val is deprecated.  Use roboy_communication_simulation-srv:E_headori instead.")
  (E_headori m))

(cl:ensure-generic-function 'E_slide-val :lambda-list '(m))
(cl:defmethod E_slide-val ((m <Energies-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_simulation-srv:E_slide-val is deprecated.  Use roboy_communication_simulation-srv:E_slide instead.")
  (E_slide m))

(cl:ensure-generic-function 'E_effort-val :lambda-list '(m))
(cl:defmethod E_effort-val ((m <Energies-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_simulation-srv:E_effort-val is deprecated.  Use roboy_communication_simulation-srv:E_effort instead.")
  (E_effort m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Energies-response>) ostream)
  "Serializes a message object of type '<Energies-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'E_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'E_headvel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'E_headori))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'E_slide))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'E_effort))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Energies-response>) istream)
  "Deserializes a message object of type '<Energies-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'E_speed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'E_headvel) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'E_headori) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'E_slide) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'E_effort) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Energies-response>)))
  "Returns string type for a service object of type '<Energies-response>"
  "roboy_communication_simulation/EnergiesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Energies-response)))
  "Returns string type for a service object of type 'Energies-response"
  "roboy_communication_simulation/EnergiesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Energies-response>)))
  "Returns md5sum for a message object of type '<Energies-response>"
  "3a6c57e829cf6beb9c3918f4ad1ffcad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Energies-response)))
  "Returns md5sum for a message object of type 'Energies-response"
  "3a6c57e829cf6beb9c3918f4ad1ffcad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Energies-response>)))
  "Returns full string definition for message of type '<Energies-response>"
  (cl:format cl:nil "float64 E_speed~%float64 E_headvel~%float64 E_headori~%float64 E_slide~%float64 E_effort~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Energies-response)))
  "Returns full string definition for message of type 'Energies-response"
  (cl:format cl:nil "float64 E_speed~%float64 E_headvel~%float64 E_headori~%float64 E_slide~%float64 E_effort~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Energies-response>))
  (cl:+ 0
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Energies-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Energies-response
    (cl:cons ':E_speed (E_speed msg))
    (cl:cons ':E_headvel (E_headvel msg))
    (cl:cons ':E_headori (E_headori msg))
    (cl:cons ':E_slide (E_slide msg))
    (cl:cons ':E_effort (E_effort msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Energies)))
  'Energies-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Energies)))
  'Energies-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Energies)))
  "Returns string type for a service object of type '<Energies>"
  "roboy_communication_simulation/Energies")