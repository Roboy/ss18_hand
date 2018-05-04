;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_cognition::LookAtSpeaker)
  (if (not (find-package "ROBOY_COMMUNICATION_COGNITION"))
    (make-package "ROBOY_COMMUNICATION_COGNITION"))
  (shadow 'LookAtSpeaker (find-package "ROBOY_COMMUNICATION_COGNITION")))
(unless (find-package "ROBOY_COMMUNICATION_COGNITION::LOOKATSPEAKER")
  (make-package "ROBOY_COMMUNICATION_COGNITION::LOOKATSPEAKER"))
(unless (find-package "ROBOY_COMMUNICATION_COGNITION::LOOKATSPEAKERREQUEST")
  (make-package "ROBOY_COMMUNICATION_COGNITION::LOOKATSPEAKERREQUEST"))
(unless (find-package "ROBOY_COMMUNICATION_COGNITION::LOOKATSPEAKERRESPONSE")
  (make-package "ROBOY_COMMUNICATION_COGNITION::LOOKATSPEAKERRESPONSE"))

(in-package "ROS")





(defclass roboy_communication_cognition::LookAtSpeakerRequest
  :super ros::object
  :slots ())

(defmethod roboy_communication_cognition::LookAtSpeakerRequest
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

(defclass roboy_communication_cognition::LookAtSpeakerResponse
  :super ros::object
  :slots (_turned ))

(defmethod roboy_communication_cognition::LookAtSpeakerResponse
  (:init
   (&key
    ((:turned __turned) nil)
    )
   (send-super :init)
   (setq _turned __turned)
   self)
  (:turned
   (&optional __turned)
   (if __turned (setq _turned __turned)) _turned)
  (:serialization-length
   ()
   (+
    ;; bool _turned
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _turned
       (if _turned (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _turned
     (setq _turned (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass roboy_communication_cognition::LookAtSpeaker
  :super ros::object
  :slots ())

(setf (get roboy_communication_cognition::LookAtSpeaker :md5sum-) "15a9db50325f4812c0499779cd2dc36e")
(setf (get roboy_communication_cognition::LookAtSpeaker :datatype-) "roboy_communication_cognition/LookAtSpeaker")
(setf (get roboy_communication_cognition::LookAtSpeaker :request) roboy_communication_cognition::LookAtSpeakerRequest)
(setf (get roboy_communication_cognition::LookAtSpeaker :response) roboy_communication_cognition::LookAtSpeakerResponse)

(defmethod roboy_communication_cognition::LookAtSpeakerRequest
  (:response () (instance roboy_communication_cognition::LookAtSpeakerResponse :init)))

(setf (get roboy_communication_cognition::LookAtSpeakerRequest :md5sum-) "15a9db50325f4812c0499779cd2dc36e")
(setf (get roboy_communication_cognition::LookAtSpeakerRequest :datatype-) "roboy_communication_cognition/LookAtSpeakerRequest")
(setf (get roboy_communication_cognition::LookAtSpeakerRequest :definition-)
      "---

bool turned

")

(setf (get roboy_communication_cognition::LookAtSpeakerResponse :md5sum-) "15a9db50325f4812c0499779cd2dc36e")
(setf (get roboy_communication_cognition::LookAtSpeakerResponse :datatype-) "roboy_communication_cognition/LookAtSpeakerResponse")
(setf (get roboy_communication_cognition::LookAtSpeakerResponse :definition-)
      "---

bool turned

")



(provide :roboy_communication_cognition/LookAtSpeaker "15a9db50325f4812c0499779cd2dc36e")


