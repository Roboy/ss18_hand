;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_middleware::RoboyState)
  (if (not (find-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
    (make-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
  (shadow 'RoboyState (find-package "ROBOY_COMMUNICATION_MIDDLEWARE")))
(unless (find-package "ROBOY_COMMUNICATION_MIDDLEWARE::ROBOYSTATE")
  (make-package "ROBOY_COMMUNICATION_MIDDLEWARE::ROBOYSTATE"))

(in-package "ROS")
;;//! \htmlinclude RoboyState.msg.html


(defclass roboy_communication_middleware::RoboyState
  :super ros::object
  :slots (_setPoint _actuatorPos _actuatorVel _tendonDisplacement _actuatorCurrent ))

(defmethod roboy_communication_middleware::RoboyState
  (:init
   (&key
    ((:setPoint __setPoint) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:actuatorPos __actuatorPos) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:actuatorVel __actuatorVel) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:tendonDisplacement __tendonDisplacement) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:actuatorCurrent __actuatorCurrent) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _setPoint __setPoint)
   (setq _actuatorPos __actuatorPos)
   (setq _actuatorVel __actuatorVel)
   (setq _tendonDisplacement __tendonDisplacement)
   (setq _actuatorCurrent __actuatorCurrent)
   self)
  (:setPoint
   (&optional __setPoint)
   (if __setPoint (setq _setPoint __setPoint)) _setPoint)
  (:actuatorPos
   (&optional __actuatorPos)
   (if __actuatorPos (setq _actuatorPos __actuatorPos)) _actuatorPos)
  (:actuatorVel
   (&optional __actuatorVel)
   (if __actuatorVel (setq _actuatorVel __actuatorVel)) _actuatorVel)
  (:tendonDisplacement
   (&optional __tendonDisplacement)
   (if __tendonDisplacement (setq _tendonDisplacement __tendonDisplacement)) _tendonDisplacement)
  (:actuatorCurrent
   (&optional __actuatorCurrent)
   (if __actuatorCurrent (setq _actuatorCurrent __actuatorCurrent)) _actuatorCurrent)
  (:serialization-length
   ()
   (+
    ;; float32[] _setPoint
    (* 4    (length _setPoint)) 4
    ;; float32[] _actuatorPos
    (* 4    (length _actuatorPos)) 4
    ;; float32[] _actuatorVel
    (* 4    (length _actuatorVel)) 4
    ;; float32[] _tendonDisplacement
    (* 4    (length _tendonDisplacement)) 4
    ;; float32[] _actuatorCurrent
    (* 4    (length _actuatorCurrent)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _setPoint
     (write-long (length _setPoint) s)
     (dotimes (i (length _setPoint))
       (sys::poke (elt _setPoint i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _actuatorPos
     (write-long (length _actuatorPos) s)
     (dotimes (i (length _actuatorPos))
       (sys::poke (elt _actuatorPos i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _actuatorVel
     (write-long (length _actuatorVel) s)
     (dotimes (i (length _actuatorVel))
       (sys::poke (elt _actuatorVel i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _tendonDisplacement
     (write-long (length _tendonDisplacement) s)
     (dotimes (i (length _tendonDisplacement))
       (sys::poke (elt _tendonDisplacement i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _actuatorCurrent
     (write-long (length _actuatorCurrent) s)
     (dotimes (i (length _actuatorCurrent))
       (sys::poke (elt _actuatorCurrent i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _setPoint
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _setPoint (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _setPoint i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _actuatorPos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _actuatorPos (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _actuatorPos i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _actuatorVel
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _actuatorVel (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _actuatorVel i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _tendonDisplacement
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tendonDisplacement (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _tendonDisplacement i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _actuatorCurrent
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _actuatorCurrent (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _actuatorCurrent i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get roboy_communication_middleware::RoboyState :md5sum-) "a564b9aee3211a3963e685c6ed14e5e1")
(setf (get roboy_communication_middleware::RoboyState :datatype-) "roboy_communication_middleware/RoboyState")
(setf (get roboy_communication_middleware::RoboyState :definition-)
      "float32[] setPoint
float32[] actuatorPos
float32[] actuatorVel
float32[] tendonDisplacement
float32[] actuatorCurrent

")



(provide :roboy_communication_middleware/RoboyState "a564b9aee3211a3963e685c6ed14e5e1")


