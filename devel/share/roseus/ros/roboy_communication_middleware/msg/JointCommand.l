;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_middleware::JointCommand)
  (if (not (find-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
    (make-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
  (shadow 'JointCommand (find-package "ROBOY_COMMUNICATION_MIDDLEWARE")))
(unless (find-package "ROBOY_COMMUNICATION_MIDDLEWARE::JOINTCOMMAND")
  (make-package "ROBOY_COMMUNICATION_MIDDLEWARE::JOINTCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude JointCommand.msg.html


(defclass roboy_communication_middleware::JointCommand
  :super ros::object
  :slots (_link_name _angle ))

(defmethod roboy_communication_middleware::JointCommand
  (:init
   (&key
    ((:link_name __link_name) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:angle __angle) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _link_name __link_name)
   (setq _angle __angle)
   self)
  (:link_name
   (&optional __link_name)
   (if __link_name (setq _link_name __link_name)) _link_name)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:serialization-length
   ()
   (+
    ;; string[] _link_name
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _link_name)) 4
    ;; float32[] _angle
    (* 4    (length _angle)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _link_name
     (write-long (length _link_name) s)
     (dolist (elem _link_name)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float32[] _angle
     (write-long (length _angle) s)
     (dotimes (i (length _angle))
       (sys::poke (elt _angle i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _link_name
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _link_name (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _link_name i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
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

(setf (get roboy_communication_middleware::JointCommand :md5sum-) "b1291289f62fecbebd3e6705db37ed4e")
(setf (get roboy_communication_middleware::JointCommand :datatype-) "roboy_communication_middleware/JointCommand")
(setf (get roboy_communication_middleware::JointCommand :definition-)
      "string[] link_name
float32[] angle
")



(provide :roboy_communication_middleware/JointCommand "b1291289f62fecbebd3e6705db37ed4e")


