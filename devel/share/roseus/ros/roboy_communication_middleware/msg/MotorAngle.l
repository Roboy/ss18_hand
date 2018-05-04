;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_middleware::MotorAngle)
  (if (not (find-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
    (make-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
  (shadow 'MotorAngle (find-package "ROBOY_COMMUNICATION_MIDDLEWARE")))
(unless (find-package "ROBOY_COMMUNICATION_MIDDLEWARE::MOTORANGLE")
  (make-package "ROBOY_COMMUNICATION_MIDDLEWARE::MOTORANGLE"))

(in-package "ROS")
;;//! \htmlinclude MotorAngle.msg.html


(defclass roboy_communication_middleware::MotorAngle
  :super ros::object
  :slots (_id _angles _magneticFieldStrength _temperature ))

(defmethod roboy_communication_middleware::MotorAngle
  (:init
   (&key
    ((:id __id) 0)
    ((:angles __angles) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:magneticFieldStrength __magneticFieldStrength) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:temperature __temperature) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _angles __angles)
   (setq _magneticFieldStrength __magneticFieldStrength)
   (setq _temperature __temperature)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:angles
   (&optional __angles)
   (if __angles (setq _angles __angles)) _angles)
  (:magneticFieldStrength
   (&optional __magneticFieldStrength)
   (if __magneticFieldStrength (setq _magneticFieldStrength __magneticFieldStrength)) _magneticFieldStrength)
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:serialization-length
   ()
   (+
    ;; uint8 _id
    1
    ;; float32[] _angles
    (* 4    (length _angles)) 4
    ;; float32[] _magneticFieldStrength
    (* 4    (length _magneticFieldStrength)) 4
    ;; float32[] _temperature
    (* 4    (length _temperature)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id
       (write-byte _id s)
     ;; float32[] _angles
     (write-long (length _angles) s)
     (dotimes (i (length _angles))
       (sys::poke (elt _angles i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _magneticFieldStrength
     (write-long (length _magneticFieldStrength) s)
     (dotimes (i (length _magneticFieldStrength))
       (sys::poke (elt _magneticFieldStrength i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _temperature
     (write-long (length _temperature) s)
     (dotimes (i (length _temperature))
       (sys::poke (elt _temperature i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32[] _angles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _angles (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _angles i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _magneticFieldStrength
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _magneticFieldStrength (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _magneticFieldStrength i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _temperature
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _temperature (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _temperature i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get roboy_communication_middleware::MotorAngle :md5sum-) "e77ee0873101c5aa5aab2c7814b05290")
(setf (get roboy_communication_middleware::MotorAngle :datatype-) "roboy_communication_middleware/MotorAngle")
(setf (get roboy_communication_middleware::MotorAngle :definition-)
      "uint8 id
float32[] angles
float32[] magneticFieldStrength
float32[] temperature
")



(provide :roboy_communication_middleware/MotorAngle "e77ee0873101c5aa5aab2c7814b05290")


