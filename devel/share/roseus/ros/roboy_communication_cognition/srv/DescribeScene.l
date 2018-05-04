;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_cognition::DescribeScene)
  (if (not (find-package "ROBOY_COMMUNICATION_COGNITION"))
    (make-package "ROBOY_COMMUNICATION_COGNITION"))
  (shadow 'DescribeScene (find-package "ROBOY_COMMUNICATION_COGNITION")))
(unless (find-package "ROBOY_COMMUNICATION_COGNITION::DESCRIBESCENE")
  (make-package "ROBOY_COMMUNICATION_COGNITION::DESCRIBESCENE"))
(unless (find-package "ROBOY_COMMUNICATION_COGNITION::DESCRIBESCENEREQUEST")
  (make-package "ROBOY_COMMUNICATION_COGNITION::DESCRIBESCENEREQUEST"))
(unless (find-package "ROBOY_COMMUNICATION_COGNITION::DESCRIBESCENERESPONSE")
  (make-package "ROBOY_COMMUNICATION_COGNITION::DESCRIBESCENERESPONSE"))

(in-package "ROS")





(defclass roboy_communication_cognition::DescribeSceneRequest
  :super ros::object
  :slots ())

(defmethod roboy_communication_cognition::DescribeSceneRequest
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

(defclass roboy_communication_cognition::DescribeSceneResponse
  :super ros::object
  :slots (_objects_detected ))

(defmethod roboy_communication_cognition::DescribeSceneResponse
  (:init
   (&key
    ((:objects_detected __objects_detected) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _objects_detected __objects_detected)
   self)
  (:objects_detected
   (&optional __objects_detected)
   (if __objects_detected (setq _objects_detected __objects_detected)) _objects_detected)
  (:serialization-length
   ()
   (+
    ;; string[] _objects_detected
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _objects_detected)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _objects_detected
     (write-long (length _objects_detected) s)
     (dolist (elem _objects_detected)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _objects_detected
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _objects_detected (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _objects_detected i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass roboy_communication_cognition::DescribeScene
  :super ros::object
  :slots ())

(setf (get roboy_communication_cognition::DescribeScene :md5sum-) "7f86144326f6014074f85b3e9d900ff5")
(setf (get roboy_communication_cognition::DescribeScene :datatype-) "roboy_communication_cognition/DescribeScene")
(setf (get roboy_communication_cognition::DescribeScene :request) roboy_communication_cognition::DescribeSceneRequest)
(setf (get roboy_communication_cognition::DescribeScene :response) roboy_communication_cognition::DescribeSceneResponse)

(defmethod roboy_communication_cognition::DescribeSceneRequest
  (:response () (instance roboy_communication_cognition::DescribeSceneResponse :init)))

(setf (get roboy_communication_cognition::DescribeSceneRequest :md5sum-) "7f86144326f6014074f85b3e9d900ff5")
(setf (get roboy_communication_cognition::DescribeSceneRequest :datatype-) "roboy_communication_cognition/DescribeSceneRequest")
(setf (get roboy_communication_cognition::DescribeSceneRequest :definition-)
      "---

string[] objects_detected
")

(setf (get roboy_communication_cognition::DescribeSceneResponse :md5sum-) "7f86144326f6014074f85b3e9d900ff5")
(setf (get roboy_communication_cognition::DescribeSceneResponse :datatype-) "roboy_communication_cognition/DescribeSceneResponse")
(setf (get roboy_communication_cognition::DescribeSceneResponse :definition-)
      "---

string[] objects_detected
")



(provide :roboy_communication_cognition/DescribeScene "7f86144326f6014074f85b3e9d900ff5")


