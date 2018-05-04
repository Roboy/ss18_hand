;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_middleware::ControllerState)
  (if (not (find-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
    (make-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
  (shadow 'ControllerState (find-package "ROBOY_COMMUNICATION_MIDDLEWARE")))
(unless (find-package "ROBOY_COMMUNICATION_MIDDLEWARE::CONTROLLERSTATE")
  (make-package "ROBOY_COMMUNICATION_MIDDLEWARE::CONTROLLERSTATE"))

(in-package "ROS")
;;//! \htmlinclude ControllerState.msg.html


(defclass roboy_communication_middleware::ControllerState
  :super ros::object
  :slots (_id _state ))

(defmethod roboy_communication_middleware::ControllerState
  (:init
   (&key
    ((:id __id) 0)
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _state (round __state))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; int8 _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; int8 _state
       (write-byte _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _state 127) (setq _state (- _state 256)))
   ;;
   self)
  )

(setf (get roboy_communication_middleware::ControllerState :md5sum-) "f00dcf2e3a6005fc3fe542d5151cdd98")
(setf (get roboy_communication_middleware::ControllerState :datatype-) "roboy_communication_middleware/ControllerState")
(setf (get roboy_communication_middleware::ControllerState :definition-)
      "int32 id
int8 state


")



(provide :roboy_communication_middleware/ControllerState "f00dcf2e3a6005fc3fe542d5151cdd98")


