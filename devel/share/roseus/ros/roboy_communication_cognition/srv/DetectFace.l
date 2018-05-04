;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_cognition::DetectFace)
  (if (not (find-package "ROBOY_COMMUNICATION_COGNITION"))
    (make-package "ROBOY_COMMUNICATION_COGNITION"))
  (shadow 'DetectFace (find-package "ROBOY_COMMUNICATION_COGNITION")))
(unless (find-package "ROBOY_COMMUNICATION_COGNITION::DETECTFACE")
  (make-package "ROBOY_COMMUNICATION_COGNITION::DETECTFACE"))
(unless (find-package "ROBOY_COMMUNICATION_COGNITION::DETECTFACEREQUEST")
  (make-package "ROBOY_COMMUNICATION_COGNITION::DETECTFACEREQUEST"))
(unless (find-package "ROBOY_COMMUNICATION_COGNITION::DETECTFACERESPONSE")
  (make-package "ROBOY_COMMUNICATION_COGNITION::DETECTFACERESPONSE"))

(in-package "ROS")





(defclass roboy_communication_cognition::DetectFaceRequest
  :super ros::object
  :slots ())

(defmethod roboy_communication_cognition::DetectFaceRequest
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

(defclass roboy_communication_cognition::DetectFaceResponse
  :super ros::object
  :slots (_face_detected ))

(defmethod roboy_communication_cognition::DetectFaceResponse
  (:init
   (&key
    ((:face_detected __face_detected) nil)
    )
   (send-super :init)
   (setq _face_detected __face_detected)
   self)
  (:face_detected
   (&optional __face_detected)
   (if __face_detected (setq _face_detected __face_detected)) _face_detected)
  (:serialization-length
   ()
   (+
    ;; bool _face_detected
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _face_detected
       (if _face_detected (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _face_detected
     (setq _face_detected (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass roboy_communication_cognition::DetectFace
  :super ros::object
  :slots ())

(setf (get roboy_communication_cognition::DetectFace :md5sum-) "94fee4081dfe1f4cd412b0ed430e52b4")
(setf (get roboy_communication_cognition::DetectFace :datatype-) "roboy_communication_cognition/DetectFace")
(setf (get roboy_communication_cognition::DetectFace :request) roboy_communication_cognition::DetectFaceRequest)
(setf (get roboy_communication_cognition::DetectFace :response) roboy_communication_cognition::DetectFaceResponse)

(defmethod roboy_communication_cognition::DetectFaceRequest
  (:response () (instance roboy_communication_cognition::DetectFaceResponse :init)))

(setf (get roboy_communication_cognition::DetectFaceRequest :md5sum-) "94fee4081dfe1f4cd412b0ed430e52b4")
(setf (get roboy_communication_cognition::DetectFaceRequest :datatype-) "roboy_communication_cognition/DetectFaceRequest")
(setf (get roboy_communication_cognition::DetectFaceRequest :definition-)
      "---
bool face_detected

")

(setf (get roboy_communication_cognition::DetectFaceResponse :md5sum-) "94fee4081dfe1f4cd412b0ed430e52b4")
(setf (get roboy_communication_cognition::DetectFaceResponse :datatype-) "roboy_communication_cognition/DetectFaceResponse")
(setf (get roboy_communication_cognition::DetectFaceResponse :definition-)
      "---
bool face_detected

")



(provide :roboy_communication_cognition/DetectFace "94fee4081dfe1f4cd412b0ed430e52b4")


