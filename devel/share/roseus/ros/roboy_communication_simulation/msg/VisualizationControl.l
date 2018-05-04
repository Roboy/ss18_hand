;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_simulation::VisualizationControl)
  (if (not (find-package "ROBOY_COMMUNICATION_SIMULATION"))
    (make-package "ROBOY_COMMUNICATION_SIMULATION"))
  (shadow 'VisualizationControl (find-package "ROBOY_COMMUNICATION_SIMULATION")))
(unless (find-package "ROBOY_COMMUNICATION_SIMULATION::VISUALIZATIONCONTROL")
  (make-package "ROBOY_COMMUNICATION_SIMULATION::VISUALIZATIONCONTROL"))

(in-package "ROS")
;;//! \htmlinclude VisualizationControl.msg.html


(defclass roboy_communication_simulation::VisualizationControl
  :super ros::object
  :slots (_roboyID _control _value ))

(defmethod roboy_communication_simulation::VisualizationControl
  (:init
   (&key
    ((:roboyID __roboyID) 0)
    ((:control __control) 0)
    ((:value __value) nil)
    )
   (send-super :init)
   (setq _roboyID (round __roboyID))
   (setq _control (round __control))
   (setq _value __value)
   self)
  (:roboyID
   (&optional __roboyID)
   (if __roboyID (setq _roboyID __roboyID)) _roboyID)
  (:control
   (&optional __control)
   (if __control (setq _control __control)) _control)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; int32 _roboyID
    4
    ;; int32 _control
    4
    ;; bool _value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _roboyID
       (write-long _roboyID s)
     ;; int32 _control
       (write-long _control s)
     ;; bool _value
       (if _value (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _roboyID
     (setq _roboyID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _control
     (setq _control (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _value
     (setq _value (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get roboy_communication_simulation::VisualizationControl :md5sum-) "cf7737e0cffb7fec83f0192491e2fe23")
(setf (get roboy_communication_simulation::VisualizationControl :datatype-) "roboy_communication_simulation/VisualizationControl")
(setf (get roboy_communication_simulation::VisualizationControl :definition-)
      "int32 roboyID
int32 control
bool value
")



(provide :roboy_communication_simulation/VisualizationControl "cf7737e0cffb7fec83f0192491e2fe23")


