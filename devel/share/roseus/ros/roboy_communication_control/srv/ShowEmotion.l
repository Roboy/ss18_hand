;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_control::ShowEmotion)
  (if (not (find-package "ROBOY_COMMUNICATION_CONTROL"))
    (make-package "ROBOY_COMMUNICATION_CONTROL"))
  (shadow 'ShowEmotion (find-package "ROBOY_COMMUNICATION_CONTROL")))
(unless (find-package "ROBOY_COMMUNICATION_CONTROL::SHOWEMOTION")
  (make-package "ROBOY_COMMUNICATION_CONTROL::SHOWEMOTION"))
(unless (find-package "ROBOY_COMMUNICATION_CONTROL::SHOWEMOTIONREQUEST")
  (make-package "ROBOY_COMMUNICATION_CONTROL::SHOWEMOTIONREQUEST"))
(unless (find-package "ROBOY_COMMUNICATION_CONTROL::SHOWEMOTIONRESPONSE")
  (make-package "ROBOY_COMMUNICATION_CONTROL::SHOWEMOTIONRESPONSE"))

(in-package "ROS")





(defclass roboy_communication_control::ShowEmotionRequest
  :super ros::object
  :slots (_emotion ))

(defmethod roboy_communication_control::ShowEmotionRequest
  (:init
   (&key
    ((:emotion __emotion) "")
    )
   (send-super :init)
   (setq _emotion (string __emotion))
   self)
  (:emotion
   (&optional __emotion)
   (if __emotion (setq _emotion __emotion)) _emotion)
  (:serialization-length
   ()
   (+
    ;; string _emotion
    4 (length _emotion)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _emotion
       (write-long (length _emotion) s) (princ _emotion s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _emotion
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _emotion (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass roboy_communication_control::ShowEmotionResponse
  :super ros::object
  :slots (_success ))

(defmethod roboy_communication_control::ShowEmotionResponse
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

(defclass roboy_communication_control::ShowEmotion
  :super ros::object
  :slots ())

(setf (get roboy_communication_control::ShowEmotion :md5sum-) "5a9d20fa9a1b468cec007dad13c554fc")
(setf (get roboy_communication_control::ShowEmotion :datatype-) "roboy_communication_control/ShowEmotion")
(setf (get roboy_communication_control::ShowEmotion :request) roboy_communication_control::ShowEmotionRequest)
(setf (get roboy_communication_control::ShowEmotion :response) roboy_communication_control::ShowEmotionResponse)

(defmethod roboy_communication_control::ShowEmotionRequest
  (:response () (instance roboy_communication_control::ShowEmotionResponse :init)))

(setf (get roboy_communication_control::ShowEmotionRequest :md5sum-) "5a9d20fa9a1b468cec007dad13c554fc")
(setf (get roboy_communication_control::ShowEmotionRequest :datatype-) "roboy_communication_control/ShowEmotionRequest")
(setf (get roboy_communication_control::ShowEmotionRequest :definition-)
      "string emotion
---
bool success
")

(setf (get roboy_communication_control::ShowEmotionResponse :md5sum-) "5a9d20fa9a1b468cec007dad13c554fc")
(setf (get roboy_communication_control::ShowEmotionResponse :datatype-) "roboy_communication_control/ShowEmotionResponse")
(setf (get roboy_communication_control::ShowEmotionResponse :definition-)
      "string emotion
---
bool success
")



(provide :roboy_communication_control/ShowEmotion "5a9d20fa9a1b468cec007dad13c554fc")


