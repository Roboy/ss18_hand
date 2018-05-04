;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_cognition::SpeechSynthesis)
  (if (not (find-package "ROBOY_COMMUNICATION_COGNITION"))
    (make-package "ROBOY_COMMUNICATION_COGNITION"))
  (shadow 'SpeechSynthesis (find-package "ROBOY_COMMUNICATION_COGNITION")))
(unless (find-package "ROBOY_COMMUNICATION_COGNITION::SPEECHSYNTHESIS")
  (make-package "ROBOY_COMMUNICATION_COGNITION::SPEECHSYNTHESIS"))

(in-package "ROS")
;;//! \htmlinclude SpeechSynthesis.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass roboy_communication_cognition::SpeechSynthesis
  :super ros::object
  :slots (_header _phoneme _duration ))

(defmethod roboy_communication_cognition::SpeechSynthesis
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:phoneme __phoneme) "")
    ((:duration __duration) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _phoneme (string __phoneme))
   (setq _duration (round __duration))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:phoneme
   (&optional __phoneme)
   (if __phoneme (setq _phoneme __phoneme)) _phoneme)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _phoneme
    4 (length _phoneme)
    ;; int32 _duration
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _phoneme
       (write-long (length _phoneme) s) (princ _phoneme s)
     ;; int32 _duration
       (write-long _duration s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _phoneme
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _phoneme (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _duration
     (setq _duration (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get roboy_communication_cognition::SpeechSynthesis :md5sum-) "7565d6a98b05035d8bd6d3457a620114")
(setf (get roboy_communication_cognition::SpeechSynthesis :datatype-) "roboy_communication_cognition/SpeechSynthesis")
(setf (get roboy_communication_cognition::SpeechSynthesis :definition-)
      "Header header
string phoneme
int32 duration

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



(provide :roboy_communication_cognition/SpeechSynthesis "7565d6a98b05035d8bd6d3457a620114")


