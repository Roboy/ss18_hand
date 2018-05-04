;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_simulation::COM)
  (if (not (find-package "ROBOY_COMMUNICATION_SIMULATION"))
    (make-package "ROBOY_COMMUNICATION_SIMULATION"))
  (shadow 'COM (find-package "ROBOY_COMMUNICATION_SIMULATION")))
(unless (find-package "ROBOY_COMMUNICATION_SIMULATION::COM")
  (make-package "ROBOY_COMMUNICATION_SIMULATION::COM"))

(in-package "ROS")
;;//! \htmlinclude COM.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass roboy_communication_simulation::COM
  :super ros::object
  :slots (_roboyID _Position _Velocity ))

(defmethod roboy_communication_simulation::COM
  (:init
   (&key
    ((:roboyID __roboyID) 0)
    ((:Position __Position) (instance geometry_msgs::Point :init))
    ((:Velocity __Velocity) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _roboyID (round __roboyID))
   (setq _Position __Position)
   (setq _Velocity __Velocity)
   self)
  (:roboyID
   (&optional __roboyID)
   (if __roboyID (setq _roboyID __roboyID)) _roboyID)
  (:Position
   (&rest __Position)
   (if (keywordp (car __Position))
       (send* _Position __Position)
     (progn
       (if __Position (setq _Position (car __Position)))
       _Position)))
  (:Velocity
   (&rest __Velocity)
   (if (keywordp (car __Velocity))
       (send* _Velocity __Velocity)
     (progn
       (if __Velocity (setq _Velocity (car __Velocity)))
       _Velocity)))
  (:serialization-length
   ()
   (+
    ;; int32 _roboyID
    4
    ;; geometry_msgs/Point _Position
    (send _Position :serialization-length)
    ;; geometry_msgs/Point _Velocity
    (send _Velocity :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _roboyID
       (write-long _roboyID s)
     ;; geometry_msgs/Point _Position
       (send _Position :serialize s)
     ;; geometry_msgs/Point _Velocity
       (send _Velocity :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _roboyID
     (setq _roboyID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Point _Position
     (send _Position :deserialize buf ptr-) (incf ptr- (send _Position :serialization-length))
   ;; geometry_msgs/Point _Velocity
     (send _Velocity :deserialize buf ptr-) (incf ptr- (send _Velocity :serialization-length))
   ;;
   self)
  )

(setf (get roboy_communication_simulation::COM :md5sum-) "3b1b5402540d516eb0a6ed06790735e7")
(setf (get roboy_communication_simulation::COM :datatype-) "roboy_communication_simulation/COM")
(setf (get roboy_communication_simulation::COM :definition-)
      "int32 roboyID
geometry_msgs/Point Position
geometry_msgs/Point Velocity

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :roboy_communication_simulation/COM "3b1b5402540d516eb0a6ed06790735e7")


