;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_middleware::SetTrajectory)
  (if (not (find-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
    (make-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
  (shadow 'SetTrajectory (find-package "ROBOY_COMMUNICATION_MIDDLEWARE")))
(unless (find-package "ROBOY_COMMUNICATION_MIDDLEWARE::SETTRAJECTORY")
  (make-package "ROBOY_COMMUNICATION_MIDDLEWARE::SETTRAJECTORY"))
(unless (find-package "ROBOY_COMMUNICATION_MIDDLEWARE::SETTRAJECTORYREQUEST")
  (make-package "ROBOY_COMMUNICATION_MIDDLEWARE::SETTRAJECTORYREQUEST"))
(unless (find-package "ROBOY_COMMUNICATION_MIDDLEWARE::SETTRAJECTORYRESPONSE")
  (make-package "ROBOY_COMMUNICATION_MIDDLEWARE::SETTRAJECTORYRESPONSE"))

(in-package "ROS")





(defclass roboy_communication_middleware::SetTrajectoryRequest
  :super ros::object
  :slots (_trajectory ))

(defmethod roboy_communication_middleware::SetTrajectoryRequest
  (:init
   (&key
    ((:trajectory __trajectory) (instance roboy_communication_middleware::Trajectory :init))
    )
   (send-super :init)
   (setq _trajectory __trajectory)
   self)
  (:trajectory
   (&rest __trajectory)
   (if (keywordp (car __trajectory))
       (send* _trajectory __trajectory)
     (progn
       (if __trajectory (setq _trajectory (car __trajectory)))
       _trajectory)))
  (:serialization-length
   ()
   (+
    ;; roboy_communication_middleware/Trajectory _trajectory
    (send _trajectory :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; roboy_communication_middleware/Trajectory _trajectory
       (send _trajectory :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; roboy_communication_middleware/Trajectory _trajectory
     (send _trajectory :deserialize buf ptr-) (incf ptr- (send _trajectory :serialization-length))
   ;;
   self)
  )

(defclass roboy_communication_middleware::SetTrajectoryResponse
  :super ros::object
  :slots (_state ))

(defmethod roboy_communication_middleware::SetTrajectoryResponse
  (:init
   (&key
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _state (round __state))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; uint8 _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _state
       (write-byte _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass roboy_communication_middleware::SetTrajectory
  :super ros::object
  :slots ())

(setf (get roboy_communication_middleware::SetTrajectory :md5sum-) "eaf3f910b01afc97910e678067741a78")
(setf (get roboy_communication_middleware::SetTrajectory :datatype-) "roboy_communication_middleware/SetTrajectory")
(setf (get roboy_communication_middleware::SetTrajectory :request) roboy_communication_middleware::SetTrajectoryRequest)
(setf (get roboy_communication_middleware::SetTrajectory :response) roboy_communication_middleware::SetTrajectoryResponse)

(defmethod roboy_communication_middleware::SetTrajectoryRequest
  (:response () (instance roboy_communication_middleware::SetTrajectoryResponse :init)))

(setf (get roboy_communication_middleware::SetTrajectoryRequest :md5sum-) "eaf3f910b01afc97910e678067741a78")
(setf (get roboy_communication_middleware::SetTrajectoryRequest :datatype-) "roboy_communication_middleware/SetTrajectoryRequest")
(setf (get roboy_communication_middleware::SetTrajectoryRequest :definition-)
      "Trajectory trajectory

================================================================================
MSG: roboy_communication_middleware/Trajectory
uint32 id
float32 samplerate
float32[] waypoints

---
uint8 state
")

(setf (get roboy_communication_middleware::SetTrajectoryResponse :md5sum-) "eaf3f910b01afc97910e678067741a78")
(setf (get roboy_communication_middleware::SetTrajectoryResponse :datatype-) "roboy_communication_middleware/SetTrajectoryResponse")
(setf (get roboy_communication_middleware::SetTrajectoryResponse :definition-)
      "Trajectory trajectory

================================================================================
MSG: roboy_communication_middleware/Trajectory
uint32 id
float32 samplerate
float32[] waypoints

---
uint8 state
")



(provide :roboy_communication_middleware/SetTrajectory "eaf3f910b01afc97910e678067741a78")


