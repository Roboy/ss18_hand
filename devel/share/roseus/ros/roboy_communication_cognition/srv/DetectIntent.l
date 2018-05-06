;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_cognition::DetectIntent)
  (if (not (find-package "ROBOY_COMMUNICATION_COGNITION"))
    (make-package "ROBOY_COMMUNICATION_COGNITION"))
  (shadow 'DetectIntent (find-package "ROBOY_COMMUNICATION_COGNITION")))
(unless (find-package "ROBOY_COMMUNICATION_COGNITION::DETECTINTENT")
  (make-package "ROBOY_COMMUNICATION_COGNITION::DETECTINTENT"))
(unless (find-package "ROBOY_COMMUNICATION_COGNITION::DETECTINTENTREQUEST")
  (make-package "ROBOY_COMMUNICATION_COGNITION::DETECTINTENTREQUEST"))
(unless (find-package "ROBOY_COMMUNICATION_COGNITION::DETECTINTENTRESPONSE")
  (make-package "ROBOY_COMMUNICATION_COGNITION::DETECTINTENTRESPONSE"))

(in-package "ROS")





(defclass roboy_communication_cognition::DetectIntentRequest
  :super ros::object
  :slots (_sentence ))

(defmethod roboy_communication_cognition::DetectIntentRequest
  (:init
   (&key
    ((:sentence __sentence) "")
    )
   (send-super :init)
   (setq _sentence (string __sentence))
   self)
  (:sentence
   (&optional __sentence)
   (if __sentence (setq _sentence __sentence)) _sentence)
  (:serialization-length
   ()
   (+
    ;; string _sentence
    4 (length _sentence)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _sentence
       (write-long (length _sentence) s) (princ _sentence s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _sentence
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sentence (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass roboy_communication_cognition::DetectIntentResponse
  :super ros::object
  :slots (_intent _distance ))

(defmethod roboy_communication_cognition::DetectIntentResponse
  (:init
   (&key
    ((:intent __intent) "")
    ((:distance __distance) 0.0)
    )
   (send-super :init)
   (setq _intent (string __intent))
   (setq _distance (float __distance))
   self)
  (:intent
   (&optional __intent)
   (if __intent (setq _intent __intent)) _intent)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:serialization-length
   ()
   (+
    ;; string _intent
    4 (length _intent)
    ;; float32 _distance
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _intent
       (write-long (length _intent) s) (princ _intent s)
     ;; float32 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _intent
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _intent (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _distance
     (setq _distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass roboy_communication_cognition::DetectIntent
  :super ros::object
  :slots ())

(setf (get roboy_communication_cognition::DetectIntent :md5sum-) "70b4f9547191039dfd285ee1d326f6c8")
(setf (get roboy_communication_cognition::DetectIntent :datatype-) "roboy_communication_cognition/DetectIntent")
(setf (get roboy_communication_cognition::DetectIntent :request) roboy_communication_cognition::DetectIntentRequest)
(setf (get roboy_communication_cognition::DetectIntent :response) roboy_communication_cognition::DetectIntentResponse)

(defmethod roboy_communication_cognition::DetectIntentRequest
  (:response () (instance roboy_communication_cognition::DetectIntentResponse :init)))

(setf (get roboy_communication_cognition::DetectIntentRequest :md5sum-) "70b4f9547191039dfd285ee1d326f6c8")
(setf (get roboy_communication_cognition::DetectIntentRequest :datatype-) "roboy_communication_cognition/DetectIntentRequest")
(setf (get roboy_communication_cognition::DetectIntentRequest :definition-)
      "string sentence
---
string intent
float32 distance
")

(setf (get roboy_communication_cognition::DetectIntentResponse :md5sum-) "70b4f9547191039dfd285ee1d326f6c8")
(setf (get roboy_communication_cognition::DetectIntentResponse :datatype-) "roboy_communication_cognition/DetectIntentResponse")
(setf (get roboy_communication_cognition::DetectIntentResponse :definition-)
      "string sentence
---
string intent
float32 distance
")



(provide :roboy_communication_cognition/DetectIntent "70b4f9547191039dfd285ee1d326f6c8")


