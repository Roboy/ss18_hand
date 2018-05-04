;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_middleware::Record)
  (if (not (find-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
    (make-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
  (shadow 'Record (find-package "ROBOY_COMMUNICATION_MIDDLEWARE")))
(unless (find-package "ROBOY_COMMUNICATION_MIDDLEWARE::RECORD")
  (make-package "ROBOY_COMMUNICATION_MIDDLEWARE::RECORD"))
(unless (find-package "ROBOY_COMMUNICATION_MIDDLEWARE::RECORDREQUEST")
  (make-package "ROBOY_COMMUNICATION_MIDDLEWARE::RECORDREQUEST"))
(unless (find-package "ROBOY_COMMUNICATION_MIDDLEWARE::RECORDRESPONSE")
  (make-package "ROBOY_COMMUNICATION_MIDDLEWARE::RECORDRESPONSE"))

(in-package "ROS")





(defclass roboy_communication_middleware::RecordRequest
  :super ros::object
  :slots (_controllers _sampleRate ))

(defmethod roboy_communication_middleware::RecordRequest
  (:init
   (&key
    ((:controllers __controllers) (let (r) (dotimes (i 0) (push (instance roboy_communication_middleware::ControllerRequest :init) r)) r))
    ((:sampleRate __sampleRate) 0.0)
    )
   (send-super :init)
   (setq _controllers __controllers)
   (setq _sampleRate (float __sampleRate))
   self)
  (:controllers
   (&rest __controllers)
   (if (keywordp (car __controllers))
       (send* _controllers __controllers)
     (progn
       (if __controllers (setq _controllers (car __controllers)))
       _controllers)))
  (:sampleRate
   (&optional __sampleRate)
   (if __sampleRate (setq _sampleRate __sampleRate)) _sampleRate)
  (:serialization-length
   ()
   (+
    ;; roboy_communication_middleware/ControllerRequest[] _controllers
    (apply #'+ (send-all _controllers :serialization-length)) 4
    ;; float32 _sampleRate
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; roboy_communication_middleware/ControllerRequest[] _controllers
     (write-long (length _controllers) s)
     (dolist (elem _controllers)
       (send elem :serialize s)
       )
     ;; float32 _sampleRate
       (sys::poke _sampleRate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; roboy_communication_middleware/ControllerRequest[] _controllers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _controllers (let (r) (dotimes (i n) (push (instance roboy_communication_middleware::ControllerRequest :init) r)) r))
     (dolist (elem- _controllers)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32 _sampleRate
     (setq _sampleRate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass roboy_communication_middleware::RecordResponse
  :super ros::object
  :slots (_trajectories ))

(defmethod roboy_communication_middleware::RecordResponse
  (:init
   (&key
    ((:trajectories __trajectories) (let (r) (dotimes (i 0) (push (instance roboy_communication_middleware::Trajectory :init) r)) r))
    )
   (send-super :init)
   (setq _trajectories __trajectories)
   self)
  (:trajectories
   (&rest __trajectories)
   (if (keywordp (car __trajectories))
       (send* _trajectories __trajectories)
     (progn
       (if __trajectories (setq _trajectories (car __trajectories)))
       _trajectories)))
  (:serialization-length
   ()
   (+
    ;; roboy_communication_middleware/Trajectory[] _trajectories
    (apply #'+ (send-all _trajectories :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; roboy_communication_middleware/Trajectory[] _trajectories
     (write-long (length _trajectories) s)
     (dolist (elem _trajectories)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; roboy_communication_middleware/Trajectory[] _trajectories
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _trajectories (let (r) (dotimes (i n) (push (instance roboy_communication_middleware::Trajectory :init) r)) r))
     (dolist (elem- _trajectories)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass roboy_communication_middleware::Record
  :super ros::object
  :slots ())

(setf (get roboy_communication_middleware::Record :md5sum-) "8246afadbae0b4cfcc4b33aa0dfa16f2")
(setf (get roboy_communication_middleware::Record :datatype-) "roboy_communication_middleware/Record")
(setf (get roboy_communication_middleware::Record :request) roboy_communication_middleware::RecordRequest)
(setf (get roboy_communication_middleware::Record :response) roboy_communication_middleware::RecordResponse)

(defmethod roboy_communication_middleware::RecordRequest
  (:response () (instance roboy_communication_middleware::RecordResponse :init)))

(setf (get roboy_communication_middleware::RecordRequest :md5sum-) "8246afadbae0b4cfcc4b33aa0dfa16f2")
(setf (get roboy_communication_middleware::RecordRequest :datatype-) "roboy_communication_middleware/RecordRequest")
(setf (get roboy_communication_middleware::RecordRequest :definition-)
      "ControllerRequest[] controllers
float32 sampleRate

================================================================================
MSG: roboy_communication_middleware/ControllerRequest
int32    id
---
Trajectory[] trajectories

================================================================================
MSG: roboy_communication_middleware/Trajectory
uint32 id
float32 samplerate
float32[] waypoints

")

(setf (get roboy_communication_middleware::RecordResponse :md5sum-) "8246afadbae0b4cfcc4b33aa0dfa16f2")
(setf (get roboy_communication_middleware::RecordResponse :datatype-) "roboy_communication_middleware/RecordResponse")
(setf (get roboy_communication_middleware::RecordResponse :definition-)
      "ControllerRequest[] controllers
float32 sampleRate

================================================================================
MSG: roboy_communication_middleware/ControllerRequest
int32    id
---
Trajectory[] trajectories

================================================================================
MSG: roboy_communication_middleware/Trajectory
uint32 id
float32 samplerate
float32[] waypoints

")



(provide :roboy_communication_middleware/Record "8246afadbae0b4cfcc4b33aa0dfa16f2")


