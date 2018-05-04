;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_simulation::RecordingControl)
  (if (not (find-package "ROBOY_COMMUNICATION_SIMULATION"))
    (make-package "ROBOY_COMMUNICATION_SIMULATION"))
  (shadow 'RecordingControl (find-package "ROBOY_COMMUNICATION_SIMULATION")))
(unless (find-package "ROBOY_COMMUNICATION_SIMULATION::RECORDINGCONTROL")
  (make-package "ROBOY_COMMUNICATION_SIMULATION::RECORDINGCONTROL"))

(in-package "ROS")
;;//! \htmlinclude RecordingControl.msg.html


(defclass roboy_communication_simulation::RecordingControl
  :super ros::object
  :slots (_roboyID _start_time _stop_time ))

(defmethod roboy_communication_simulation::RecordingControl
  (:init
   (&key
    ((:roboyID __roboyID) 0)
    ((:start_time __start_time) 0)
    ((:stop_time __stop_time) 0)
    )
   (send-super :init)
   (setq _roboyID (round __roboyID))
   (setq _start_time (round __start_time))
   (setq _stop_time (round __stop_time))
   self)
  (:roboyID
   (&optional __roboyID)
   (if __roboyID (setq _roboyID __roboyID)) _roboyID)
  (:start_time
   (&optional __start_time)
   (if __start_time (setq _start_time __start_time)) _start_time)
  (:stop_time
   (&optional __stop_time)
   (if __stop_time (setq _stop_time __stop_time)) _stop_time)
  (:serialization-length
   ()
   (+
    ;; int32 _roboyID
    4
    ;; uint32 _start_time
    4
    ;; uint32 _stop_time
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _roboyID
       (write-long _roboyID s)
     ;; uint32 _start_time
       (write-long _start_time s)
     ;; uint32 _stop_time
       (write-long _stop_time s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _roboyID
     (setq _roboyID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _start_time
     (setq _start_time (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _stop_time
     (setq _stop_time (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get roboy_communication_simulation::RecordingControl :md5sum-) "a1f619fdc44f7b747ba8736a6b246929")
(setf (get roboy_communication_simulation::RecordingControl :datatype-) "roboy_communication_simulation/RecordingControl")
(setf (get roboy_communication_simulation::RecordingControl :definition-)
      "int32 roboyID
uint32 start_time
uint32 stop_time

")



(provide :roboy_communication_simulation/RecordingControl "a1f619fdc44f7b747ba8736a6b246929")


