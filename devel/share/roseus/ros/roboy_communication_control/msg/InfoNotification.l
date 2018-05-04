;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_control::InfoNotification)
  (if (not (find-package "ROBOY_COMMUNICATION_CONTROL"))
    (make-package "ROBOY_COMMUNICATION_CONTROL"))
  (shadow 'InfoNotification (find-package "ROBOY_COMMUNICATION_CONTROL")))
(unless (find-package "ROBOY_COMMUNICATION_CONTROL::INFONOTIFICATION")
  (make-package "ROBOY_COMMUNICATION_CONTROL::INFONOTIFICATION"))

(in-package "ROS")
;;//! \htmlinclude InfoNotification.msg.html


(defclass roboy_communication_control::InfoNotification
  :super ros::object
  :slots (_code _object _msg _extra _validityDuration ))

(defmethod roboy_communication_control::InfoNotification
  (:init
   (&key
    ((:code __code) 0)
    ((:object __object) "")
    ((:msg __msg) "")
    ((:extra __extra) "")
    ((:validityDuration __validityDuration) 0)
    )
   (send-super :init)
   (setq _code (round __code))
   (setq _object (string __object))
   (setq _msg (string __msg))
   (setq _extra (string __extra))
   (setq _validityDuration (round __validityDuration))
   self)
  (:code
   (&optional __code)
   (if __code (setq _code __code)) _code)
  (:object
   (&optional __object)
   (if __object (setq _object __object)) _object)
  (:msg
   (&optional __msg)
   (if __msg (setq _msg __msg)) _msg)
  (:extra
   (&optional __extra)
   (if __extra (setq _extra __extra)) _extra)
  (:validityDuration
   (&optional __validityDuration)
   (if __validityDuration (setq _validityDuration __validityDuration)) _validityDuration)
  (:serialization-length
   ()
   (+
    ;; int32 _code
    4
    ;; string _object
    4 (length _object)
    ;; string _msg
    4 (length _msg)
    ;; string _extra
    4 (length _extra)
    ;; int32 _validityDuration
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _code
       (write-long _code s)
     ;; string _object
       (write-long (length _object) s) (princ _object s)
     ;; string _msg
       (write-long (length _msg) s) (princ _msg s)
     ;; string _extra
       (write-long (length _extra) s) (princ _extra s)
     ;; int32 _validityDuration
       (write-long _validityDuration s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _code
     (setq _code (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _object
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _object (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _extra
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _extra (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _validityDuration
     (setq _validityDuration (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get roboy_communication_control::InfoNotification :md5sum-) "e83a19f2165c907848c09efd00ad9d5e")
(setf (get roboy_communication_control::InfoNotification :datatype-) "roboy_communication_control/InfoNotification")
(setf (get roboy_communication_control::InfoNotification :definition-)
      "int32 code
string object
string msg
string extra
int32 validityDuration
")



(provide :roboy_communication_control/InfoNotification "e83a19f2165c907848c09efd00ad9d5e")


