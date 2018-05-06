;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_simulation::TendonUpdate)
  (if (not (find-package "ROBOY_COMMUNICATION_SIMULATION"))
    (make-package "ROBOY_COMMUNICATION_SIMULATION"))
  (shadow 'TendonUpdate (find-package "ROBOY_COMMUNICATION_SIMULATION")))
(unless (find-package "ROBOY_COMMUNICATION_SIMULATION::TENDONUPDATE")
  (make-package "ROBOY_COMMUNICATION_SIMULATION::TENDONUPDATE"))

(in-package "ROS")
;;//! \htmlinclude TendonUpdate.msg.html


(defclass roboy_communication_simulation::TendonUpdate
  :super ros::object
  :slots (_tendonID _force ))

(defmethod roboy_communication_simulation::TendonUpdate
  (:init
   (&key
    ((:tendonID __tendonID) 0)
    ((:force __force) 0.0)
    )
   (send-super :init)
   (setq _tendonID (round __tendonID))
   (setq _force (float __force))
   self)
  (:tendonID
   (&optional __tendonID)
   (if __tendonID (setq _tendonID __tendonID)) _tendonID)
  (:force
   (&optional __force)
   (if __force (setq _force __force)) _force)
  (:serialization-length
   ()
   (+
    ;; int32 _tendonID
    4
    ;; float32 _force
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _tendonID
       (write-long _tendonID s)
     ;; float32 _force
       (sys::poke _force (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _tendonID
     (setq _tendonID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _force
     (setq _force (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get roboy_communication_simulation::TendonUpdate :md5sum-) "40ef7f502a46077cbda3bb5f848de286")
(setf (get roboy_communication_simulation::TendonUpdate :datatype-) "roboy_communication_simulation/TendonUpdate")
(setf (get roboy_communication_simulation::TendonUpdate :definition-)
      "int32 tendonID
#currently applied forcce
float32 force
")



(provide :roboy_communication_simulation/TendonUpdate "40ef7f502a46077cbda3bb5f848de286")


