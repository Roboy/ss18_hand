;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_middleware::HandStatus)
  (if (not (find-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
    (make-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
  (shadow 'HandStatus (find-package "ROBOY_COMMUNICATION_MIDDLEWARE")))
(unless (find-package "ROBOY_COMMUNICATION_MIDDLEWARE::HANDSTATUS")
  (make-package "ROBOY_COMMUNICATION_MIDDLEWARE::HANDSTATUS"))

(in-package "ROS")
;;//! \htmlinclude HandStatus.msg.html


(defclass roboy_communication_middleware::HandStatus
  :super ros::object
  :slots (_id _current _gyro_x _gyro_y _gyro_z _acc_x _acc_y _acc_z ))

(defmethod roboy_communication_middleware::HandStatus
  (:init
   (&key
    ((:id __id) 0)
    ((:current __current) (make-array 0 :initial-element 0 :element-type :integer))
    ((:gyro_x __gyro_x) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:gyro_y __gyro_y) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:gyro_z __gyro_z) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:acc_x __acc_x) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:acc_y __acc_y) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:acc_z __acc_z) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _current __current)
   (setq _gyro_x __gyro_x)
   (setq _gyro_y __gyro_y)
   (setq _gyro_z __gyro_z)
   (setq _acc_x __acc_x)
   (setq _acc_y __acc_y)
   (setq _acc_z __acc_z)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:current
   (&optional __current)
   (if __current (setq _current __current)) _current)
  (:gyro_x
   (&optional __gyro_x)
   (if __gyro_x (setq _gyro_x __gyro_x)) _gyro_x)
  (:gyro_y
   (&optional __gyro_y)
   (if __gyro_y (setq _gyro_y __gyro_y)) _gyro_y)
  (:gyro_z
   (&optional __gyro_z)
   (if __gyro_z (setq _gyro_z __gyro_z)) _gyro_z)
  (:acc_x
   (&optional __acc_x)
   (if __acc_x (setq _acc_x __acc_x)) _acc_x)
  (:acc_y
   (&optional __acc_y)
   (if __acc_y (setq _acc_y __acc_y)) _acc_y)
  (:acc_z
   (&optional __acc_z)
   (if __acc_z (setq _acc_z __acc_z)) _acc_z)
  (:serialization-length
   ()
   (+
    ;; uint8 _id
    1
    ;; uint16[] _current
    (* 2    (length _current)) 4
    ;; float32[] _gyro_x
    (* 4    (length _gyro_x)) 4
    ;; float32[] _gyro_y
    (* 4    (length _gyro_y)) 4
    ;; float32[] _gyro_z
    (* 4    (length _gyro_z)) 4
    ;; float32[] _acc_x
    (* 4    (length _acc_x)) 4
    ;; float32[] _acc_y
    (* 4    (length _acc_y)) 4
    ;; float32[] _acc_z
    (* 4    (length _acc_z)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id
       (write-byte _id s)
     ;; uint16[] _current
     (write-long (length _current) s)
     (dotimes (i (length _current))
       (write-word (elt _current i) s)
       )
     ;; float32[] _gyro_x
     (write-long (length _gyro_x) s)
     (dotimes (i (length _gyro_x))
       (sys::poke (elt _gyro_x i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _gyro_y
     (write-long (length _gyro_y) s)
     (dotimes (i (length _gyro_y))
       (sys::poke (elt _gyro_y i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _gyro_z
     (write-long (length _gyro_z) s)
     (dotimes (i (length _gyro_z))
       (sys::poke (elt _gyro_z i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _acc_x
     (write-long (length _acc_x) s)
     (dotimes (i (length _acc_x))
       (sys::poke (elt _acc_x i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _acc_y
     (write-long (length _acc_y) s)
     (dotimes (i (length _acc_y))
       (sys::poke (elt _acc_y i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _acc_z
     (write-long (length _acc_z) s)
     (dotimes (i (length _acc_z))
       (sys::poke (elt _acc_z i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16[] _current
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _current (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _current i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; float32[] _gyro_x
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _gyro_x (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _gyro_x i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _gyro_y
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _gyro_y (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _gyro_y i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _gyro_z
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _gyro_z (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _gyro_z i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _acc_x
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _acc_x (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _acc_x i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _acc_y
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _acc_y (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _acc_y i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _acc_z
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _acc_z (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _acc_z i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get roboy_communication_middleware::HandStatus :md5sum-) "97b9b0de055e4b42598ca636d82f484d")
(setf (get roboy_communication_middleware::HandStatus :datatype-) "roboy_communication_middleware/HandStatus")
(setf (get roboy_communication_middleware::HandStatus :definition-)
      "uint8 id
# six current measurements per arm board
uint16[] current
float32[] gyro_x
float32[] gyro_y
float32[] gyro_z
float32[] acc_x
float32[] acc_y
float32[] acc_z
")



(provide :roboy_communication_middleware/HandStatus "97b9b0de055e4b42598ca636d82f484d")


