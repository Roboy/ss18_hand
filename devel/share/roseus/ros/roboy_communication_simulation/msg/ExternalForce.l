;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_simulation::ExternalForce)
  (if (not (find-package "ROBOY_COMMUNICATION_SIMULATION"))
    (make-package "ROBOY_COMMUNICATION_SIMULATION"))
  (shadow 'ExternalForce (find-package "ROBOY_COMMUNICATION_SIMULATION")))
(unless (find-package "ROBOY_COMMUNICATION_SIMULATION::EXTERNALFORCE")
  (make-package "ROBOY_COMMUNICATION_SIMULATION::EXTERNALFORCE"))

(in-package "ROS")
;;//! \htmlinclude ExternalForce.msg.html


(defclass roboy_communication_simulation::ExternalForce
  :super ros::object
  :slots (_name _x _y _z _f_x _f_y _f_z _duration ))

(defmethod roboy_communication_simulation::ExternalForce
  (:init
   (&key
    ((:name __name) "")
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:f_x __f_x) 0.0)
    ((:f_y __f_y) 0.0)
    ((:f_z __f_z) 0.0)
    ((:duration __duration) 0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _f_x (float __f_x))
   (setq _f_y (float __f_y))
   (setq _f_z (float __f_z))
   (setq _duration (round __duration))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:f_x
   (&optional __f_x)
   (if __f_x (setq _f_x __f_x)) _f_x)
  (:f_y
   (&optional __f_y)
   (if __f_y (setq _f_y __f_y)) _f_y)
  (:f_z
   (&optional __f_z)
   (if __f_z (setq _f_z __f_z)) _f_z)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _z
    4
    ;; float32 _f_x
    4
    ;; float32 _f_y
    4
    ;; float32 _f_z
    4
    ;; int32 _duration
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _f_x
       (sys::poke _f_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _f_y
       (sys::poke _f_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _f_z
       (sys::poke _f_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _duration
       (write-long _duration s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _f_x
     (setq _f_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _f_y
     (setq _f_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _f_z
     (setq _f_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _duration
     (setq _duration (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get roboy_communication_simulation::ExternalForce :md5sum-) "6e3497e9ca5650a8a3d8803fe7153120")
(setf (get roboy_communication_simulation::ExternalForce :datatype-) "roboy_communication_simulation/ExternalForce")
(setf (get roboy_communication_simulation::ExternalForce :definition-)
      "# link name
string name
# relativ position on mesh
float32 x
float32 y
float32 z
# force
float32 f_x
float32 f_y
float32 f_z
# force duration in milliseconds
int32 duration
")



(provide :roboy_communication_simulation/ExternalForce "6e3497e9ca5650a8a3d8803fe7153120")


