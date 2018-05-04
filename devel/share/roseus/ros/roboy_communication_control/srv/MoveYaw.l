;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_control::MoveYaw)
  (if (not (find-package "ROBOY_COMMUNICATION_CONTROL"))
    (make-package "ROBOY_COMMUNICATION_CONTROL"))
  (shadow 'MoveYaw (find-package "ROBOY_COMMUNICATION_CONTROL")))
(unless (find-package "ROBOY_COMMUNICATION_CONTROL::MOVEYAW")
  (make-package "ROBOY_COMMUNICATION_CONTROL::MOVEYAW"))
(unless (find-package "ROBOY_COMMUNICATION_CONTROL::MOVEYAWREQUEST")
  (make-package "ROBOY_COMMUNICATION_CONTROL::MOVEYAWREQUEST"))
(unless (find-package "ROBOY_COMMUNICATION_CONTROL::MOVEYAWRESPONSE")
  (make-package "ROBOY_COMMUNICATION_CONTROL::MOVEYAWRESPONSE"))

(in-package "ROS")





(defclass roboy_communication_control::MoveYawRequest
  :super ros::object
  :slots (_value ))

(defmethod roboy_communication_control::MoveYawRequest
  (:init
   (&key
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _value (round __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; int32 _value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _value
       (write-long _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _value
     (setq _value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass roboy_communication_control::MoveYawResponse
  :super ros::object
  :slots (_success ))

(defmethod roboy_communication_control::MoveYawResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass roboy_communication_control::MoveYaw
  :super ros::object
  :slots ())

(setf (get roboy_communication_control::MoveYaw :md5sum-) "bc437afb45673379bdb9f299f9cbbc9e")
(setf (get roboy_communication_control::MoveYaw :datatype-) "roboy_communication_control/MoveYaw")
(setf (get roboy_communication_control::MoveYaw :request) roboy_communication_control::MoveYawRequest)
(setf (get roboy_communication_control::MoveYaw :response) roboy_communication_control::MoveYawResponse)

(defmethod roboy_communication_control::MoveYawRequest
  (:response () (instance roboy_communication_control::MoveYawResponse :init)))

(setf (get roboy_communication_control::MoveYawRequest :md5sum-) "bc437afb45673379bdb9f299f9cbbc9e")
(setf (get roboy_communication_control::MoveYawRequest :datatype-) "roboy_communication_control/MoveYawRequest")
(setf (get roboy_communication_control::MoveYawRequest :definition-)
      "int32 value
---
bool success
")

(setf (get roboy_communication_control::MoveYawResponse :md5sum-) "bc437afb45673379bdb9f299f9cbbc9e")
(setf (get roboy_communication_control::MoveYawResponse :datatype-) "roboy_communication_control/MoveYawResponse")
(setf (get roboy_communication_control::MoveYawResponse :definition-)
      "int32 value
---
bool success
")



(provide :roboy_communication_control/MoveYaw "bc437afb45673379bdb9f299f9cbbc9e")


