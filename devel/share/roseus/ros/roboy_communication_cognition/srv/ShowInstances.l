;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_cognition::ShowInstances)
  (if (not (find-package "ROBOY_COMMUNICATION_COGNITION"))
    (make-package "ROBOY_COMMUNICATION_COGNITION"))
  (shadow 'ShowInstances (find-package "ROBOY_COMMUNICATION_COGNITION")))
(unless (find-package "ROBOY_COMMUNICATION_COGNITION::SHOWINSTANCES")
  (make-package "ROBOY_COMMUNICATION_COGNITION::SHOWINSTANCES"))
(unless (find-package "ROBOY_COMMUNICATION_COGNITION::SHOWINSTANCESREQUEST")
  (make-package "ROBOY_COMMUNICATION_COGNITION::SHOWINSTANCESREQUEST"))
(unless (find-package "ROBOY_COMMUNICATION_COGNITION::SHOWINSTANCESRESPONSE")
  (make-package "ROBOY_COMMUNICATION_COGNITION::SHOWINSTANCESRESPONSE"))

(in-package "ROS")





(defclass roboy_communication_cognition::ShowInstancesRequest
  :super ros::object
  :slots (_object_class ))

(defmethod roboy_communication_cognition::ShowInstancesRequest
  (:init
   (&key
    ((:object_class __object_class) "")
    )
   (send-super :init)
   (setq _object_class (string __object_class))
   self)
  (:object_class
   (&optional __object_class)
   (if __object_class (setq _object_class __object_class)) _object_class)
  (:serialization-length
   ()
   (+
    ;; string _object_class
    4 (length _object_class)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _object_class
       (write-long (length _object_class) s) (princ _object_class s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _object_class
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _object_class (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass roboy_communication_cognition::ShowInstancesResponse
  :super ros::object
  :slots (_instances ))

(defmethod roboy_communication_cognition::ShowInstancesResponse
  (:init
   (&key
    ((:instances __instances) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _instances __instances)
   self)
  (:instances
   (&optional __instances)
   (if __instances (setq _instances __instances)) _instances)
  (:serialization-length
   ()
   (+
    ;; string[] _instances
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _instances)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _instances
     (write-long (length _instances) s)
     (dolist (elem _instances)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _instances
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _instances (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _instances i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass roboy_communication_cognition::ShowInstances
  :super ros::object
  :slots ())

(setf (get roboy_communication_cognition::ShowInstances :md5sum-) "cdb5eab71cb46cce11dc358585f13c8e")
(setf (get roboy_communication_cognition::ShowInstances :datatype-) "roboy_communication_cognition/ShowInstances")
(setf (get roboy_communication_cognition::ShowInstances :request) roboy_communication_cognition::ShowInstancesRequest)
(setf (get roboy_communication_cognition::ShowInstances :response) roboy_communication_cognition::ShowInstancesResponse)

(defmethod roboy_communication_cognition::ShowInstancesRequest
  (:response () (instance roboy_communication_cognition::ShowInstancesResponse :init)))

(setf (get roboy_communication_cognition::ShowInstancesRequest :md5sum-) "cdb5eab71cb46cce11dc358585f13c8e")
(setf (get roboy_communication_cognition::ShowInstancesRequest :datatype-) "roboy_communication_cognition/ShowInstancesRequest")
(setf (get roboy_communication_cognition::ShowInstancesRequest :definition-)
      "string object_class
---
string[] instances

")

(setf (get roboy_communication_cognition::ShowInstancesResponse :md5sum-) "cdb5eab71cb46cce11dc358585f13c8e")
(setf (get roboy_communication_cognition::ShowInstancesResponse :datatype-) "roboy_communication_cognition/ShowInstancesResponse")
(setf (get roboy_communication_cognition::ShowInstancesResponse :definition-)
      "string object_class
---
string[] instances

")



(provide :roboy_communication_cognition/ShowInstances "cdb5eab71cb46cce11dc358585f13c8e")


