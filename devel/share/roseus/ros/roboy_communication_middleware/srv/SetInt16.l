;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_middleware::SetInt16)
  (if (not (find-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
    (make-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
  (shadow 'SetInt16 (find-package "ROBOY_COMMUNICATION_MIDDLEWARE")))
(unless (find-package "ROBOY_COMMUNICATION_MIDDLEWARE::SETINT16")
  (make-package "ROBOY_COMMUNICATION_MIDDLEWARE::SETINT16"))
(unless (find-package "ROBOY_COMMUNICATION_MIDDLEWARE::SETINT16REQUEST")
  (make-package "ROBOY_COMMUNICATION_MIDDLEWARE::SETINT16REQUEST"))
(unless (find-package "ROBOY_COMMUNICATION_MIDDLEWARE::SETINT16RESPONSE")
  (make-package "ROBOY_COMMUNICATION_MIDDLEWARE::SETINT16RESPONSE"))

(in-package "ROS")





(defclass roboy_communication_middleware::SetInt16Request
  :super ros::object
  :slots (_setpoint ))

(defmethod roboy_communication_middleware::SetInt16Request
  (:init
   (&key
    ((:setpoint __setpoint) 0)
    )
   (send-super :init)
   (setq _setpoint (round __setpoint))
   self)
  (:setpoint
   (&optional __setpoint)
   (if __setpoint (setq _setpoint __setpoint)) _setpoint)
  (:serialization-length
   ()
   (+
    ;; int16 _setpoint
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _setpoint
       (write-word _setpoint s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _setpoint
     (setq _setpoint (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass roboy_communication_middleware::SetInt16Response
  :super ros::object
  :slots ())

(defmethod roboy_communication_middleware::SetInt16Response
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass roboy_communication_middleware::SetInt16
  :super ros::object
  :slots ())

(setf (get roboy_communication_middleware::SetInt16 :md5sum-) "8ee399a1f7e5b4decdfc42e0ba4ab098")
(setf (get roboy_communication_middleware::SetInt16 :datatype-) "roboy_communication_middleware/SetInt16")
(setf (get roboy_communication_middleware::SetInt16 :request) roboy_communication_middleware::SetInt16Request)
(setf (get roboy_communication_middleware::SetInt16 :response) roboy_communication_middleware::SetInt16Response)

(defmethod roboy_communication_middleware::SetInt16Request
  (:response () (instance roboy_communication_middleware::SetInt16Response :init)))

(setf (get roboy_communication_middleware::SetInt16Request :md5sum-) "8ee399a1f7e5b4decdfc42e0ba4ab098")
(setf (get roboy_communication_middleware::SetInt16Request :datatype-) "roboy_communication_middleware/SetInt16Request")
(setf (get roboy_communication_middleware::SetInt16Request :definition-)
      "int16 setpoint
---

")

(setf (get roboy_communication_middleware::SetInt16Response :md5sum-) "8ee399a1f7e5b4decdfc42e0ba4ab098")
(setf (get roboy_communication_middleware::SetInt16Response :datatype-) "roboy_communication_middleware/SetInt16Response")
(setf (get roboy_communication_middleware::SetInt16Response :definition-)
      "int16 setpoint
---

")



(provide :roboy_communication_middleware/SetInt16 "8ee399a1f7e5b4decdfc42e0ba4ab098")


