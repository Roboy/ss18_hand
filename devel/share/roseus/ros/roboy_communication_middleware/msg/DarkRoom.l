;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_middleware::DarkRoom)
  (if (not (find-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
    (make-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
  (shadow 'DarkRoom (find-package "ROBOY_COMMUNICATION_MIDDLEWARE")))
(unless (find-package "ROBOY_COMMUNICATION_MIDDLEWARE::DARKROOM")
  (make-package "ROBOY_COMMUNICATION_MIDDLEWARE::DARKROOM"))

(in-package "ROS")
;;//! \htmlinclude DarkRoom.msg.html


(defclass roboy_communication_middleware::DarkRoom
  :super ros::object
  :slots (_objectID _timestamp _sensor_value ))

(defmethod roboy_communication_middleware::DarkRoom
  (:init
   (&key
    ((:objectID __objectID) "")
    ((:timestamp __timestamp) (make-array 0 :initial-element 0 :element-type :integer))
    ((:sensor_value __sensor_value) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _objectID (string __objectID))
   (setq _timestamp __timestamp)
   (setq _sensor_value __sensor_value)
   self)
  (:objectID
   (&optional __objectID)
   (if __objectID (setq _objectID __objectID)) _objectID)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:sensor_value
   (&optional __sensor_value)
   (if __sensor_value (setq _sensor_value __sensor_value)) _sensor_value)
  (:serialization-length
   ()
   (+
    ;; string _objectID
    4 (length _objectID)
    ;; int32[] _timestamp
    (* 4    (length _timestamp)) 4
    ;; uint32[] _sensor_value
    (* 4    (length _sensor_value)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _objectID
       (write-long (length _objectID) s) (princ _objectID s)
     ;; int32[] _timestamp
     (write-long (length _timestamp) s)
     (dotimes (i (length _timestamp))
       (write-long (elt _timestamp i) s)
       )
     ;; uint32[] _sensor_value
     (write-long (length _sensor_value) s)
     (dotimes (i (length _sensor_value))
       (write-long (elt _sensor_value i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _objectID
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _objectID (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32[] _timestamp
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _timestamp (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _timestamp i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint32[] _sensor_value
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sensor_value (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _sensor_value i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get roboy_communication_middleware::DarkRoom :md5sum-) "aed743726215b7331fbd6743cff531dc")
(setf (get roboy_communication_middleware::DarkRoom :datatype-) "roboy_communication_middleware/DarkRoom")
(setf (get roboy_communication_middleware::DarkRoom :definition-)
      "string objectID
int32[] timestamp
uint32[] sensor_value

")



(provide :roboy_communication_middleware/DarkRoom "aed743726215b7331fbd6743cff531dc")


