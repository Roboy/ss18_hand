;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_middleware::JointAngle)
  (if (not (find-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
    (make-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
  (shadow 'JointAngle (find-package "ROBOY_COMMUNICATION_MIDDLEWARE")))
(unless (find-package "ROBOY_COMMUNICATION_MIDDLEWARE::JOINTANGLE")
  (make-package "ROBOY_COMMUNICATION_MIDDLEWARE::JOINTANGLE"))

(in-package "ROS")
;;//! \htmlinclude JointAngle.msg.html


(defclass roboy_communication_middleware::JointAngle
  :super ros::object
  :slots (_angle ))

(defmethod roboy_communication_middleware::JointAngle
  (:init
   (&key
    ((:angle __angle) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _angle __angle)
   self)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:serialization-length
   ()
   (+
    ;; float32[] _angle
    (* 4    (length _angle)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _angle
     (write-long (length _angle) s)
     (dotimes (i (length _angle))
       (sys::poke (elt _angle i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _angle
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _angle (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _angle i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get roboy_communication_middleware::JointAngle :md5sum-) "e227be5dbe0ddab6b23e84a527804c51")
(setf (get roboy_communication_middleware::JointAngle :datatype-) "roboy_communication_middleware/JointAngle")
(setf (get roboy_communication_middleware::JointAngle :definition-)
      "float32[] angle
")



(provide :roboy_communication_middleware/JointAngle "e227be5dbe0ddab6b23e84a527804c51")


