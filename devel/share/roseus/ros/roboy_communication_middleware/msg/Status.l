;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_middleware::Status)
  (if (not (find-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
    (make-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
  (shadow 'Status (find-package "ROBOY_COMMUNICATION_MIDDLEWARE")))
(unless (find-package "ROBOY_COMMUNICATION_MIDDLEWARE::STATUS")
  (make-package "ROBOY_COMMUNICATION_MIDDLEWARE::STATUS"))

(in-package "ROS")
;;//! \htmlinclude Status.msg.html


(defclass roboy_communication_middleware::Status
  :super ros::object
  :slots (_statusCode _steered ))

(defmethod roboy_communication_middleware::Status
  (:init
   (&key
    ((:statusCode __statusCode) 0)
    ((:steered __steered) 0)
    )
   (send-super :init)
   (setq _statusCode (round __statusCode))
   (setq _steered (round __steered))
   self)
  (:statusCode
   (&optional __statusCode)
   (if __statusCode (setq _statusCode __statusCode)) _statusCode)
  (:steered
   (&optional __steered)
   (if __steered (setq _steered __steered)) _steered)
  (:serialization-length
   ()
   (+
    ;; uint8 _statusCode
    1
    ;; uint8 _steered
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _statusCode
       (write-byte _statusCode s)
     ;; uint8 _steered
       (write-byte _steered s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _statusCode
     (setq _statusCode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _steered
     (setq _steered (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get roboy_communication_middleware::Status :md5sum-) "7aa054f567dcdaf03fdb7adb993112db")
(setf (get roboy_communication_middleware::Status :datatype-) "roboy_communication_middleware/Status")
(setf (get roboy_communication_middleware::Status :definition-)
      "uint8 statusCode
uint8 steered
")



(provide :roboy_communication_middleware/Status "7aa054f567dcdaf03fdb7adb993112db")


