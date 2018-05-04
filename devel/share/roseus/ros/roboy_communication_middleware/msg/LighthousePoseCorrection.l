;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_middleware::LighthousePoseCorrection)
  (if (not (find-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
    (make-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
  (shadow 'LighthousePoseCorrection (find-package "ROBOY_COMMUNICATION_MIDDLEWARE")))
(unless (find-package "ROBOY_COMMUNICATION_MIDDLEWARE::LIGHTHOUSEPOSECORRECTION")
  (make-package "ROBOY_COMMUNICATION_MIDDLEWARE::LIGHTHOUSEPOSECORRECTION"))

(in-package "ROS")
;;//! \htmlinclude LighthousePoseCorrection.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass roboy_communication_middleware::LighthousePoseCorrection
  :super ros::object
  :slots (_id _type _tf ))

(defmethod roboy_communication_middleware::LighthousePoseCorrection
  (:init
   (&key
    ((:id __id) 0)
    ((:type __type) 0)
    ((:tf __tf) (instance geometry_msgs::Transform :init))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _type (round __type))
   (setq _tf __tf)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:tf
   (&rest __tf)
   (if (keywordp (car __tf))
       (send* _tf __tf)
     (progn
       (if __tf (setq _tf (car __tf)))
       _tf)))
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; uint32 _type
    4
    ;; geometry_msgs/Transform _tf
    (send _tf :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; uint32 _type
       (write-long _type s)
     ;; geometry_msgs/Transform _tf
       (send _tf :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Transform _tf
     (send _tf :deserialize buf ptr-) (incf ptr- (send _tf :serialization-length))
   ;;
   self)
  )

(setf (get roboy_communication_middleware::LighthousePoseCorrection :md5sum-) "4dd1f4419400b4a93663e6e275eb162e")
(setf (get roboy_communication_middleware::LighthousePoseCorrection :datatype-) "roboy_communication_middleware/LighthousePoseCorrection")
(setf (get roboy_communication_middleware::LighthousePoseCorrection :definition-)
      "int32 id
uint32 type
geometry_msgs/Transform tf
================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

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
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :roboy_communication_middleware/LighthousePoseCorrection "4dd1f4419400b4a93663e6e275eb162e")


