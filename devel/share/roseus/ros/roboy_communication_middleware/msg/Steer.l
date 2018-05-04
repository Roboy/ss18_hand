;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_middleware::Steer)
  (if (not (find-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
    (make-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
  (shadow 'Steer (find-package "ROBOY_COMMUNICATION_MIDDLEWARE")))
(unless (find-package "ROBOY_COMMUNICATION_MIDDLEWARE::STEER")
  (make-package "ROBOY_COMMUNICATION_MIDDLEWARE::STEER"))

(in-package "ROS")
;;//! \htmlinclude Steer.msg.html


(defclass roboy_communication_middleware::Steer
  :super ros::object
  :slots (_steeringCommand _id ))

(defmethod roboy_communication_middleware::Steer
  (:init
   (&key
    ((:steeringCommand __steeringCommand) 0)
    ((:id __id) 0)
    )
   (send-super :init)
   (setq _steeringCommand (round __steeringCommand))
   (setq _id (round __id))
   self)
  (:steeringCommand
   (&optional __steeringCommand)
   (if __steeringCommand (setq _steeringCommand __steeringCommand)) _steeringCommand)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; int8 _steeringCommand
    1
    ;; int32 _id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _steeringCommand
       (write-byte _steeringCommand s)
     ;; int32 _id
       (write-long _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _steeringCommand
     (setq _steeringCommand (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _steeringCommand 127) (setq _steeringCommand (- _steeringCommand 256)))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get roboy_communication_middleware::Steer :md5sum-) "e06389e481154910390e1eb5098a478e")
(setf (get roboy_communication_middleware::Steer :datatype-) "roboy_communication_middleware/Steer")
(setf (get roboy_communication_middleware::Steer :definition-)
      "# this is the command (START, STOP, REWIND, PAUSE)
int8 steeringCommand
# which behaviour id. you might have sent multiple trajectories to the controllers for preprocessing,
# here you can choose which one should be used)
int32 id
")



(provide :roboy_communication_middleware/Steer "e06389e481154910390e1eb5098a478e")


