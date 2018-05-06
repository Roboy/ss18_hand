;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_middleware::DanceTrajectory)
  (if (not (find-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
    (make-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
  (shadow 'DanceTrajectory (find-package "ROBOY_COMMUNICATION_MIDDLEWARE")))
(unless (find-package "ROBOY_COMMUNICATION_MIDDLEWARE::DANCETRAJECTORY")
  (make-package "ROBOY_COMMUNICATION_MIDDLEWARE::DANCETRAJECTORY"))
(unless (find-package "ROBOY_COMMUNICATION_MIDDLEWARE::DANCETRAJECTORYREQUEST")
  (make-package "ROBOY_COMMUNICATION_MIDDLEWARE::DANCETRAJECTORYREQUEST"))
(unless (find-package "ROBOY_COMMUNICATION_MIDDLEWARE::DANCETRAJECTORYRESPONSE")
  (make-package "ROBOY_COMMUNICATION_MIDDLEWARE::DANCETRAJECTORYRESPONSE"))

(in-package "ROS")





(defclass roboy_communication_middleware::DanceTrajectoryRequest
  :super ros::object
  :slots (_trajectory_name ))

(defmethod roboy_communication_middleware::DanceTrajectoryRequest
  (:init
   (&key
    ((:trajectory_name __trajectory_name) "")
    )
   (send-super :init)
   (setq _trajectory_name (string __trajectory_name))
   self)
  (:trajectory_name
   (&optional __trajectory_name)
   (if __trajectory_name (setq _trajectory_name __trajectory_name)) _trajectory_name)
  (:serialization-length
   ()
   (+
    ;; string _trajectory_name
    4 (length _trajectory_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _trajectory_name
       (write-long (length _trajectory_name) s) (princ _trajectory_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _trajectory_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _trajectory_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass roboy_communication_middleware::DanceTrajectoryResponse
  :super ros::object
  :slots ())

(defmethod roboy_communication_middleware::DanceTrajectoryResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass roboy_communication_middleware::DanceTrajectory
  :super ros::object
  :slots ())

(setf (get roboy_communication_middleware::DanceTrajectory :md5sum-) "c1811518113b89edafd5bab82a308c0b")
(setf (get roboy_communication_middleware::DanceTrajectory :datatype-) "roboy_communication_middleware/DanceTrajectory")
(setf (get roboy_communication_middleware::DanceTrajectory :request) roboy_communication_middleware::DanceTrajectoryRequest)
(setf (get roboy_communication_middleware::DanceTrajectory :response) roboy_communication_middleware::DanceTrajectoryResponse)

(defmethod roboy_communication_middleware::DanceTrajectoryRequest
  (:response () (instance roboy_communication_middleware::DanceTrajectoryResponse :init)))

(setf (get roboy_communication_middleware::DanceTrajectoryRequest :md5sum-) "c1811518113b89edafd5bab82a308c0b")
(setf (get roboy_communication_middleware::DanceTrajectoryRequest :datatype-) "roboy_communication_middleware/DanceTrajectoryRequest")
(setf (get roboy_communication_middleware::DanceTrajectoryRequest :definition-)
      "string trajectory_name
---

")

(setf (get roboy_communication_middleware::DanceTrajectoryResponse :md5sum-) "c1811518113b89edafd5bab82a308c0b")
(setf (get roboy_communication_middleware::DanceTrajectoryResponse :datatype-) "roboy_communication_middleware/DanceTrajectoryResponse")
(setf (get roboy_communication_middleware::DanceTrajectoryResponse :definition-)
      "string trajectory_name
---

")



(provide :roboy_communication_middleware/DanceTrajectory "c1811518113b89edafd5bab82a308c0b")


