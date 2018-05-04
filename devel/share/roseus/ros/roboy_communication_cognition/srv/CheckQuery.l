;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_cognition::CheckQuery)
  (if (not (find-package "ROBOY_COMMUNICATION_COGNITION"))
    (make-package "ROBOY_COMMUNICATION_COGNITION"))
  (shadow 'CheckQuery (find-package "ROBOY_COMMUNICATION_COGNITION")))
(unless (find-package "ROBOY_COMMUNICATION_COGNITION::CHECKQUERY")
  (make-package "ROBOY_COMMUNICATION_COGNITION::CHECKQUERY"))
(unless (find-package "ROBOY_COMMUNICATION_COGNITION::CHECKQUERYREQUEST")
  (make-package "ROBOY_COMMUNICATION_COGNITION::CHECKQUERYREQUEST"))
(unless (find-package "ROBOY_COMMUNICATION_COGNITION::CHECKQUERYRESPONSE")
  (make-package "ROBOY_COMMUNICATION_COGNITION::CHECKQUERYRESPONSE"))

(in-package "ROS")





(defclass roboy_communication_cognition::CheckQueryRequest
  :super ros::object
  :slots (_query ))

(defmethod roboy_communication_cognition::CheckQueryRequest
  (:init
   (&key
    ((:query __query) "")
    )
   (send-super :init)
   (setq _query (string __query))
   self)
  (:query
   (&optional __query)
   (if __query (setq _query __query)) _query)
  (:serialization-length
   ()
   (+
    ;; string _query
    4 (length _query)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _query
       (write-long (length _query) s) (princ _query s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _query
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _query (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass roboy_communication_cognition::CheckQueryResponse
  :super ros::object
  :slots (_result ))

(defmethod roboy_communication_cognition::CheckQueryResponse
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

(defclass roboy_communication_cognition::CheckQuery
  :super ros::object
  :slots ())

(setf (get roboy_communication_cognition::CheckQuery :md5sum-) "5404d412a67bedecd70067ff4e66aff8")
(setf (get roboy_communication_cognition::CheckQuery :datatype-) "roboy_communication_cognition/CheckQuery")
(setf (get roboy_communication_cognition::CheckQuery :request) roboy_communication_cognition::CheckQueryRequest)
(setf (get roboy_communication_cognition::CheckQuery :response) roboy_communication_cognition::CheckQueryResponse)

(defmethod roboy_communication_cognition::CheckQueryRequest
  (:response () (instance roboy_communication_cognition::CheckQueryResponse :init)))

(setf (get roboy_communication_cognition::CheckQueryRequest :md5sum-) "5404d412a67bedecd70067ff4e66aff8")
(setf (get roboy_communication_cognition::CheckQueryRequest :datatype-) "roboy_communication_cognition/CheckQueryRequest")
(setf (get roboy_communication_cognition::CheckQueryRequest :definition-)
      "string query
---
bool result

")

(setf (get roboy_communication_cognition::CheckQueryResponse :md5sum-) "5404d412a67bedecd70067ff4e66aff8")
(setf (get roboy_communication_cognition::CheckQueryResponse :datatype-) "roboy_communication_cognition/CheckQueryResponse")
(setf (get roboy_communication_cognition::CheckQueryResponse :definition-)
      "string query
---
bool result

")



(provide :roboy_communication_cognition/CheckQuery "5404d412a67bedecd70067ff4e66aff8")


