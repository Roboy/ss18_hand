; Auto-generated. Do not edit!


(cl:in-package roboy_communication_middleware-msg)


;//! \htmlinclude DarkRoomOOTX.msg.html

(cl:defclass <DarkRoomOOTX> (roslisp-msg-protocol:ros-message)
  ((lighthouse
    :reader lighthouse
    :initarg :lighthouse
    :type cl:integer
    :initform 0)
   (fw_version
    :reader fw_version
    :initarg :fw_version
    :type cl:fixnum
    :initform 0)
   (ID
    :reader ID
    :initarg :ID
    :type cl:integer
    :initform 0)
   (fcal_0_phase
    :reader fcal_0_phase
    :initarg :fcal_0_phase
    :type cl:float
    :initform 0.0)
   (fcal_1_phase
    :reader fcal_1_phase
    :initarg :fcal_1_phase
    :type cl:float
    :initform 0.0)
   (fcal_0_tilt
    :reader fcal_0_tilt
    :initarg :fcal_0_tilt
    :type cl:float
    :initform 0.0)
   (fcal_1_tilt
    :reader fcal_1_tilt
    :initarg :fcal_1_tilt
    :type cl:float
    :initform 0.0)
   (unlock_count
    :reader unlock_count
    :initarg :unlock_count
    :type cl:fixnum
    :initform 0)
   (hw_version
    :reader hw_version
    :initarg :hw_version
    :type cl:fixnum
    :initform 0)
   (fcal_0_curve
    :reader fcal_0_curve
    :initarg :fcal_0_curve
    :type cl:float
    :initform 0.0)
   (fcal_1_curve
    :reader fcal_1_curve
    :initarg :fcal_1_curve
    :type cl:float
    :initform 0.0)
   (accel_dir_x
    :reader accel_dir_x
    :initarg :accel_dir_x
    :type cl:float
    :initform 0.0)
   (accel_dir_y
    :reader accel_dir_y
    :initarg :accel_dir_y
    :type cl:float
    :initform 0.0)
   (accel_dir_z
    :reader accel_dir_z
    :initarg :accel_dir_z
    :type cl:float
    :initform 0.0)
   (fcal_0_gibphase
    :reader fcal_0_gibphase
    :initarg :fcal_0_gibphase
    :type cl:float
    :initform 0.0)
   (fcal_1_gibphase
    :reader fcal_1_gibphase
    :initarg :fcal_1_gibphase
    :type cl:float
    :initform 0.0)
   (fcal_0_gibmag
    :reader fcal_0_gibmag
    :initarg :fcal_0_gibmag
    :type cl:float
    :initform 0.0)
   (fcal_1_gibmag
    :reader fcal_1_gibmag
    :initarg :fcal_1_gibmag
    :type cl:float
    :initform 0.0)
   (mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0)
   (faults
    :reader faults
    :initarg :faults
    :type cl:fixnum
    :initform 0)
   (crc32
    :reader crc32
    :initarg :crc32
    :type cl:integer
    :initform 0))
)

