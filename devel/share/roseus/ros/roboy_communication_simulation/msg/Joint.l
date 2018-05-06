;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_simulation::Joint)
  (if (not (find-package "ROBOY_COMMUNICATION_SIMULATION"))
    (make-package "ROBOY_COMMUNICATION_SIMULATION"))
  (shadow 'Joint (find-package "ROBOY_COMMUNICATION_SIMULATION")))
(unless (find-package "ROBOY_COMMUNICATION_SIMULATION::JOINT")
  (make-package "ROBOY_COMMUNICATION_SIMULATION::JOINT"))

(in-package "ROS")
;;//! \htmlinclude Joint.msg.html


(defclass roboy_communication_simulation::Joint
  :super ros::object
  :slots (_roboyID _name _radian ))

(defmethod roboy_communication_simulation::Joint
  (:init
   (&key
    ((:roboyID __roboyID) 0)
    ((:name __name) "")
    ((:radian __radian) 0.0)
    )
   (send-super :init)
   (setq _roboyID (round __roboyID))
   (setq _name (string __name))
   (setq _radian (float __radian))
   self)
  (:roboyID
   (&optional __roboyID)
   (if __roboyID (setq _roboyID __roboyID)) _roboyID)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:radian
   (&optional __radian)
   (if __radian (setq _radian __radian)) _radian)
  (:serialization-length
   ()
   (+
    ;; int32 _roboyID
    4
    ;; string _name
    4 (length _name)
    ;; float32 _radian
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
     ;; float32 _radian
       (sys::poke _radian (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _roboyID
     (setq _roboyID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _radian
     (setq _radian (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get roboy_communication_simulation::Joint :md5sum-) "1482579ad92116e0313fcfe2a25a7ac7")
(setf (get roboy_communication_simulation::Joint :datatype-) "roboy_communication_simulation/Joint")
(setf (get roboy_communication_simulation::Joint :definition-)
      "int32 roboyID
string name
float32 radian

")



(provide :roboy_communication_simulation/Joint "1482579ad92116e0313fcfe2a25a7ac7")


