;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_middleware::ControllerRequest)
  (if (not (find-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
    (make-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
  (shadow 'ControllerRequest (find-package "ROBOY_COMMUNICATION_MIDDLEWARE")))
(unless (find-package "ROBOY_COMMUNICATION_MIDDLEWARE::CONTROLLERREQUEST")
  (make-package "ROBOY_COMMUNICATION_MIDDLEWARE::CONTROLLERREQUEST"))

(in-package "ROS")
;;//! \htmlinclude ControllerRequest.msg.html


(defclass roboy_communication_middleware::ControllerRequest
  :super ros::object
  :slots (_id _controlmode ))

(defmethod roboy_communication_middleware::ControllerRequest
  (:init
   (&key
    ((:id __id) 0)
    ((:controlmode __controlmode) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _controlmode (round __controlmode))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:controlmode
   (&optional __controlmode)
   (if __controlmode (setq _controlmode __controlmode)) _controlmode)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; uint32 _controlmode
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; uint32 _controlmode
       (write-long _controlmode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _controlmode
     (setq _controlmode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get roboy_communication_middleware::ControllerRequest :md5sum-) "3e5385e007339c63f87202900089e407")
(setf (get roboy_communication_middleware::ControllerRequest :datatype-) "roboy_communication_middleware/ControllerRequest")
(setf (get roboy_communication_middleware::ControllerRequest :definition-)
      "int32    id
uint32   controlmode
")



(provide :roboy_communication_middleware/ControllerRequest "3e5385e007339c63f87202900089e407")


