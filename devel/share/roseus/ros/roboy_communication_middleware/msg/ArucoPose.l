;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_middleware::ArucoPose)
  (if (not (find-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
    (make-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
  (shadow 'ArucoPose (find-package "ROBOY_COMMUNICATION_MIDDLEWARE")))
(unless (find-package "ROBOY_COMMUNICATION_MIDDLEWARE::ARUCOPOSE")
  (make-package "ROBOY_COMMUNICATION_MIDDLEWARE::ARUCOPOSE"))

(in-package "ROS")
;;//! \htmlinclude ArucoPose.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass roboy_communication_middleware::ArucoPose
  :super ros::object
  :slots (_id _pose _center ))

(defmethod roboy_communication_middleware::ArucoPose
  (:init
   (&key
    ((:id __id) (make-array 0 :initial-element 0 :element-type :integer))
    ((:pose __pose) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Pose :init) r)) r))
    ((:center __center) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    )
   (send-super :init)
   (setq _id __id)
   (setq _pose __pose)
   (setq _center __center)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:center
   (&rest __center)
   (if (keywordp (car __center))
       (send* _center __center)
     (progn
       (if __center (setq _center (car __center)))
       _center)))
  (:serialization-length
   ()
   (+
    ;; int32[] _id
    (* 4    (length _id)) 4
    ;; geometry_msgs/Pose[] _pose
    (apply #'+ (send-all _pose :serialization-length)) 4
    ;; geometry_msgs/Point[] _center
    (apply #'+ (send-all _center :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _id
     (write-long (length _id) s)
     (dotimes (i (length _id))
       (write-long (elt _id i) s)
       )
     ;; geometry_msgs/Pose[] _pose
     (write-long (length _pose) s)
     (dolist (elem _pose)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Point[] _center
     (write-long (length _center) s)
     (dolist (elem _center)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _id
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _id (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _id i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; geometry_msgs/Pose[] _pose
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pose (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose :init) r)) r))
     (dolist (elem- _pose)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Point[] _center
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _center (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _center)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get roboy_communication_middleware::ArucoPose :md5sum-) "45e145401ac244f631628fd584257bce")
(setf (get roboy_communication_middleware::ArucoPose :datatype-) "roboy_communication_middleware/ArucoPose")
(setf (get roboy_communication_middleware::ArucoPose :definition-)
      "int32[] id
# pose of the marker in 3d space
geometry_msgs/Pose[] pose
# center of the marker in camera plane in pixels
geometry_msgs/Point[] center
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
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



(provide :roboy_communication_middleware/ArucoPose "45e145401ac244f631628fd584257bce")


