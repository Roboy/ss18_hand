;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_middleware::Trajectory)
  (if (not (find-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
    (make-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
  (shadow 'Trajectory (find-package "ROBOY_COMMUNICATION_MIDDLEWARE")))
(unless (find-package "ROBOY_COMMUNICATION_MIDDLEWARE::TRAJECTORY")
  (make-package "ROBOY_COMMUNICATION_MIDDLEWARE::TRAJECTORY"))

(in-package "ROS")
;;//! \htmlinclude Trajectory.msg.html


(defclass roboy_communication_middleware::Trajectory
  :super ros::object
  :slots (_id _samplerate _waypoints ))

(defmethod roboy_communication_middleware::Trajectory
  (:init
   (&key
    ((:id __id) 0)
    ((:samplerate __samplerate) 0.0)
    ((:waypoints __waypoints) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _samplerate (float __samplerate))
   (setq _waypoints __waypoints)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:samplerate
   (&optional __samplerate)
   (if __samplerate (setq _samplerate __samplerate)) _samplerate)
  (:waypoints
   (&optional __waypoints)
   (if __waypoints (setq _waypoints __waypoints)) _waypoints)
  (:serialization-length
   ()
   (+
    ;; uint32 _id
    4
    ;; float32 _samplerate
    4
    ;; float32[] _waypoints
    (* 4    (length _waypoints)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _id
       (write-long _id s)
     ;; float32 _samplerate
       (sys::poke _samplerate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[] _waypoints
     (write-long (length _waypoints) s)
     (dotimes (i (length _waypoints))
       (sys::poke (elt _waypoints i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _samplerate
     (setq _samplerate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[] _waypoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _waypoints (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _waypoints i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get roboy_communication_middleware::Trajectory :md5sum-) "d11e4c0723b2663c8ea9d08f7b04f5a6")
(setf (get roboy_communication_middleware::Trajectory :datatype-) "roboy_communication_middleware/Trajectory")
(setf (get roboy_communication_middleware::Trajectory :definition-)
      "uint32 id
float32 samplerate
float32[] waypoints


")



(provide :roboy_communication_middleware/Trajectory "d11e4c0723b2663c8ea9d08f7b04f5a6")


