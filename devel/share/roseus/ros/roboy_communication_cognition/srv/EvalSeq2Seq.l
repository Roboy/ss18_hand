;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_cognition::EvalSeq2Seq)
  (if (not (find-package "ROBOY_COMMUNICATION_COGNITION"))
    (make-package "ROBOY_COMMUNICATION_COGNITION"))
  (shadow 'EvalSeq2Seq (find-package "ROBOY_COMMUNICATION_COGNITION")))
(unless (find-package "ROBOY_COMMUNICATION_COGNITION::EVALSEQ2SEQ")
  (make-package "ROBOY_COMMUNICATION_COGNITION::EVALSEQ2SEQ"))
(unless (find-package "ROBOY_COMMUNICATION_COGNITION::EVALSEQ2SEQREQUEST")
  (make-package "ROBOY_COMMUNICATION_COGNITION::EVALSEQ2SEQREQUEST"))
(unless (find-package "ROBOY_COMMUNICATION_COGNITION::EVALSEQ2SEQRESPONSE")
  (make-package "ROBOY_COMMUNICATION_COGNITION::EVALSEQ2SEQRESPONSE"))

(in-package "ROS")





(defclass roboy_communication_cognition::EvalSeq2SeqRequest
  :super ros::object
  :slots ())

(defmethod roboy_communication_cognition::EvalSeq2SeqRequest
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

(defclass roboy_communication_cognition::EvalSeq2SeqResponse
  :super ros::object
  :slots (_result ))

(defmethod roboy_communication_cognition::EvalSeq2SeqResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass roboy_communication_cognition::EvalSeq2Seq
  :super ros::object
  :slots ())

(setf (get roboy_communication_cognition::EvalSeq2Seq :md5sum-) "eb13ac1f1354ccecb7941ee8fa2192e8")
(setf (get roboy_communication_cognition::EvalSeq2Seq :datatype-) "roboy_communication_cognition/EvalSeq2Seq")
(setf (get roboy_communication_cognition::EvalSeq2Seq :request) roboy_communication_cognition::EvalSeq2SeqRequest)
(setf (get roboy_communication_cognition::EvalSeq2Seq :response) roboy_communication_cognition::EvalSeq2SeqResponse)

(defmethod roboy_communication_cognition::EvalSeq2SeqRequest
  (:response () (instance roboy_communication_cognition::EvalSeq2SeqResponse :init)))

(setf (get roboy_communication_cognition::EvalSeq2SeqRequest :md5sum-) "eb13ac1f1354ccecb7941ee8fa2192e8")
(setf (get roboy_communication_cognition::EvalSeq2SeqRequest :datatype-) "roboy_communication_cognition/EvalSeq2SeqRequest")
(setf (get roboy_communication_cognition::EvalSeq2SeqRequest :definition-)
      "---
bool result

")

(setf (get roboy_communication_cognition::EvalSeq2SeqResponse :md5sum-) "eb13ac1f1354ccecb7941ee8fa2192e8")
(setf (get roboy_communication_cognition::EvalSeq2SeqResponse :datatype-) "roboy_communication_cognition/EvalSeq2SeqResponse")
(setf (get roboy_communication_cognition::EvalSeq2SeqResponse :definition-)
      "---
bool result

")



(provide :roboy_communication_cognition/EvalSeq2Seq "eb13ac1f1354ccecb7941ee8fa2192e8")


