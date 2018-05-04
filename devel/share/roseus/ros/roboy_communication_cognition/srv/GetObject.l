;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_cognition::GetObject)
  (if (not (find-package "ROBOY_COMMUNICATION_COGNITION"))
    (make-package "ROBOY_COMMUNICATION_COGNITION"))
  (shadow 'GetObject (find-package "ROBOY_COMMUNICATION_COGNITION")))
(unless (find-package "ROBOY_COMMUNICATION_COGNITION::GETOBJECT")
  (make-package "ROBOY_COMMUNICATION_COGNITION::GETOBJECT"))
(unless (find-package "ROBOY_COMMUNICATION_COGNITION::GETOBJECTREQUEST")
  (make-package "ROBOY_COMMUNICATION_COGNITION::GETOBJECTREQUEST"))
(unless (find-package "ROBOY_COMMUNICATION_COGNITION::GETOBJECTRESPONSE")
  (make-package "ROBOY_COMMUNICATION_COGNITION::GETOBJECTRESPONSE"))

(in-package "ROS")





(defclass roboy_communication_cognition::GetObjectRequest
  :super ros::object
  :slots (_properties _values ))

(defmethod roboy_communication_cognition::GetObjectRequest
  (:init
   (&key
    ((:properties __properties) "")
    ((:values __values) "")
    )
   (send-super :init)
   (setq _properties (string __properties))
   (setq _values (string __values))
   self)
  (:properties
   (&optional __properties)
   (if __properties (setq _properties __properties)) _properties)
  (:values
   (&optional __values)
   (if __values (setq _values __values)) _values)
  (:serialization-length
   ()
   (+
    ;; string _properties
    4 (length _properties)
    ;; string _values
    4 (length _values)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _properties
       (write-long (length _properties) s) (princ _properties s)
     ;; string _values
       (write-long (length _values) s) (princ _values s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _properties
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _properties (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _values
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _values (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass roboy_communication_cognition::GetObjectResponse
  :super ros::object
  :slots (_result _instance ))

(defmethod roboy_communication_cognition::GetObjectResponse
  (:init
   (&key
    ((:result __result) nil)
    ((:instance __instance) "")
    )
   (send-super :init)
   (setq _result __result)
   (setq _instance (string __instance))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:instance
   (&optional __instance)
   (if __instance (setq _instance __instance)) _instance)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ;; string _instance
    4 (length _instance)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;; string _instance
       (write-long (length _instance) s) (princ _instance s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _instance
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _instance (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass roboy_communication_cognition::GetObject
  :super ros::object
  :slots ())

(setf (get roboy_communication_cognition::GetObject :md5sum-) "5371b92e5e40731a7295d51663dd7780")
(setf (get roboy_communication_cognition::GetObject :datatype-) "roboy_communication_cognition/GetObject")
(setf (get roboy_communication_cognition::GetObject :request) roboy_communication_cognition::GetObjectRequest)
(setf (get roboy_communication_cognition::GetObject :response) roboy_communication_cognition::GetObjectResponse)

(defmethod roboy_communication_cognition::GetObjectRequest
  (:response () (instance roboy_communication_cognition::GetObjectResponse :init)))

(setf (get roboy_communication_cognition::GetObjectRequest :md5sum-) "5371b92e5e40731a7295d51663dd7780")
(setf (get roboy_communication_cognition::GetObjectRequest :datatype-) "roboy_communication_cognition/GetObjectRequest")
(setf (get roboy_communication_cognition::GetObjectRequest :definition-)
      "string properties
string values
---
bool result
string instance
")

(setf (get roboy_communication_cognition::GetObjectResponse :md5sum-) "5371b92e5e40731a7295d51663dd7780")
(setf (get roboy_communication_cognition::GetObjectResponse :datatype-) "roboy_communication_cognition/GetObjectResponse")
(setf (get roboy_communication_cognition::GetObjectResponse :definition-)
      "string properties
string values
---
bool result
string instance
")



(provide :roboy_communication_cognition/GetObject "5371b92e5e40731a7295d51663dd7780")


