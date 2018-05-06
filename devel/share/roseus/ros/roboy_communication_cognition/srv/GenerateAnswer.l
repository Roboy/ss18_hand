;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_cognition::GenerateAnswer)
  (if (not (find-package "ROBOY_COMMUNICATION_COGNITION"))
    (make-package "ROBOY_COMMUNICATION_COGNITION"))
  (shadow 'GenerateAnswer (find-package "ROBOY_COMMUNICATION_COGNITION")))
(unless (find-package "ROBOY_COMMUNICATION_COGNITION::GENERATEANSWER")
  (make-package "ROBOY_COMMUNICATION_COGNITION::GENERATEANSWER"))
(unless (find-package "ROBOY_COMMUNICATION_COGNITION::GENERATEANSWERREQUEST")
  (make-package "ROBOY_COMMUNICATION_COGNITION::GENERATEANSWERREQUEST"))
(unless (find-package "ROBOY_COMMUNICATION_COGNITION::GENERATEANSWERRESPONSE")
  (make-package "ROBOY_COMMUNICATION_COGNITION::GENERATEANSWERRESPONSE"))

(in-package "ROS")





(defclass roboy_communication_cognition::GenerateAnswerRequest
  :super ros::object
  :slots (_text_input ))

(defmethod roboy_communication_cognition::GenerateAnswerRequest
  (:init
   (&key
    ((:text_input __text_input) "")
    )
   (send-super :init)
   (setq _text_input (string __text_input))
   self)
  (:text_input
   (&optional __text_input)
   (if __text_input (setq _text_input __text_input)) _text_input)
  (:serialization-length
   ()
   (+
    ;; string _text_input
    4 (length _text_input)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _text_input
       (write-long (length _text_input) s) (princ _text_input s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _text_input
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _text_input (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass roboy_communication_cognition::GenerateAnswerResponse
  :super ros::object
  :slots (_result _text_output ))

(defmethod roboy_communication_cognition::GenerateAnswerResponse
  (:init
   (&key
    ((:result __result) nil)
    ((:text_output __text_output) "")
    )
   (send-super :init)
   (setq _result __result)
   (setq _text_output (string __text_output))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:text_output
   (&optional __text_output)
   (if __text_output (setq _text_output __text_output)) _text_output)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ;; string _text_output
    4 (length _text_output)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;; string _text_output
       (write-long (length _text_output) s) (princ _text_output s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _text_output
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _text_output (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass roboy_communication_cognition::GenerateAnswer
  :super ros::object
  :slots ())

(setf (get roboy_communication_cognition::GenerateAnswer :md5sum-) "d4741618daf7a94d6af22e9650d416c0")
(setf (get roboy_communication_cognition::GenerateAnswer :datatype-) "roboy_communication_cognition/GenerateAnswer")
(setf (get roboy_communication_cognition::GenerateAnswer :request) roboy_communication_cognition::GenerateAnswerRequest)
(setf (get roboy_communication_cognition::GenerateAnswer :response) roboy_communication_cognition::GenerateAnswerResponse)

(defmethod roboy_communication_cognition::GenerateAnswerRequest
  (:response () (instance roboy_communication_cognition::GenerateAnswerResponse :init)))

(setf (get roboy_communication_cognition::GenerateAnswerRequest :md5sum-) "d4741618daf7a94d6af22e9650d416c0")
(setf (get roboy_communication_cognition::GenerateAnswerRequest :datatype-) "roboy_communication_cognition/GenerateAnswerRequest")
(setf (get roboy_communication_cognition::GenerateAnswerRequest :definition-)
      "string text_input
---
bool result
string text_output

")

(setf (get roboy_communication_cognition::GenerateAnswerResponse :md5sum-) "d4741618daf7a94d6af22e9650d416c0")
(setf (get roboy_communication_cognition::GenerateAnswerResponse :datatype-) "roboy_communication_cognition/GenerateAnswerResponse")
(setf (get roboy_communication_cognition::GenerateAnswerResponse :definition-)
      "string text_input
---
bool result
string text_output

")



(provide :roboy_communication_cognition/GenerateAnswer "d4741618daf7a94d6af22e9650d416c0")


