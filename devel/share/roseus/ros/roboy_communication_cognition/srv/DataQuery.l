;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_cognition::DataQuery)
  (if (not (find-package "ROBOY_COMMUNICATION_COGNITION"))
    (make-package "ROBOY_COMMUNICATION_COGNITION"))
  (shadow 'DataQuery (find-package "ROBOY_COMMUNICATION_COGNITION")))
(unless (find-package "ROBOY_COMMUNICATION_COGNITION::DATAQUERY")
  (make-package "ROBOY_COMMUNICATION_COGNITION::DATAQUERY"))
(unless (find-package "ROBOY_COMMUNICATION_COGNITION::DATAQUERYREQUEST")
  (make-package "ROBOY_COMMUNICATION_COGNITION::DATAQUERYREQUEST"))
(unless (find-package "ROBOY_COMMUNICATION_COGNITION::DATAQUERYRESPONSE")
  (make-package "ROBOY_COMMUNICATION_COGNITION::DATAQUERYRESPONSE"))

(in-package "ROS")





(defclass roboy_communication_cognition::DataQueryRequest
  :super ros::object
  :slots (_header _payload ))

(defmethod roboy_communication_cognition::DataQueryRequest
  (:init
   (&key
    ((:header __header) "")
    ((:payload __payload) "")
    )
   (send-super :init)
   (setq _header (string __header))
   (setq _payload (string __payload))
   self)
  (:header
   (&optional __header)
   (if __header (setq _header __header)) _header)
  (:payload
   (&optional __payload)
   (if __payload (setq _payload __payload)) _payload)
  (:serialization-length
   ()
   (+
    ;; string _header
    4 (length _header)
    ;; string _payload
    4 (length _payload)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _header
       (write-long (length _header) s) (princ _header s)
     ;; string _payload
       (write-long (length _payload) s) (princ _payload s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _header
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _header (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _payload
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _payload (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass roboy_communication_cognition::DataQueryResponse
  :super ros::object
  :slots (_answer ))

(defmethod roboy_communication_cognition::DataQueryResponse
  (:init
   (&key
    ((:answer __answer) "")
    )
   (send-super :init)
   (setq _answer (string __answer))
   self)
  (:answer
   (&optional __answer)
   (if __answer (setq _answer __answer)) _answer)
  (:serialization-length
   ()
   (+
    ;; string _answer
    4 (length _answer)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _answer
       (write-long (length _answer) s) (princ _answer s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _answer
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _answer (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass roboy_communication_cognition::DataQuery
  :super ros::object
  :slots ())

(setf (get roboy_communication_cognition::DataQuery :md5sum-) "069affd70d154d413f85fd5c1967eed6")
(setf (get roboy_communication_cognition::DataQuery :datatype-) "roboy_communication_cognition/DataQuery")
(setf (get roboy_communication_cognition::DataQuery :request) roboy_communication_cognition::DataQueryRequest)
(setf (get roboy_communication_cognition::DataQuery :response) roboy_communication_cognition::DataQueryResponse)

(defmethod roboy_communication_cognition::DataQueryRequest
  (:response () (instance roboy_communication_cognition::DataQueryResponse :init)))

(setf (get roboy_communication_cognition::DataQueryRequest :md5sum-) "069affd70d154d413f85fd5c1967eed6")
(setf (get roboy_communication_cognition::DataQueryRequest :datatype-) "roboy_communication_cognition/DataQueryRequest")
(setf (get roboy_communication_cognition::DataQueryRequest :definition-)
      "string header
string payload
---
string answer

")

(setf (get roboy_communication_cognition::DataQueryResponse :md5sum-) "069affd70d154d413f85fd5c1967eed6")
(setf (get roboy_communication_cognition::DataQueryResponse :datatype-) "roboy_communication_cognition/DataQueryResponse")
(setf (get roboy_communication_cognition::DataQueryResponse :definition-)
      "string header
string payload
---
string answer

")



(provide :roboy_communication_cognition/DataQuery "069affd70d154d413f85fd5c1967eed6")


