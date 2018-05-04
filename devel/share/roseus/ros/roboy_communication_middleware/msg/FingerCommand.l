;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_middleware::FingerCommand)
  (if (not (find-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
    (make-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
  (shadow 'FingerCommand (find-package "ROBOY_COMMUNICATION_MIDDLEWARE")))
(unless (find-package "ROBOY_COMMUNICATION_MIDDLEWARE::FINGERCOMMAND")
  (make-package "ROBOY_COMMUNICATION_MIDDLEWARE::FINGERCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude FingerCommand.msg.html


(defclass roboy_communication_middleware::FingerCommand
  :super ros::object
  :slots (_id _finger _angles ))

(defmethod roboy_communication_middleware::FingerCommand
  (:init
   (&key
    ((:id __id) 0)
    ((:finger __finger) 0)
    ((:angles __angles) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _finger (round __finger))
   (setq _angles __angles)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:finger
   (&optional __finger)
   (if __finger (setq _finger __finger)) _finger)
  (:angles
   (&optional __angles)
   (if __angles (setq _angles __angles)) _angles)
  (:serialization-length
   ()
   (+
    ;; uint8 _id
    1
    ;; uint8 _finger
    1
    ;; uint8[] _angles
    (* 1    (length _angles)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id
       (write-byte _id s)
     ;; uint8 _finger
       (write-byte _finger s)
     ;; uint8[] _angles
     (write-long (length _angles) s)
     (princ _angles s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _finger
     (setq _finger (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[] _angles
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _angles (make-array n :element-type :char))
     (replace _angles buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get roboy_communication_middleware::FingerCommand :md5sum-) "067fba6d65ca9da7c94ac130f3808f9a")
(setf (get roboy_communication_middleware::FingerCommand :datatype-) "roboy_communication_middleware/FingerCommand")
(setf (get roboy_communication_middleware::FingerCommand :definition-)
      "uint8 id
uint8 finger
uint8[] angles
")



(provide :roboy_communication_middleware/FingerCommand "067fba6d65ca9da7c94ac130f3808f9a")


