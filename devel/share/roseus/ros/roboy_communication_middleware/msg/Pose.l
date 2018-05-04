;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_middleware::Pose)
  (if (not (find-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
    (make-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
  (shadow 'Pose (find-package "ROBOY_COMMUNICATION_MIDDLEWARE")))
(unless (find-package "ROBOY_COMMUNICATION_MIDDLEWARE::POSE")
  (make-package "ROBOY_COMMUNICATION_MIDDLEWARE::POSE"))

(in-package "ROS")
;;//! \htmlinclude Pose.msg.html


(defclass roboy_communication_middleware::Pose
  :super ros::object
  :slots (_name _x _y _z _qx _qy _qz _qw ))

(defmethod roboy_communication_middleware::Pose
  (:init
   (&key
    ((:name __name) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:x __x) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:y __y) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:z __z) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:qx __qx) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:qy __qy) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:qz __qz) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:qw __qw) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _name __name)
   (setq _x __x)
   (setq _y __y)
   (setq _z __z)
   (setq _qx __qx)
   (setq _qy __qy)
   (setq _qz __qz)
   (setq _qw __qw)
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
  (:qx
   (&optional __qx)
   (if __qx (setq _qx __qx)) _qx)
  (:qy
   (&optional __qy)
   (if __qy (setq _qy __qy)) _qy)
  (:qz
   (&optional __qz)
   (if __qz (setq _qz __qz)) _qz)
  (:qw
   (&optional __qw)
   (if __qw (setq _qw __qw)) _qw)
  (:serialization-length
   ()
   (+
    ;; string[] _name
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _name)) 4
    ;; float32[] _x
    (* 4    (length _x)) 4
    ;; float32[] _y
    (* 4    (length _y)) 4
    ;; float32[] _z
    (* 4    (length _z)) 4
    ;; float32[] _qx
    (* 4    (length _qx)) 4
    ;; float32[] _qy
    (* 4    (length _qy)) 4
    ;; float32[] _qz
    (* 4    (length _qz)) 4
    ;; float32[] _qw
    (* 4    (length _qw)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _name
     (write-long (length _name) s)
     (dolist (elem _name)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float32[] _x
     (write-long (length _x) s)
     (dotimes (i (length _x))
       (sys::poke (elt _x i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _y
     (write-long (length _y) s)
     (dotimes (i (length _y))
       (sys::poke (elt _y i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _z
     (write-long (length _z) s)
     (dotimes (i (length _z))
       (sys::poke (elt _z i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _qx
     (write-long (length _qx) s)
     (dotimes (i (length _qx))
       (sys::poke (elt _qx i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _qy
     (write-long (length _qy) s)
     (dotimes (i (length _qy))
       (sys::poke (elt _qy i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _qz
     (write-long (length _qz) s)
     (dotimes (i (length _qz))
       (sys::poke (elt _qz i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _qw
     (write-long (length _qw) s)
     (dotimes (i (length _qw))
       (sys::poke (elt _qw i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _name
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _name (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _name i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float32[] _x
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _x (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _x i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _y
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _y (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _y i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _z
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _z (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _z i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _qx
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _qx (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _qx i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _qy
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _qy (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _qy i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _qz
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _qz (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _qz i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _qw
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _qw (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _qw i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get roboy_communication_middleware::Pose :md5sum-) "dc434a2f664cd6fd0078c757fd9f6060")
(setf (get roboy_communication_middleware::Pose :datatype-) "roboy_communication_middleware/Pose")
(setf (get roboy_communication_middleware::Pose :definition-)
      "# link names
string[] name
# position
float32[] x
float32[] y
float32[] z
# orientation
float32[] qx
float32[] qy
float32[] qz
float32[] qw
")



(provide :roboy_communication_middleware/Pose "dc434a2f664cd6fd0078c757fd9f6060")


