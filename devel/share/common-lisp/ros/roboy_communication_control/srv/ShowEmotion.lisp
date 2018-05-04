; Auto-generated. Do not edit!


(cl:in-package roboy_communication_control-srv)


;//! \htmlinclude ShowEmotion-request.msg.html

(cl:defclass <ShowEmotion-request> (roslisp-msg-protocol:ros-message)
  ((emotion
    :reader emotion
    :initarg :emotion
    :type cl:string
    :initform ""))
)

(cl:defclass ShowEmotion-request (<ShowEmotion-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ShowEmotion-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ShowEmotion-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_control-srv:<ShowEmotion-request> is deprecated: use roboy_communication_control-srv:ShowEmotion-request instead.")))

(cl:ensure-generic-function 'emotion-val :lambda-list '(m))
(cl:defmethod emotion-val ((m <ShowEmotion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_control-srv:emotion-val is deprecated.  Use roboy_communication_control-srv:emotion instead.")
  (emotion m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ShowEmotion-request>) ostream)
  "Serializes a message object of type '<ShowEmotion-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'emotion))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'emotion))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ShowEmotion-request>) istream)
  "Deserializes a message object of type '<ShowEmotion-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'emotion) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'emotion) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ShowEmotion-request>)))
  "Returns string type for a service object of type '<ShowEmotion-request>"
  "roboy_communication_control/ShowEmotionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ShowEmotion-request)))
  "Returns string type for a service object of type 'ShowEmotion-request"
  "roboy_communication_control/ShowEmotionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ShowEmotion-request>)))
  "Returns md5sum for a message object of type '<ShowEmotion-request>"
  "5a9d20fa9a1b468cec007dad13c554fc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ShowEmotion-request)))
  "Returns md5sum for a message object of type 'ShowEmotion-request"
  "5a9d20fa9a1b468cec007dad13c554fc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ShowEmotion-request>)))
  "Returns full string definition for message of type '<ShowEmotion-request>"
  (cl:format cl:nil "string emotion~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ShowEmotion-request)))
  "Returns full string definition for message of type 'ShowEmotion-request"
  (cl:format cl:nil "string emotion~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ShowEmotion-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'emotion))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ShowEmotion-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ShowEmotion-request
    (cl:cons ':emotion (emotion msg))
))
;//! \htmlinclude ShowEmotion-response.msg.html

(cl:defclass <ShowEmotion-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ShowEmotion-response (<ShowEmotion-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ShowEmotion-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ShowEmotion-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_communication_control-srv:<ShowEmotion-response> is deprecated: use roboy_communication_control-srv:ShowEmotion-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ShowEmotion-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_communication_control-srv:success-val is deprecated.  Use roboy_communication_control-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ShowEmotion-response>) ostream)
  "Serializes a message object of type '<ShowEmotion-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ShowEmotion-response>) istream)
  "Deserializes a message object of type '<ShowEmotion-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ShowEmotion-response>)))
  "Returns string type for a service object of type '<ShowEmotion-response>"
  "roboy_communication_control/ShowEmotionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ShowEmotion-response)))
  "Returns string type for a service object of type 'ShowEmotion-response"
  "roboy_communication_control/ShowEmotionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ShowEmotion-response>)))
  "Returns md5sum for a message object of type '<ShowEmotion-response>"
  "5a9d20fa9a1b468cec007dad13c554fc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ShowEmotion-response)))
  "Returns md5sum for a message object of type 'ShowEmotion-response"
  "5a9d20fa9a1b468cec007dad13c554fc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ShowEmotion-response>)))
  "Returns full string definition for message of type '<ShowEmotion-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ShowEmotion-response)))
  "Returns full string definition for message of type 'ShowEmotion-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ShowEmotion-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ShowEmotion-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ShowEmotion-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ShowEmotion)))
  'ShowEmotion-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ShowEmotion)))
  'ShowEmotion-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ShowEmotion)))
  "Returns string type for a service object of type '<ShowEmotion>"
  "roboy_communication_control/ShowEmotion")