;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_middleware::MotorTrajectoryControl)
  (if (not (find-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
    (make-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
  (shadow 'MotorTrajectoryControl (find-package "ROBOY_COMMUNICATION_MIDDLEWARE")))
(unless (find-package "ROBOY_COMMUNICATION_MIDDLEWARE::MOTORTRAJECTORYCONTROL")
  (make-package "ROBOY_COMMUNICATION_MIDDLEWARE::MOTORTRAJECTORYCONTROL"))

(in-package "ROS")
;;//! \htmlinclude MotorTrajectoryControl.msg.html


(defclass roboy_communication_middleware::MotorTrajectoryControl
  :super ros::object
  :slots (_play _rewind _pause _loop ))

(defmethod roboy_communication_middleware::MotorTrajectoryControl
  (:init
   (&key
    ((:play __play) nil)
    ((:rewind __rewind) nil)
    ((:pause __pause) nil)
    ((:loop __loop) nil)
    )
   (send-super :init)
   (setq _play __play)
   (setq _rewind __rewind)
   (setq _pause __pause)
   (setq _loop __loop)
   self)
  (:play
   (&optional __play)
   (if __play (setq _play __play)) _play)
  (:rewind
   (&optional __rewind)
   (if __rewind (setq _rewind __rewind)) _rewind)
  (:pause
   (&optional __pause)
   (if __pause (setq _pause __pause)) _pause)
  (:loop
   (&optional __loop)
   (if __loop (setq _loop __loop)) _loop)
  (:serialization-length
   ()
   (+
    ;; bool _play
    1
    ;; bool _rewind
    1
    ;; bool _pause
    1
    ;; bool _loop
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _play
       (if _play (write-byte -1 s) (write-byte 0 s))
     ;; bool _rewind
       (if _rewind (write-byte -1 s) (write-byte 0 s))
     ;; bool _pause
       (if _pause (write-byte -1 s) (write-byte 0 s))
     ;; bool _loop
       (if _loop (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _play
     (setq _play (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _rewind
     (setq _rewind (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _pause
     (setq _pause (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _loop
     (setq _loop (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get roboy_communication_middleware::MotorTrajectoryControl :md5sum-) "7791d2c1e7fac692a462f6500b596124")
(setf (get roboy_communication_middleware::MotorTrajectoryControl :datatype-) "roboy_communication_middleware/MotorTrajectoryControl")
(setf (get roboy_communication_middleware::MotorTrajectoryControl :definition-)
      "bool play
bool rewind
bool pause
bool loop
")



(provide :roboy_communication_middleware/MotorTrajectoryControl "7791d2c1e7fac692a462f6500b596124")


