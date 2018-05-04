;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_control::StartRecordTrajectory)
  (if (not (find-package "ROBOY_COMMUNICATION_CONTROL"))
    (make-package "ROBOY_COMMUNICATION_CONTROL"))
  (shadow 'StartRecordTrajectory (find-package "ROBOY_COMMUNICATION_CONTROL")))
(unless (find-package "ROBOY_COMMUNICATION_CONTROL::STARTRECORDTRAJECTORY")
  (make-package "ROBOY_COMMUNICATION_CONTROL::STARTRECORDTRAJECTORY"))

(in-package "ROS")
;;//! \htmlinclude StartRecordTrajectory.msg.html


(defclass roboy_communication_control::StartRecordTrajectory
  :super ros::object
  :slots (_name _body_parts _idList ))

(defmethod roboy_communication_control::StartRecordTrajectory
  (:init
   (&key
    ((:name __name) "")
    ((:body_parts __body_parts) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:idList __idList) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _body_parts __body_parts)
   (setq _idList __idList)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:body_parts
   (&optional __body_parts)
   (if __body_parts (setq _body_parts __body_parts)) _body_parts)
  (:idList
   (&optional __idList)
   (if __idList (setq _idList __idList)) _idList)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string[] _body_parts
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _body_parts)) 4
    ;; int8[] _idList
    (* 1    (length _idList)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string[] _body_parts
     (write-long (length _body_parts) s)
     (dolist (elem _body_parts)
       (write-long (length elem) s) (princ elem s)
       )
     ;; int8[] _idList
     (write-long (length _idList) s)
     (dotimes (i (length _idList))
       (write-byte (elt _idList i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _body_parts
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _body_parts (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _body_parts i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; int8[] _idList
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _idList (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _idList i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _idList i) 127) (setf (elt _idList i) (- (elt _idList i) 256)))
     ))
   ;;
   self)
  )

(setf (get roboy_communication_control::StartRecordTrajectory :md5sum-) "5f0aad87f11bc7604cf05b6b9f3696e6")
(setf (get roboy_communication_control::StartRecordTrajectory :datatype-) "roboy_communication_control/StartRecordTrajectory")
(setf (get roboy_communication_control::StartRecordTrajectory :definition-)
      "string name
string[] body_parts # to record
int8[] idList
")



(provide :roboy_communication_control/StartRecordTrajectory "5f0aad87f11bc7604cf05b6b9f3696e6")


