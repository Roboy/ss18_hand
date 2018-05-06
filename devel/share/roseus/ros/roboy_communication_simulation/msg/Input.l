;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_simulation::Input)
  (if (not (find-package "ROBOY_COMMUNICATION_SIMULATION"))
    (make-package "ROBOY_COMMUNICATION_SIMULATION"))
  (shadow 'Input (find-package "ROBOY_COMMUNICATION_SIMULATION")))
(unless (find-package "ROBOY_COMMUNICATION_SIMULATION::INPUT")
  (make-package "ROBOY_COMMUNICATION_SIMULATION::INPUT"))

(in-package "ROS")
;;//! \htmlinclude Input.msg.html


(defclass roboy_communication_simulation::Input
  :super ros::object
  :slots (_roboyID _name _inputVoltage ))

(defmethod roboy_communication_simulation::Input
  (:init
   (&key
    ((:roboyID __roboyID) 0)
    ((:name __name) "")
    ((:inputVoltage __inputVoltage) 0.0)
    )
   (send-super :init)
   (setq _roboyID (round __roboyID))
   (setq _name (string __name))
   (setq _inputVoltage (float __inputVoltage))
   self)
  (:roboyID
   (&optional __roboyID)
   (if __roboyID (setq _roboyID __roboyID)) _roboyID)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:inputVoltage
   (&optional __inputVoltage)
   (if __inputVoltage (setq _inputVoltage __inputVoltage)) _inputVoltage)
  (:serialization-length
   ()
   (+
    ;; int32 _roboyID
    4
    ;; string _name
    4 (length _name)
    ;; float32 _inputVoltage
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _roboyID
       (write-long _roboyID s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float32 _inputVoltage
       (sys::poke _inputVoltage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _roboyID
     (setq _roboyID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _inputVoltage
     (setq _inputVoltage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get roboy_communication_simulation::Input :md5sum-) "6b29d099f170fe0e13cb609fe43e947f")
(setf (get roboy_communication_simulation::Input :datatype-) "roboy_communication_simulation/Input")
(setf (get roboy_communication_simulation::Input :definition-)
      "int32 roboyID
string name
float32 inputVoltage

")



(provide :roboy_communication_simulation/Input "6b29d099f170fe0e13cb609fe43e947f")


