;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_middleware::EmergencyStop)
  (if (not (find-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
    (make-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
  (shadow 'EmergencyStop (find-package "ROBOY_COMMUNICATION_MIDDLEWARE")))
(unless (find-package "ROBOY_COMMUNICATION_MIDDLEWARE::EMERGENCYSTOP")
  (make-package "ROBOY_COMMUNICATION_MIDDLEWARE::EMERGENCYSTOP"))
(unless (find-package "ROBOY_COMMUNICATION_MIDDLEWARE::EMERGENCYSTOPREQUEST")
  (make-package "ROBOY_COMMUNICATION_MIDDLEWARE::EMERGENCYSTOPREQUEST"))
(unless (find-package "ROBOY_COMMUNICATION_MIDDLEWARE::EMERGENCYSTOPRESPONSE")
  (make-package "ROBOY_COMMUNICATION_MIDDLEWARE::EMERGENCYSTOPRESPONSE"))

(in-package "ROS")





(defclass roboy_communication_middleware::EmergencyStopRequest
  :super ros::object
  :slots (_all _idList ))

(defmethod roboy_communication_middleware::EmergencyStopRequest
  (:init
   (&key
    ((:all __all) nil)
    ((:idList __idList) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _all __all)
   (setq _idList __idList)
   self)
  (:all
   (&optional __all)
   (if __all (setq _all __all)) _all)
  (:idList
   (&optional __idList)
   (if __idList (setq _idList __idList)) _idList)
  (:serialization-length
   ()
   (+
    ;; bool _all
    1
    ;; int8[] _idList
    (* 1    (length _idList)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _all
       (if _all (write-byte -1 s) (write-byte 0 s))
     ;; int8[] _idList
     (write-long (length _idList) s)
     (dotimes (i (length _idList))
       (write-byte (elt _idList i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _all
     (setq _all (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
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

(defclass roboy_communication_middleware::EmergencyStopResponse
  :super ros::object
  :slots (_states ))

(defmethod roboy_communication_middleware::EmergencyStopResponse
  (:init
   (&key
    ((:states __states) (let (r) (dotimes (i 0) (push (instance roboy_communication_middleware::ControllerState :init) r)) r))
    )
   (send-super :init)
   (setq _states __states)
   self)
  (:states
   (&rest __states)
   (if (keywordp (car __states))
       (send* _states __states)
     (progn
       (if __states (setq _states (car __states)))
       _states)))
  (:serialization-length
   ()
   (+
    ;; roboy_communication_middleware/ControllerState[] _states
    (apply #'+ (send-all _states :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; roboy_communication_middleware/ControllerState[] _states
     (write-long (length _states) s)
     (dolist (elem _states)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; roboy_communication_middleware/ControllerState[] _states
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _states (let (r) (dotimes (i n) (push (instance roboy_communication_middleware::ControllerState :init) r)) r))
     (dolist (elem- _states)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass roboy_communication_middleware::EmergencyStop
  :super ros::object
  :slots ())

(setf (get roboy_communication_middleware::EmergencyStop :md5sum-) "a9d4ee2f1bc63fdf0054100392ba922e")
(setf (get roboy_communication_middleware::EmergencyStop :datatype-) "roboy_communication_middleware/EmergencyStop")
(setf (get roboy_communication_middleware::EmergencyStop :request) roboy_communication_middleware::EmergencyStopRequest)
(setf (get roboy_communication_middleware::EmergencyStop :response) roboy_communication_middleware::EmergencyStopResponse)

(defmethod roboy_communication_middleware::EmergencyStopRequest
  (:response () (instance roboy_communication_middleware::EmergencyStopResponse :init)))

(setf (get roboy_communication_middleware::EmergencyStopRequest :md5sum-) "a9d4ee2f1bc63fdf0054100392ba922e")
(setf (get roboy_communication_middleware::EmergencyStopRequest :datatype-) "roboy_communication_middleware/EmergencyStopRequest")
(setf (get roboy_communication_middleware::EmergencyStopRequest :definition-)
      "bool all
int8[] idList
---
ControllerState[] states


================================================================================
MSG: roboy_communication_middleware/ControllerState
int32 id
int8 state

")

(setf (get roboy_communication_middleware::EmergencyStopResponse :md5sum-) "a9d4ee2f1bc63fdf0054100392ba922e")
(setf (get roboy_communication_middleware::EmergencyStopResponse :datatype-) "roboy_communication_middleware/EmergencyStopResponse")
(setf (get roboy_communication_middleware::EmergencyStopResponse :definition-)
      "bool all
int8[] idList
---
ControllerState[] states


================================================================================
MSG: roboy_communication_middleware/ControllerState
int32 id
int8 state

")



(provide :roboy_communication_middleware/EmergencyStop "a9d4ee2f1bc63fdf0054100392ba922e")


