;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_cognition::AssertProperty)
  (if (not (find-package "ROBOY_COMMUNICATION_COGNITION"))
    (make-package "ROBOY_COMMUNICATION_COGNITION"))
  (shadow 'AssertProperty (find-package "ROBOY_COMMUNICATION_COGNITION")))
(unless (find-package "ROBOY_COMMUNICATION_COGNITION::ASSERTPROPERTY")
  (make-package "ROBOY_COMMUNICATION_COGNITION::ASSERTPROPERTY"))
(unless (find-package "ROBOY_COMMUNICATION_COGNITION::ASSERTPROPERTYREQUEST")
  (make-package "ROBOY_COMMUNICATION_COGNITION::ASSERTPROPERTYREQUEST"))
(unless (find-package "ROBOY_COMMUNICATION_COGNITION::ASSERTPROPERTYRESPONSE")
  (make-package "ROBOY_COMMUNICATION_COGNITION::ASSERTPROPERTYRESPONSE"))

(in-package "ROS")





(defclass roboy_communication_cognition::AssertPropertyRequest
  :super ros::object
  :slots (_object _property _instance ))

(defmethod roboy_communication_cognition::AssertPropertyRequest
  (:init
   (&key
    ((:object __object) "")
    ((:property __property) "")
    ((:instance __instance) "")
    )
   (send-super :init)
   (setq _object (string __object))
   (setq _property (string __property))
   (setq _instance (string __instance))
   self)
  (:object
   (&optional __object)
   (if __object (setq _object __object)) _object)
  (:property
   (&optional __property)
   (if __property (setq _property __property)) _property)
  (:instance
   (&optional __instance)
   (if __instance (setq _instance __instance)) _instance)
  (:serialization-length
   ()
   (+
    ;; string _object
    4 (length _object)
    ;; string _property
    4 (length _property)
    ;; string _instance
    4 (length _instance)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _object
       (write-long (length _object) s) (princ _object s)
     ;; string _property
       (write-long (length _property) s) (princ _property s)
     ;; string _instance
       (write-long (length _instance) s) (princ _instance s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _object
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _object (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _property
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _property (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _instance
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _instance (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass roboy_communication_cognition::AssertPropertyResponse
  :super ros::object
  :slots (_result ))

(defmethod roboy_communication_cognition::AssertPropertyResponse
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

(defclass roboy_communication_cognition::AssertProperty
  :super ros::object
  :slots ())

(setf (get roboy_communication_cognition::AssertProperty :md5sum-) "096b73ba3a5f0d25198ae92ca0a7239c")
(setf (get roboy_communication_cognition::AssertProperty :datatype-) "roboy_communication_cognition/AssertProperty")
(setf (get roboy_communication_cognition::AssertProperty :request) roboy_communication_cognition::AssertPropertyRequest)
(setf (get roboy_communication_cognition::AssertProperty :response) roboy_communication_cognition::AssertPropertyResponse)

(defmethod roboy_communication_cognition::AssertPropertyRequest
  (:response () (instance roboy_communication_cognition::AssertPropertyResponse :init)))

(setf (get roboy_communication_cognition::AssertPropertyRequest :md5sum-) "096b73ba3a5f0d25198ae92ca0a7239c")
(setf (get roboy_communication_cognition::AssertPropertyRequest :datatype-) "roboy_communication_cognition/AssertPropertyRequest")
(setf (get roboy_communication_cognition::AssertPropertyRequest :definition-)
      "string object
string property
string instance
---
bool result

")

(setf (get roboy_communication_cognition::AssertPropertyResponse :md5sum-) "096b73ba3a5f0d25198ae92ca0a7239c")
(setf (get roboy_communication_cognition::AssertPropertyResponse :datatype-) "roboy_communication_cognition/AssertPropertyResponse")
(setf (get roboy_communication_cognition::AssertPropertyResponse :definition-)
      "string object
string property
string instance
---
bool result

")



(provide :roboy_communication_cognition/AssertProperty "096b73ba3a5f0d25198ae92ca0a7239c")


