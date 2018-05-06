;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_simulation::MotorControl)
  (if (not (find-package "ROBOY_COMMUNICATION_SIMULATION"))
    (make-package "ROBOY_COMMUNICATION_SIMULATION"))
  (shadow 'MotorControl (find-package "ROBOY_COMMUNICATION_SIMULATION")))
(unless (find-package "ROBOY_COMMUNICATION_SIMULATION::MOTORCONTROL")
  (make-package "ROBOY_COMMUNICATION_SIMULATION::MOTORCONTROL"))

(in-package "ROS")
;;//! \htmlinclude MotorControl.msg.html


(defclass roboy_communication_simulation::MotorControl
  :super ros::object
  :slots (_roboyID _voltage ))

(defmethod roboy_communication_simulation::MotorControl
  (:init
   (&key
    ((:roboyID __roboyID) 0)
    ((:voltage __voltage) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _roboyID (round __roboyID))
   (setq _voltage __voltage)
   self)
  (:roboyID
   (&optional __roboyID)
   (if __roboyID (setq _roboyID __roboyID)) _roboyID)
  (:voltage
   (&optional __voltage)
   (if __voltage (setq _voltage __voltage)) _voltage)
  (:serialization-length
   ()
   (+
    ;; int32 _roboyID
    4
    ;; float32[] _voltage
    (* 4    (length _voltage)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _roboyID
       (write-long _roboyID s)
     ;; float32[] _voltage
     (write-long (length _voltage) s)
     (dotimes (i (length _voltage))
       (sys::poke (elt _voltage i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _roboyID
     (setq _roboyID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _voltage
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _voltage (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _voltage i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get roboy_communication_simulation::MotorControl :md5sum-) "49c61e29136459524cb58ce9ee447e65")
(setf (get roboy_communication_simulation::MotorControl :datatype-) "roboy_communication_simulation/MotorControl")
(setf (get roboy_communication_simulation::MotorControl :definition-)
      "int32 roboyID
float32[] voltage
")



(provide :roboy_communication_simulation/MotorControl "49c61e29136459524cb58ce9ee447e65")


