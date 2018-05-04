;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_cognition::Talk)
  (if (not (find-package "ROBOY_COMMUNICATION_COGNITION"))
    (make-package "ROBOY_COMMUNICATION_COGNITION"))
  (shadow 'Talk (find-package "ROBOY_COMMUNICATION_COGNITION")))
(unless (find-package "ROBOY_COMMUNICATION_COGNITION::TALK")
  (make-package "ROBOY_COMMUNICATION_COGNITION::TALK"))
(unless (find-package "ROBOY_COMMUNICATION_COGNITION::TALKREQUEST")
  (make-package "ROBOY_COMMUNICATION_COGNITION::TALKREQUEST"))
(unless (find-package "ROBOY_COMMUNICATION_COGNITION::TALKRESPONSE")
  (make-package "ROBOY_COMMUNICATION_COGNITION::TALKRESPONSE"))

(in-package "ROS")





(defclass roboy_communication_cognition::TalkRequest
  :super ros::object
  :slots (_text ))

(defmethod roboy_communication_cognition::TalkRequest
  (:init
   (&key
    ((:text __text) "")
    )
   (send-super :init)
   (setq _text (string __text))
   self)
  (:text
   (&optional __text)
   (if __text (setq _text __text)) _text)
  (:serialization-length
   ()
   (+
    ;; string _text
    4 (length _text)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _text
       (write-long (length _text) s) (princ _text s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass roboy_communication_cognition::TalkResponse
  :super ros::object
  :slots (_success ))

(defmethod roboy_communication_cognition::TalkResponse
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

(defclass roboy_communication_cognition::Talk
  :super ros::object
  :slots ())

(setf (get roboy_communication_cognition::Talk :md5sum-) "6ca61db74fc49874aa02b7ab6bcb76f8")
(setf (get roboy_communication_cognition::Talk :datatype-) "roboy_communication_cognition/Talk")
(setf (get roboy_communication_cognition::Talk :request) roboy_communication_cognition::TalkRequest)
(setf (get roboy_communication_cognition::Talk :response) roboy_communication_cognition::TalkResponse)

(defmethod roboy_communication_cognition::TalkRequest
  (:response () (instance roboy_communication_cognition::TalkResponse :init)))

(setf (get roboy_communication_cognition::TalkRequest :md5sum-) "6ca61db74fc49874aa02b7ab6bcb76f8")
(setf (get roboy_communication_cognition::TalkRequest :datatype-) "roboy_communication_cognition/TalkRequest")
(setf (get roboy_communication_cognition::TalkRequest :definition-)
      "string text
---
bool success
")

(setf (get roboy_communication_cognition::TalkResponse :md5sum-) "6ca61db74fc49874aa02b7ab6bcb76f8")
(setf (get roboy_communication_cognition::TalkResponse :datatype-) "roboy_communication_cognition/TalkResponse")
(setf (get roboy_communication_cognition::TalkResponse :definition-)
      "string text
---
bool success
")



(provide :roboy_communication_cognition/Talk "6ca61db74fc49874aa02b7ab6bcb76f8")