(cl:defclass DarkRoomOOTX (<DarkRoomOOTX>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DarkRoomOOTX>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DarkRoomOOTX)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_middleware-msg:<DarkRoomOOTX> is deprecated: use roboy_communication_middleware-msg:DarkRoomOOTX instead.")))

(cl:ensure-generic-function 'lighthouse-val :lambda-list '(m))
(cl:defmethod lighthouse-val ((m <DarkRoomOOTX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-msg:lighthouse-val is deprecated.  Use roboy_communication_middleware-msg:lighthouse instead.")
  (lighthouse m))

(cl:ensure-generic-function 'fw_version-val :lambda-list '(m))
(cl:defmethod fw_version-val ((m <DarkRoomOOTX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-msg:fw_version-val is deprecated.  Use roboy_communication_middleware-msg:fw_version instead.")
  (fw_version m))

(cl:ensure-generic-function 'ID-val :lambda-list '(m))
(cl:defmethod ID-val ((m <DarkRoomOOTX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-msg:ID-val is deprecated.  Use roboy_communication_middleware-msg:ID instead.")
  (ID m))

(cl:ensure-generic-function 'fcal_0_phase-val :lambda-list '(m))
(cl:defmethod fcal_0_phase-val ((m <DarkRoomOOTX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-msg:fcal_0_phase-val is deprecated.  Use roboy_communication_middleware-msg:fcal_0_phase instead.")
  (fcal_0_phase m))

(cl:ensure-generic-function 'fcal_1_phase-val :lambda-list '(m))
(cl:defmethod fcal_1_phase-val ((m <DarkRoomOOTX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-msg:fcal_1_phase-val is deprecated.  Use roboy_communication_middleware-msg:fcal_1_phase instead.")
  (fcal_1_phase m))

(cl:ensure-generic-function 'fcal_0_tilt-val :lambda-list '(m))
(cl:defmethod fcal_0_tilt-val ((m <DarkRoomOOTX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-msg:fcal_0_tilt-val is deprecated.  Use roboy_communication_middleware-msg:fcal_0_tilt instead.")
  (fcal_0_tilt m))

(cl:ensure-generic-function 'fcal_1_tilt-val :lambda-list '(m))
(cl:defmethod fcal_1_tilt-val ((m <DarkRoomOOTX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-msg:fcal_1_tilt-val is deprecated.  Use roboy_communication_middleware-msg:fcal_1_tilt instead.")
  (fcal_1_tilt m))

(cl:ensure-generic-function 'unlock_count-val :lambda-list '(m))
(cl:defmethod unlock_count-val ((m <DarkRoomOOTX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-msg:unlock_count-val is deprecated.  Use roboy_communication_middleware-msg:unlock_count instead.")
  (unlock_count m))

(cl:ensure-generic-function 'hw_version-val :lambda-list '(m))
(cl:defmethod hw_version-val ((m <DarkRoomOOTX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-msg:hw_version-val is deprecated.  Use roboy_communication_middleware-msg:hw_version instead.")
  (hw_version m))

(cl:ensure-generic-function 'fcal_0_curve-val :lambda-list '(m))
(cl:defmethod fcal_0_curve-val ((m <DarkRoomOOTX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-msg:fcal_0_curve-val is deprecated.  Use roboy_communication_middleware-msg:fcal_0_curve instead.")
  (fcal_0_curve m))

(cl:ensure-generic-function 'fcal_1_curve-val :lambda-list '(m))
(cl:defmethod fcal_1_curve-val ((m <DarkRoomOOTX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-msg:fcal_1_curve-val is deprecated.  Use roboy_communication_middleware-msg:fcal_1_curve instead.")
  (fcal_1_curve m))

(cl:ensure-generic-function 'accel_dir_x-val :lambda-list '(m))
(cl:defmethod accel_dir_x-val ((m <DarkRoomOOTX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-msg:accel_dir_x-val is deprecated.  Use roboy_communication_middleware-msg:accel_dir_x instead.")
  (accel_dir_x m))

(cl:ensure-generic-function 'accel_dir_y-val :lambda-list '(m))
(cl:defmethod accel_dir_y-val ((m <DarkRoomOOTX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-msg:accel_dir_y-val is deprecated.  Use roboy_communication_middleware-msg:accel_dir_y instead.")
  (accel_dir_y m))

(cl:ensure-generic-function 'accel_dir_z-val :lambda-list '(m))
(cl:defmethod accel_dir_z-val ((m <DarkRoomOOTX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-msg:accel_dir_z-val is deprecated.  Use roboy_communication_middleware-msg:accel_dir_z instead.")
  (accel_dir_z m))

(cl:ensure-generic-function 'fcal_0_gibphase-val :lambda-list '(m))
(cl:defmethod fcal_0_gibphase-val ((m <DarkRoomOOTX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-msg:fcal_0_gibphase-val is deprecated.  Use roboy_communication_middleware-msg:fcal_0_gibphase instead.")
  (fcal_0_gibphase m))

(cl:ensure-generic-function 'fcal_1_gibphase-val :lambda-list '(m))
(cl:defmethod fcal_1_gibphase-val ((m <DarkRoomOOTX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-msg:fcal_1_gibphase-val is deprecated.  Use roboy_communication_middleware-msg:fcal_1_gibphase instead.")
  (fcal_1_gibphase m))

(cl:ensure-generic-function 'fcal_0_gibmag-val :lambda-list '(m))
(cl:defmethod fcal_0_gibmag-val ((m <DarkRoomOOTX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-msg:fcal_0_gibmag-val is deprecated.  Use roboy_communication_middleware-msg:fcal_0_gibmag instead.")
  (fcal_0_gibmag m))

(cl:ensure-generic-function 'fcal_1_gibmag-val :lambda-list '(m))
(cl:defmethod fcal_1_gibmag-val ((m <DarkRoomOOTX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-msg:fcal_1_gibmag-val is deprecated.  Use roboy_communication_middleware-msg:fcal_1_gibmag instead.")
  (fcal_1_gibmag m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <DarkRoomOOTX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-msg:mode-val is deprecated.  Use roboy_communication_middleware-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'faults-val :lambda-list '(m))
(cl:defmethod faults-val ((m <DarkRoomOOTX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-msg:faults-val is deprecated.  Use roboy_communication_middleware-msg:faults instead.")
  (faults m))

(cl:ensure-generic-function 'crc32-val :lambda-list '(m))
(cl:defmethod crc32-val ((m <DarkRoomOOTX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_middleware-msg:crc32-val is deprecated.  Use roboy_communication_middleware-msg:crc32 instead.")
  (crc32 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DarkRoomOOTX>) ostream)
  "Serializes a message object of type '<DarkRoomOOTX>"
  (cl:let* ((signed (cl:slot-value msg 'lighthouse)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fw_version)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'fw_version)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ID)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'fcal_0_phase))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'fcal_1_phase))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'fcal_0_tilt))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'fcal_1_tilt))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'unlock_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hw_version)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'fcal_0_curve))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'fcal_1_curve))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'accel_dir_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'accel_dir_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'accel_dir_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'fcal_0_gibphase))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'fcal_1_gibphase))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'fcal_0_gibmag))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'fcal_1_gibmag))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'faults)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'crc32)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'crc32)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'crc32)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'crc32)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DarkRoomOOTX>) istream)
  "Deserializes a message object of type '<DarkRoomOOTX>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lighthouse) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fw_version)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'fw_version)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ID)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fcal_0_phase) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fcal_1_phase) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fcal_0_tilt) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fcal_1_tilt) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'unlock_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hw_version)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fcal_0_curve) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fcal_1_curve) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'accel_dir_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'accel_dir_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'accel_dir_z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fcal_0_gibphase) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fcal_1_gibphase) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fcal_0_gibmag) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fcal_1_gibmag) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'faults)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'crc32)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'crc32)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'crc32)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'crc32)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DarkRoomOOTX>)))
  "Returns string type for a message object of type '<DarkRoomOOTX>"
  "roboy_communication_middleware/DarkRoomOOTX")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DarkRoomOOTX)))
  "Returns string type for a message object of type 'DarkRoomOOTX"
  "roboy_communication_middleware/DarkRoomOOTX")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DarkRoomOOTX>)))
  "Returns md5sum for a message object of type '<DarkRoomOOTX>"
  "6375d27b5383e96f6ed61b6d30596a00")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DarkRoomOOTX)))
  "Returns md5sum for a message object of type 'DarkRoomOOTX"
  "6375d27b5383e96f6ed61b6d30596a00")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DarkRoomOOTX>)))
  "Returns full string definition for message of type '<DarkRoomOOTX>"
  (cl:format cl:nil "int32 lighthouse~%uint16 fw_version~%uint32 ID~%float32 fcal_0_phase~%float32 fcal_1_phase~%float32 fcal_0_tilt~%float32 fcal_1_tilt~%uint8 unlock_count~%uint8 hw_version~%float32 fcal_0_curve~%float32 fcal_1_curve~%float32 accel_dir_x~%float32 accel_dir_y~%float32 accel_dir_z~%float32 fcal_0_gibphase~%float32 fcal_1_gibphase~%float32 fcal_0_gibmag~%float32 fcal_1_gibmag~%uint8 mode~%uint8 faults~%uint32 crc32~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DarkRoomOOTX)))
  "Returns full string definition for message of type 'DarkRoomOOTX"
  (cl:format cl:nil "int32 lighthouse~%uint16 fw_version~%uint32 ID~%float32 fcal_0_phase~%float32 fcal_1_phase~%float32 fcal_0_tilt~%float32 fcal_1_tilt~%uint8 unlock_count~%uint8 hw_version~%float32 fcal_0_curve~%float32 fcal_1_curve~%float32 accel_dir_x~%float32 accel_dir_y~%float32 accel_dir_z~%float32 fcal_0_gibphase~%float32 fcal_1_gibphase~%float32 fcal_0_gibmag~%float32 fcal_1_gibmag~%uint8 mode~%uint8 faults~%uint32 crc32~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DarkRoomOOTX>))
  (cl:+ 0
     4
     2
     4
     4
     4
     4
     4
     1
     1
     4
     4
     4
     4
     4
     4
     4
     4
     4
     1
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DarkRoomOOTX>))
  "Converts a ROS message object to a list"
  (cl:list 'DarkRoomOOTX
    (cl:cons ':lighthouse (lighthouse msg))
    (cl:cons ':fw_version (fw_version msg))
    (cl:cons ':ID (ID msg))
    (cl:cons ':fcal_0_phase (fcal_0_phase msg))
    (cl:cons ':fcal_1_phase (fcal_1_phase msg))
    (cl:cons ':fcal_0_tilt (fcal_0_tilt msg))
    (cl:cons ':fcal_1_tilt (fcal_1_tilt msg))
    (cl:cons ':unlock_count (unlock_count msg))
    (cl:cons ':hw_version (hw_version msg))
    (cl:cons ':fcal_0_curve (fcal_0_curve msg))
    (cl:cons ':fcal_1_curve (fcal_1_curve msg))
    (cl:cons ':accel_dir_x (accel_dir_x msg))
    (cl:cons ':accel_dir_y (accel_dir_y msg))
    (cl:cons ':accel_dir_z (accel_dir_z msg))
    (cl:cons ':fcal_0_gibphase (fcal_0_gibphase msg))
    (cl:cons ':fcal_1_gibphase (fcal_1_gibphase msg))
    (cl:cons ':fcal_0_gibmag (fcal_0_gibmag msg))
    (cl:cons ':fcal_1_gibmag (fcal_1_gibmag msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':faults (faults msg))
    (cl:cons ':crc32 (crc32 msg))
))
