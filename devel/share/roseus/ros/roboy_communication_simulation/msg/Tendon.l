;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_simulation::Tendon)
  (if (not (find-package "ROBOY_COMMUNICATION_SIMULATION"))
    (make-package "ROBOY_COMMUNICATION_SIMULATION"))
  (shadow 'Tendon (find-package "ROBOY_COMMUNICATION_SIMULATION")))
(unless (find-package "ROBOY_COMMUNICATION_SIMULATION::TENDON")
  (make-package "ROBOY_COMMUNICATION_SIMULATION::TENDON"))

(in-package "ROS")
;;//! \htmlinclude Tendon.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass roboy_communication_simulation::Tendon
  :super ros::object
  :slots (_roboyID _viaPoints ))

(defmethod roboy_communication_simulation::Tendon
  (:init
   (&key
    ((:roboyID __roboyID) 0)
    ((:viaPoints __viaPoints) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Vector3 :init) r)) r))
    )
   (send-super :init)
   (setq _roboyID (round __roboyID))
   (setq _viaPoints __viaPoints)
   self)
  (:roboyID
   (&optional __roboyID)
   (if __roboyID (setq _roboyID __roboyID)) _roboyID)
  (:viaPoints
   (&rest __viaPoints)
   (if (keywordp (car __viaPoints))
       (send* _viaPoints __viaPoints)
     (progn
       (if __viaPoints (setq _viaPoints (car __viaPoints)))
       _viaPoints)))
  (:serialization-length
   ()
   (+
    ;; int32 _roboyID
    4
    ;; geometry_msgs/Vector3[] _viaPoints
    (apply #'+ (send-all _viaPoints :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _roboyID
       (write-long _roboyID s)
     ;; geometry_msgs/Vector3[] _viaPoints
     (write-long (length _viaPoints) s)
     (dolist (elem _viaPoints)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _roboyID
     (setq _roboyID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Vector3[] _viaPoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _viaPoints (let (r) (dotimes (i n) (push (instance geometry_msgs::Vector3 :init) r)) r))
     (dolist (elem- _viaPoints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get roboy_communication_simulation::Tendon :md5sum-) "6a1def8dc9efa9f1180288df5984e8b7")
(setf (get roboy_communication_simulation::Tendon :datatype-) "roboy_communication_simulation/Tendon")
(setf (get roboy_communication_simulation::Tendon :definition-)
      "int32 roboyID
geometry_msgs/Vector3[] viaPoints
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



(provide :roboy_communication_simulation/Tendon "6a1def8dc9efa9f1180288df5984e8b7")


