;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_cognition::ShowPropertyValue)
  (if (not (find-package "ROBOY_COMMUNICATION_COGNITION"))
    (make-package "ROBOY_COMMUNICATION_COGNITION"))
  (shadow 'ShowPropertyValue (find-package "ROBOY_COMMUNICATION_COGNITION")))
(unless (find-package "ROBOY_COMMUNICATION_COGNITION::SHOWPROPERTYVALUE")
  (make-package "ROBOY_COMMUNICATION_COGNITION::SHOWPROPERTYVALUE"))
(unless (find-package "ROBOY_COMMUNICATION_COGNITION::SHOWPROPERTYVALUEREQUEST")
  (make-package "ROBOY_COMMUNICATION_COGNITION::SHOWPROPERTYVALUEREQUEST"))
(unless (find-package "ROBOY_COMMUNICATION_COGNITION::SHOWPROPERTYVALUERESPONSE")
  (make-package "ROBOY_COMMUNICATION_COGNITION::SHOWPROPERTYVALUERESPONSE"))

(in-package "ROS")





(defclass roboy_communication_cognition::ShowPropertyValueRequest
  :super ros::object
  :slots (_object _property ))

(defmethod roboy_communication_cognition::ShowPropertyValueRequest
  (:init
   (&key
    ((:object __object) "")
    ((:property __property) "")
    )
   (send-super :init)
   (setq _object (string __object))
   (setq _property (string __property))
   self)
  (:object
   (&optional __object)
   (if __object (setq _object __object)) _object)
  (:property
   (&optional __property)
   (if __property (setq _property __property)) _property)
  (:serialization-length
   ()
   (+
    ;; string _object
    4 (length _object)
    ;; string _property
    4 (length _property)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _object
       (write-long (length _object) s) (princ _object s)
     ;; string _property
       (write-long (length _property) s) (princ _property s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _object
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _object (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _property
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _property (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass roboy_communication_cognition::ShowPropertyValueResponse
  :super ros::object
  :slots (_value ))

(defmethod roboy_communication_cognition::ShowPropertyValueResponse
  (:init
   (&key
    ((:value __value) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _value __value)
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; string[] _value
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _value)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _value
     (write-long (length _value) s)
     (dolist (elem _value)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _value
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _value (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _value i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass roboy_communication_cognition::ShowPropertyValue
  :super ros::object
  :slots ())

(setf (get roboy_communication_cognition::ShowPropertyValue :md5sum-) "0ae81f3cbcb98e037939a885f700a981")
(setf (get roboy_communication_cognition::ShowPropertyValue :datatype-) "roboy_communication_cognition/ShowPropertyValue")
(setf (get roboy_communication_cognition::ShowPropertyValue :request) roboy_communication_cognition::ShowPropertyValueRequest)
(setf (get roboy_communication_cognition::ShowPropertyValue :response) roboy_communication_cognition::ShowPropertyValueResponse)

(defmethod roboy_communication_cognition::ShowPropertyValueRequest
  (:response () (instance roboy_communication_cognition::ShowPropertyValueResponse :init)))

(setf (get roboy_communication_cognition::ShowPropertyValueRequest :md5sum-) "0ae81f3cbcb98e037939a885f700a981")
(setf (get roboy_communication_cognition::ShowPropertyValueRequest :datatype-) "roboy_communication_cognition/ShowPropertyValueRequest")
(setf (get roboy_communication_cognition::ShowPropertyValueRequest :definition-)
      "string object
string property
---
string[] value

")

(setf (get roboy_communication_cognition::ShowPropertyValueResponse :md5sum-) "0ae81f3cbcb98e037939a885f700a981")
(setf (get roboy_communication_cognition::ShowPropertyValueResponse :datatype-) "roboy_communication_cognition/ShowPropertyValueResponse")
(setf (get roboy_communication_cognition::ShowPropertyValueResponse :definition-)
      "string object
string property
---
string[] value

")



(provide :roboy_communication_cognition/ShowPropertyValue "0ae81f3cbcb98e037939a885f700a981")


