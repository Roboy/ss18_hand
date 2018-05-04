;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_middleware::ControlMode)
  (if (not (find-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
    (make-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
  (shadow 'ControlMode (find-package "ROBOY_COMMUNICATION_MIDDLEWARE")))
(unless (find-package "ROBOY_COMMUNICATION_MIDDLEWARE::CONTROLMODE")
  (make-package "ROBOY_COMMUNICATION_MIDDLEWARE::CONTROLMODE"))
(unless (find-package "ROBOY_COMMUNICATION_MIDDLEWARE::CONTROLMODEREQUEST")
  (make-package "ROBOY_COMMUNICATION_MIDDLEWARE::CONTROLMODEREQUEST"))
(unless (find-package "ROBOY_COMMUNICATION_MIDDLEWARE::CONTROLMODERESPONSE")
  (make-package "ROBOY_COMMUNICATION_MIDDLEWARE::CONTROLMODERESPONSE"))

(in-package "ROS")





(defclass roboy_communication_middleware::ControlModeRequest
  :super ros::object
  :slots (_control_mode _setPoint ))

(defmethod roboy_communication_middleware::ControlModeRequest
  (:init
   (&key
    ((:control_mode __control_mode) 0)
    ((:setPoint __setPoint) 0)
    )
   (send-super :init)
   (setq _control_mode (round __control_mode))
   (setq _setPoint (round __setPoint))
   self)
  (:control_mode
   (&optional __control_mode)
   (if __control_mode (setq _control_mode __control_mode)) _control_mode)
  (:setPoint
   (&optional __setPoint)
   (if __setPoint (setq _setPoint __setPoint)) _setPoint)
  (:serialization-length
   ()
   (+
    ;; int32 _control_mode
    4
    ;; int32 _setPoint
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _control_mode
       (write-long _control_mode s)
     ;; int32 _setPoint
       (write-long _setPoint s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _control_mode
     (setq _control_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _setPoint
     (setq _setPoint (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass roboy_communication_middleware::ControlModeResponse
  :super ros::object
  :slots ())

(defmethod roboy_communication_middleware::ControlModeResponse
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

(defclass roboy_communication_middleware::ControlMode
  :super ros::object
  :slots ())

(setf (get roboy_communication_middleware::ControlMode :md5sum-) "f4a9008e9e32a87b9ee7b89f4816168f")
(setf (get roboy_communication_middleware::ControlMode :datatype-) "roboy_communication_middleware/ControlMode")
(setf (get roboy_communication_middleware::ControlMode :request) roboy_communication_middleware::ControlModeRequest)
(setf (get roboy_communication_middleware::ControlMode :response) roboy_communication_middleware::ControlModeResponse)

(defmethod roboy_communication_middleware::ControlModeRequest
  (:response () (instance roboy_communication_middleware::ControlModeResponse :init)))

(setf (get roboy_communication_middleware::ControlModeRequest :md5sum-) "f4a9008e9e32a87b9ee7b89f4816168f")
(setf (get roboy_communication_middleware::ControlModeRequest :datatype-) "roboy_communication_middleware/ControlModeRequest")
(setf (get roboy_communication_middleware::ControlModeRequest :definition-)
      "int32 control_mode
int32 setPoint
---

")

(setf (get roboy_communication_middleware::ControlModeResponse :md5sum-) "f4a9008e9e32a87b9ee7b89f4816168f")
(setf (get roboy_communication_middleware::ControlModeResponse :datatype-) "roboy_communication_middleware/ControlModeResponse")
(setf (get roboy_communication_middleware::ControlModeResponse :definition-)
      "int32 control_mode
int32 setPoint
---

")



(provide :roboy_communication_middleware/ControlMode "f4a9008e9e32a87b9ee7b89f4816168f")


