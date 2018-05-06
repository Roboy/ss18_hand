;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_middleware::DarkRoomSensor)
  (if (not (find-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
    (make-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
  (shadow 'DarkRoomSensor (find-package "ROBOY_COMMUNICATION_MIDDLEWARE")))
(unless (find-package "ROBOY_COMMUNICATION_MIDDLEWARE::DARKROOMSENSOR")
  (make-package "ROBOY_COMMUNICATION_MIDDLEWARE::DARKROOMSENSOR"))

(in-package "ROS")
;;//! \htmlinclude DarkRoomSensor.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass roboy_communication_middleware::DarkRoomSensor
  :super ros::object
  :slots (_ids _position ))

(defmethod roboy_communication_middleware::DarkRoomSensor
  (:init
   (&key
    ((:ids __ids) (make-array 0 :initial-element 0 :element-type :integer))
    ((:position __position) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Vector3 :init) r)) r))
    )
   (send-super :init)
   (setq _ids __ids)
   (setq _position __position)
   self)
  (:ids
   (&optional __ids)
   (if __ids (setq _ids __ids)) _ids)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:serialization-length
   ()
   (+
    ;; int32[] _ids
    (* 4    (length _ids)) 4
    ;; geometry_msgs/Vector3[] _position
    (apply #'+ (send-all _position :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _ids
     (write-long (length _ids) s)
     (dotimes (i (length _ids))
       (write-long (elt _ids i) s)
       )
     ;; geometry_msgs/Vector3[] _position
     (write-long (length _position) s)
     (dolist (elem _position)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ids (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _ids i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; geometry_msgs/Vector3[] _position
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _position (let (r) (dotimes (i n) (push (instance geometry_msgs::Vector3 :init) r)) r))
     (dolist (elem- _position)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get roboy_communication_middleware::DarkRoomSensor :md5sum-) "6c8aef307d10bb8c303e67acf5cfadd8")
(setf (get roboy_communication_middleware::DarkRoomSensor :datatype-) "roboy_communication_middleware/DarkRoomSensor")
(setf (get roboy_communication_middleware::DarkRoomSensor :definition-)
      "int32[] ids
geometry_msgs/Vector3[] position
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



(provide :roboy_communication_middleware/DarkRoomSensor "6c8aef307d10bb8c303e67acf5cfadd8")


