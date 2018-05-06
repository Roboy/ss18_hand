;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_cognition::FaceCoordinates)
  (if (not (find-package "ROBOY_COMMUNICATION_COGNITION"))
    (make-package "ROBOY_COMMUNICATION_COGNITION"))
  (shadow 'FaceCoordinates (find-package "ROBOY_COMMUNICATION_COGNITION")))
(unless (find-package "ROBOY_COMMUNICATION_COGNITION::FACECOORDINATES")
  (make-package "ROBOY_COMMUNICATION_COGNITION::FACECOORDINATES"))

(in-package "ROS")
;;//! \htmlinclude FaceCoordinates.msg.html


(defclass roboy_communication_cognition::FaceCoordinates
  :super ros::object
  :slots (_id _speaking _x _y _z ))

(defmethod roboy_communication_cognition::FaceCoordinates
  (:init
   (&key
    ((:id __id) 0)
    ((:speaking __speaking) nil)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _speaking __speaking)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:speaking
   (&optional __speaking)
   (if __speaking (setq _speaking __speaking)) _speaking)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; bool _speaking
    1
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _z
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; bool _speaking
       (if _speaking (write-byte -1 s) (write-byte 0 s))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _speaking
     (setq _speaking (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get roboy_communication_cognition::FaceCoordinates :md5sum-) "fa161a73b9038ffc21d5bb777d5c89bb")
(setf (get roboy_communication_cognition::FaceCoordinates :datatype-) "roboy_communication_cognition/FaceCoordinates")
(setf (get roboy_communication_cognition::FaceCoordinates :definition-)
      "#stored id to facial features
int32 id
#is person speaking?
bool speaking
#3D position of person in transformed global coordinates
float32 x
float32 y
float32 z

")



(provide :roboy_communication_cognition/FaceCoordinates "fa161a73b9038ffc21d5bb777d5c89bb")


