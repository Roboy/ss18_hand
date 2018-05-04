;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_middleware::DanceCommand)
  (if (not (find-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
    (make-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
  (shadow 'DanceCommand (find-package "ROBOY_COMMUNICATION_MIDDLEWARE")))
(unless (find-package "ROBOY_COMMUNICATION_MIDDLEWARE::DANCECOMMAND")
  (make-package "ROBOY_COMMUNICATION_MIDDLEWARE::DANCECOMMAND"))

(in-package "ROS")
;;//! \htmlinclude DanceCommand.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass roboy_communication_middleware::DanceCommand
  :super ros::object
  :slots (_sensorID _pos ))

(defmethod roboy_communication_middleware::DanceCommand
  (:init
   (&key
    ((:sensorID __sensorID) 0)
    ((:pos __pos) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _sensorID (round __sensorID))
   (setq _pos __pos)
   self)
  (:sensorID
   (&optional __sensorID)
   (if __sensorID (setq _sensorID __sensorID)) _sensorID)
  (:pos
   (&rest __pos)
   (if (keywordp (car __pos))
       (send* _pos __pos)
     (progn
       (if __pos (setq _pos (car __pos)))
       _pos)))
  (:serialization-length
   ()
   (+
    ;; int32 _sensorID
    4
    ;; geometry_msgs/Vector3 _pos
    (send _pos :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _sensorID
       (write-long _sensorID s)
     ;; geometry_msgs/Vector3 _pos
       (send _pos :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _sensorID
     (setq _sensorID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Vector3 _pos
     (send _pos :deserialize buf ptr-) (incf ptr- (send _pos :serialization-length))
   ;;
   self)
  )

(setf (get roboy_communication_middleware::DanceCommand :md5sum-) "55091eb173d09b78b59c0e3c8cb90d21")
(setf (get roboy_communication_middleware::DanceCommand :datatype-) "roboy_communication_middleware/DanceCommand")
(setf (get roboy_communication_middleware::DanceCommand :definition-)
      "int32 sensorID
geometry_msgs/Vector3 pos
================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :roboy_communication_middleware/DanceCommand "55091eb173d09b78b59c0e3c8cb90d21")


