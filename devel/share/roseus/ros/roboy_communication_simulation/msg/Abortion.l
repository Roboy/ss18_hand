;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_simulation::Abortion)
  (if (not (find-package "ROBOY_COMMUNICATION_SIMULATION"))
    (make-package "ROBOY_COMMUNICATION_SIMULATION"))
  (shadow 'Abortion (find-package "ROBOY_COMMUNICATION_SIMULATION")))
(unless (find-package "ROBOY_COMMUNICATION_SIMULATION::ABORTION")
  (make-package "ROBOY_COMMUNICATION_SIMULATION::ABORTION"))

(in-package "ROS")
;;//! \htmlinclude Abortion.msg.html


(defclass roboy_communication_simulation::Abortion
  :super ros::object
  :slots (_roboyID _reason ))

(defmethod roboy_communication_simulation::Abortion
  (:init
   (&key
    ((:roboyID __roboyID) 0)
    ((:reason __reason) 0)
    )
   (send-super :init)
   (setq _roboyID (round __roboyID))
   (setq _reason (round __reason))
   self)
  (:roboyID
   (&optional __roboyID)
   (if __roboyID (setq _roboyID __roboyID)) _roboyID)
  (:reason
   (&optional __reason)
   (if __reason (setq _reason __reason)) _reason)
  (:serialization-length
   ()
   (+
    ;; int32 _roboyID
    4
    ;; int32 _reason
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _roboyID
       (write-long _roboyID s)
     ;; int32 _reason
       (write-long _reason s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _roboyID
     (setq _roboyID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _reason
     (setq _reason (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get roboy_communication_simulation::Abortion :md5sum-) "451c0fac2ec706655a3840dd2387858e")
(setf (get roboy_communication_simulation::Abortion :datatype-) "roboy_communication_simulation/Abortion")
(setf (get roboy_communication_simulation::Abortion :definition-)
      "int32 roboyID
int32 reason
")



(provide :roboy_communication_simulation/Abortion "451c0fac2ec706655a3840dd2387858e")


