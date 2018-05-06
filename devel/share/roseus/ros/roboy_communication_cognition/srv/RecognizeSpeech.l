;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_cognition::RecognizeSpeech)
  (if (not (find-package "ROBOY_COMMUNICATION_COGNITION"))
    (make-package "ROBOY_COMMUNICATION_COGNITION"))
  (shadow 'RecognizeSpeech (find-package "ROBOY_COMMUNICATION_COGNITION")))
(unless (find-package "ROBOY_COMMUNICATION_COGNITION::RECOGNIZESPEECH")
  (make-package "ROBOY_COMMUNICATION_COGNITION::RECOGNIZESPEECH"))
(unless (find-package "ROBOY_COMMUNICATION_COGNITION::RECOGNIZESPEECHREQUEST")
  (make-package "ROBOY_COMMUNICATION_COGNITION::RECOGNIZESPEECHREQUEST"))
(unless (find-package "ROBOY_COMMUNICATION_COGNITION::RECOGNIZESPEECHRESPONSE")
  (make-package "ROBOY_COMMUNICATION_COGNITION::RECOGNIZESPEECHRESPONSE"))

(in-package "ROS")





(defclass roboy_communication_cognition::RecognizeSpeechRequest
  :super ros::object
  :slots ())

(defmethod roboy_communication_cognition::RecognizeSpeechRequest
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

(defclass roboy_communication_cognition::RecognizeSpeechResponse
  :super ros::object
  :slots (_text ))

(defmethod roboy_communication_cognition::RecognizeSpeechResponse
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

(defclass roboy_communication_cognition::RecognizeSpeech
  :super ros::object
  :slots ())

(setf (get roboy_communication_cognition::RecognizeSpeech :md5sum-) "74697ed3d931f6eede8bf3a8dfeca160")
(setf (get roboy_communication_cognition::RecognizeSpeech :datatype-) "roboy_communication_cognition/RecognizeSpeech")
(setf (get roboy_communication_cognition::RecognizeSpeech :request) roboy_communication_cognition::RecognizeSpeechRequest)
(setf (get roboy_communication_cognition::RecognizeSpeech :response) roboy_communication_cognition::RecognizeSpeechResponse)

(defmethod roboy_communication_cognition::RecognizeSpeechRequest
  (:response () (instance roboy_communication_cognition::RecognizeSpeechResponse :init)))

(setf (get roboy_communication_cognition::RecognizeSpeechRequest :md5sum-) "74697ed3d931f6eede8bf3a8dfeca160")
(setf (get roboy_communication_cognition::RecognizeSpeechRequest :datatype-) "roboy_communication_cognition/RecognizeSpeechRequest")
(setf (get roboy_communication_cognition::RecognizeSpeechRequest :definition-)
      "---
string text

")

(setf (get roboy_communication_cognition::RecognizeSpeechResponse :md5sum-) "74697ed3d931f6eede8bf3a8dfeca160")
(setf (get roboy_communication_cognition::RecognizeSpeechResponse :datatype-) "roboy_communication_cognition/RecognizeSpeechResponse")
(setf (get roboy_communication_cognition::RecognizeSpeechResponse :definition-)
      "---
string text

")



(provide :roboy_communication_cognition/RecognizeSpeech "74697ed3d931f6eede8bf3a8dfeca160")


