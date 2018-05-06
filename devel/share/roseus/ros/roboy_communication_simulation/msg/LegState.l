;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_simulation::LegState)
  (if (not (find-package "ROBOY_COMMUNICATION_SIMULATION"))
    (make-package "ROBOY_COMMUNICATION_SIMULATION"))
  (shadow 'LegState (find-package "ROBOY_COMMUNICATION_SIMULATION")))
(unless (find-package "ROBOY_COMMUNICATION_SIMULATION::LEGSTATE")
  (make-package "ROBOY_COMMUNICATION_SIMULATION::LEGSTATE"))

(in-package "ROS")
;;//! \htmlinclude LegState.msg.html


(defclass roboy_communication_simulation::LegState
  :super ros::object
  :slots (_roboyID _leg _state ))

(defmethod roboy_communication_simulation::LegState
  (:init
   (&key
    ((:roboyID __roboyID) 0)
    ((:leg __leg) 0)
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _roboyID (round __roboyID))
   (setq _leg (round __leg))
   (setq _state (round __state))
   self)
  (:roboyID
   (&optional __roboyID)
   (if __roboyID (setq _roboyID __roboyID)) _roboyID)
  (:leg
   (&optional __leg)
   (if __leg (setq _leg __leg)) _leg)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; int32 _roboyID
    4
    ;; int32 _leg
    4
    ;; int32 _state
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _roboyID
       (write-long _roboyID s)
     ;; int32 _leg
       (write-long _leg s)
     ;; int32 _state
       (write-long _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _roboyID
     (setq _roboyID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _leg
     (setq _leg (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _state
     (setq _state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get roboy_communication_simulation::LegState :md5sum-) "e3dd49eede2d5daac3acf9a5bd32dc15")
(setf (get roboy_communication_simulation::LegState :datatype-) "roboy_communication_simulation/LegState")
(setf (get roboy_communication_simulation::LegState :definition-)
      "int32 roboyID
int32 leg
int32 state
")



(provide :roboy_communication_simulation/LegState "e3dd49eede2d5daac3acf9a5bd32dc15")


