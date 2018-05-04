;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_simulation::BodyPart)
  (if (not (find-package "ROBOY_COMMUNICATION_SIMULATION"))
    (make-package "ROBOY_COMMUNICATION_SIMULATION"))
  (shadow 'BodyPart (find-package "ROBOY_COMMUNICATION_SIMULATION")))
(unless (find-package "ROBOY_COMMUNICATION_SIMULATION::BODYPART")
  (make-package "ROBOY_COMMUNICATION_SIMULATION::BODYPART"))

(in-package "ROS")
;;//! \htmlinclude BodyPart.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass roboy_communication_simulation::BodyPart
  :super ros::object
  :slots (_roboyID _link _position _mass ))

(defmethod roboy_communication_simulation::BodyPart
  (:init
   (&key
    ((:roboyID __roboyID) 0)
    ((:link __link) "")
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:mass __mass) 0.0)
    )
   (send-super :init)
   (setq _roboyID (round __roboyID))
   (setq _link (string __link))
   (setq _position __position)
   (setq _mass (float __mass))
   self)
  (:roboyID
   (&optional __roboyID)
   (if __roboyID (setq _roboyID __roboyID)) _roboyID)
  (:link
   (&optional __link)
   (if __link (setq _link __link)) _link)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:mass
   (&optional __mass)
   (if __mass (setq _mass __mass)) _mass)
  (:serialization-length
   ()
   (+
    ;; int32 _roboyID
    4
    ;; string _link
    4 (length _link)
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; float64 _mass
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _roboyID
       (write-long _roboyID s)
     ;; string _link
       (write-long (length _link) s) (princ _link s)
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;; float64 _mass
       (sys::poke _mass (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _roboyID
     (setq _roboyID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _link
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _link (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; float64 _mass
     (setq _mass (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get roboy_communication_simulation::BodyPart :md5sum-) "14fe83f1a9f441f48f9c8b6d55f115aa")
(setf (get roboy_communication_simulation::BodyPart :datatype-) "roboy_communication_simulation/BodyPart")
(setf (get roboy_communication_simulation::BodyPart :definition-)
      "int32 roboyID
string link
geometry_msgs/Point position
float64 mass

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :roboy_communication_simulation/BodyPart "14fe83f1a9f441f48f9c8b6d55f115aa")


