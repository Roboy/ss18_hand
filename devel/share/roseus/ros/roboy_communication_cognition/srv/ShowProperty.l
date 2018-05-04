;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_cognition::ShowProperty)
  (if (not (find-package "ROBOY_COMMUNICATION_COGNITION"))
    (make-package "ROBOY_COMMUNICATION_COGNITION"))
  (shadow 'ShowProperty (find-package "ROBOY_COMMUNICATION_COGNITION")))
(unless (find-package "ROBOY_COMMUNICATION_COGNITION::SHOWPROPERTY")
  (make-package "ROBOY_COMMUNICATION_COGNITION::SHOWPROPERTY"))
(unless (find-package "ROBOY_COMMUNICATION_COGNITION::SHOWPROPERTYREQUEST")
  (make-package "ROBOY_COMMUNICATION_COGNITION::SHOWPROPERTYREQUEST"))
(unless (find-package "ROBOY_COMMUNICATION_COGNITION::SHOWPROPERTYRESPONSE")
  (make-package "ROBOY_COMMUNICATION_COGNITION::SHOWPROPERTYRESPONSE"))

(in-package "ROS")





(defclass roboy_communication_cognition::ShowPropertyRequest
  :super ros::object
  :slots (_object ))

(defmethod roboy_communication_cognition::ShowPropertyRequest
  (:init
   (&key
    ((:object __object) "")
    )
   (send-super :init)
   (setq _object (string __object))
   self)
  (:object
   (&optional __object)
   (if __object (setq _object __object)) _object)
  (:serialization-length
   ()
   (+
    ;; string _object
    4 (length _object)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _object
       (write-long (length _object) s) (princ _object s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _object
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _object (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass roboy_communication_cognition::ShowPropertyResponse
  :super ros::object
  :slots (_property ))

(defmethod roboy_communication_cognition::ShowPropertyResponse
  (:init
   (&key
    ((:property __property) "")
    )
   (send-super :init)
   (setq _property (string __property))
   self)
  (:property
   (&optional __property)
   (if __property (setq _property __property)) _property)
  (:serialization-length
   ()
   (+
    ;; string _property
    4 (length _property)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _property
       (write-long (length _property) s) (princ _property s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _property
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _property (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass roboy_communication_cognition::ShowProperty
  :super ros::object
  :slots ())

(setf (get roboy_communication_cognition::ShowProperty :md5sum-) "dc601e0fdf79ede7c0526ff3f333e5b2")
(setf (get roboy_communication_cognition::ShowProperty :datatype-) "roboy_communication_cognition/ShowProperty")
(setf (get roboy_communication_cognition::ShowProperty :request) roboy_communication_cognition::ShowPropertyRequest)
(setf (get roboy_communication_cognition::ShowProperty :response) roboy_communication_cognition::ShowPropertyResponse)

(defmethod roboy_communication_cognition::ShowPropertyRequest
  (:response () (instance roboy_communication_cognition::ShowPropertyResponse :init)))

(setf (get roboy_communication_cognition::ShowPropertyRequest :md5sum-) "dc601e0fdf79ede7c0526ff3f333e5b2")
(setf (get roboy_communication_cognition::ShowPropertyRequest :datatype-) "roboy_communication_cognition/ShowPropertyRequest")
(setf (get roboy_communication_cognition::ShowPropertyRequest :definition-)
      "string object
---
string property

")

(setf (get roboy_communication_cognition::ShowPropertyResponse :md5sum-) "dc601e0fdf79ede7c0526ff3f333e5b2")
(setf (get roboy_communication_cognition::ShowPropertyResponse :datatype-) "roboy_communication_cognition/ShowPropertyResponse")
(setf (get roboy_communication_cognition::ShowPropertyResponse :definition-)
      "string object
---
string property

")



(provide :roboy_communication_cognition/ShowProperty "dc601e0fdf79ede7c0526ff3f333e5b2")


