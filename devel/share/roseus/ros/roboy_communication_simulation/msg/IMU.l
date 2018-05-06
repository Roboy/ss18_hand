;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_simulation::IMU)
  (if (not (find-package "ROBOY_COMMUNICATION_SIMULATION"))
    (make-package "ROBOY_COMMUNICATION_SIMULATION"))
  (shadow 'IMU (find-package "ROBOY_COMMUNICATION_SIMULATION")))
(unless (find-package "ROBOY_COMMUNICATION_SIMULATION::IMU")
  (make-package "ROBOY_COMMUNICATION_SIMULATION::IMU"))

(in-package "ROS")
;;//! \htmlinclude IMU.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass roboy_communication_simulation::IMU
  :super ros::object
  :slots (_roboyID _link _lin_accel_world _ang_vel_world ))

(defmethod roboy_communication_simulation::IMU
  (:init
   (&key
    ((:roboyID __roboyID) 0)
    ((:link __link) "")
    ((:lin_accel_world __lin_accel_world) (instance geometry_msgs::Point :init))
    ((:ang_vel_world __ang_vel_world) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _roboyID (round __roboyID))
   (setq _link (string __link))
   (setq _lin_accel_world __lin_accel_world)
   (setq _ang_vel_world __ang_vel_world)
   self)
  (:roboyID
   (&optional __roboyID)
   (if __roboyID (setq _roboyID __roboyID)) _roboyID)
  (:link
   (&optional __link)
   (if __link (setq _link __link)) _link)
  (:lin_accel_world
   (&rest __lin_accel_world)
   (if (keywordp (car __lin_accel_world))
       (send* _lin_accel_world __lin_accel_world)
     (progn
       (if __lin_accel_world (setq _lin_accel_world (car __lin_accel_world)))
       _lin_accel_world)))
  (:ang_vel_world
   (&rest __ang_vel_world)
   (if (keywordp (car __ang_vel_world))
       (send* _ang_vel_world __ang_vel_world)
     (progn
       (if __ang_vel_world (setq _ang_vel_world (car __ang_vel_world)))
       _ang_vel_world)))
  (:serialization-length
   ()
   (+
    ;; int32 _roboyID
    4
    ;; string _link
    4 (length _link)
    ;; geometry_msgs/Point _lin_accel_world
    (send _lin_accel_world :serialization-length)
    ;; geometry_msgs/Point _ang_vel_world
    (send _ang_vel_world :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _roboyID
       (write-long _roboyID s)
     ;; string _link
       (write-long (length _link) s) (princ _link s)
     ;; geometry_msgs/Point _lin_accel_world
       (send _lin_accel_world :serialize s)
     ;; geometry_msgs/Point _ang_vel_world
       (send _ang_vel_world :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _roboyID
     (setq _roboyID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _link
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _link (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Point _lin_accel_world
     (send _lin_accel_world :deserialize buf ptr-) (incf ptr- (send _lin_accel_world :serialization-length))
   ;; geometry_msgs/Point _ang_vel_world
     (send _ang_vel_world :deserialize buf ptr-) (incf ptr- (send _ang_vel_world :serialization-length))
   ;;
   self)
  )

(setf (get roboy_communication_simulation::IMU :md5sum-) "22dc800153ea9dacdafa02e56ca68a77")
(setf (get roboy_communication_simulation::IMU :datatype-) "roboy_communication_simulation/IMU")
(setf (get roboy_communication_simulation::IMU :definition-)
      "int32 roboyID
string link
geometry_msgs/Point lin_accel_world
geometry_msgs/Point ang_vel_world

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :roboy_communication_simulation/IMU "22dc800153ea9dacdafa02e56ca68a77")


