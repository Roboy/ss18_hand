;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_control::Emotion)
  (if (not (find-package "ROBOY_COMMUNICATION_CONTROL"))
    (make-package "ROBOY_COMMUNICATION_CONTROL"))
  (shadow 'Emotion (find-package "ROBOY_COMMUNICATION_CONTROL")))
(unless (find-package "ROBOY_COMMUNICATION_CONTROL::EMOTION")
  (make-package "ROBOY_COMMUNICATION_CONTROL::EMOTION"))

(in-package "ROS")
;;//! \htmlinclude Emotion.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass roboy_communication_control::Emotion
  :super ros::object
  :slots (_header _emotion ))

(defmethod roboy_communication_control::Emotion
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:emotion __emotion) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _emotion (string __emotion))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:emotion
   (&optional __emotion)
   (if __emotion (setq _emotion __emotion)) _emotion)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _emotion
    4 (length _emotion)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _emotion
       (write-long (length _emotion) s) (princ _emotion s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _emotion
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _emotion (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get roboy_communication_control::Emotion :md5sum-) "6e7cfd6974e5f498c01a06ab2c37c19e")
(setf (get roboy_communication_control::Emotion :datatype-) "roboy_communication_control/Emotion")
(setf (get roboy_communication_control::Emotion :definition-)
      "Header header
string emotion


================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :roboy_communication_control/Emotion "6e7cfd6974e5f498c01a06ab2c37c19e")


