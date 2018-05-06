; Auto-generated. Do not edit!


(cl:in-package roboy_communication_simulation-msg)


;//! \htmlinclude TendonInitialization.msg.html

(cl:defclass <TendonInitialization> (roslisp-msg-protocol:ros-message)
  ((tendonID
    :reader tendonID
    :initarg :tendonID
    :type cl:integer
    :initform 0)
   (maxForce
    :reader maxForce
    :initarg :maxForce
    :type cl:float
    :initform 0.0)
   (wirepoints
    :reader wirepoints
    :initarg :wirepoints
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (roboyParts
    :reader roboyParts
    :initarg :roboyParts
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass TendonInitialization (<TendonInitialization>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TendonInitialization>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TendonInitialization)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_simulation-msg:<TendonInitialization> is deprecated: use roboy_communication_simulation-msg:TendonInitialization instead.")))

(cl:ensure-generic-function 'tendonID-val :lambda-list '(m))
(cl:defmethod tendonID-val ((m <TendonInitialization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_simulation-msg:tendonID-val is deprecated.  Use roboy_communication_simulation-msg:tendonID instead.")
  (tendonID m))

(cl:ensure-generic-function 'maxForce-val :lambda-list '(m))
(cl:defmethod maxForce-val ((m <TendonInitialization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_simulation-msg:maxForce-val is deprecated.  Use roboy_communication_simulation-msg:maxForce instead.")
  (maxForce m))

(cl:ensure-generic-function 'wirepoints-val :lambda-list '(m))
(cl:defmethod wirepoints-val ((m <TendonInitialization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_simulation-msg:wirepoints-val is deprecated.  Use roboy_communication_simulation-msg:wirepoints instead.")
  (wirepoints m))

(cl:ensure-generic-function 'roboyParts-val :lambda-list '(m))
(cl:defmethod roboyParts-val ((m <TendonInitialization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_simulation-msg:roboyParts-val is deprecated.  Use roboy_communication_simulation-msg:roboyParts instead.")
  (roboyParts m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TendonInitialization>) ostream)
  "Serializes a message object of type '<TendonInitialization>"
  (cl:let* ((signed (cl:slot-value msg 'tendonID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'maxForce))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'wirepoints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'wirepoints))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'roboyParts))))
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
   (cl:slot-value msg 'roboyParts))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TendonInitialization>) istream)
  "Deserializes a message object of type '<TendonInitialization>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tendonID) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'maxForce) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'wirepoints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'wirepoints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'roboyParts) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'roboyParts)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TendonInitialization>)))
  "Returns string type for a message object of type '<TendonInitialization>"
  "roboy_communication_simulation/TendonInitialization")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TendonInitialization)))
  "Returns string type for a message object of type 'TendonInitialization"
  "roboy_communication_simulation/TendonInitialization")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TendonInitialization>)))
  "Returns md5sum for a message object of type '<TendonInitialization>"
  "085ee5f8bb51d4a1c10813b9fc10e600")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TendonInitialization)))
  "Returns md5sum for a message object of type 'TendonInitialization"
  "085ee5f8bb51d4a1c10813b9fc10e600")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TendonInitialization>)))
  "Returns full string definition for message of type '<TendonInitialization>"
  (cl:format cl:nil "int32 tendonID~%#maximal applicable force	~%float32 maxForce~%#world space coord, 3 floats == one coordinate~%float32[] wirepoints~%#names of roboypart each wirepoint is linked to~%string[] roboyParts~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TendonInitialization)))
  "Returns full string definition for message of type 'TendonInitialization"
  (cl:format cl:nil "int32 tendonID~%#maximal applicable force	~%float32 maxForce~%#world space coord, 3 floats == one coordinate~%float32[] wirepoints~%#names of roboypart each wirepoint is linked to~%string[] roboyParts~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TendonInitialization>))
  (cl:+ 0
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'wirepoints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'roboyParts) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TendonInitialization>))
  "Converts a ROS message object to a list"
  (cl:list 'TendonInitialization
    (cl:cons ':tendonID (tendonID msg))
    (cl:cons ':maxForce (maxForce msg))
    (cl:cons ':wirepoints (wirepoints msg))
    (cl:cons ':roboyParts (roboyParts msg))
))
