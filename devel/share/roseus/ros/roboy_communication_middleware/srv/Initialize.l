;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_middleware::Initialize)
  (if (not (find-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
    (make-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
  (shadow 'Initialize (find-package "ROBOY_COMMUNICATION_MIDDLEWARE")))
(unless (find-package "ROBOY_COMMUNICATION_MIDDLEWARE::INITIALIZE")
  (make-package "ROBOY_COMMUNICATION_MIDDLEWARE::INITIALIZE"))
(unless (find-package "ROBOY_COMMUNICATION_MIDDLEWARE::INITIALIZEREQUEST")
  (make-package "ROBOY_COMMUNICATION_MIDDLEWARE::INITIALIZEREQUEST"))
(unless (find-package "ROBOY_COMMUNICATION_MIDDLEWARE::INITIALIZERESPONSE")
  (make-package "ROBOY_COMMUNICATION_MIDDLEWARE::INITIALIZERESPONSE"))

(in-package "ROS")





(defclass roboy_communication_middleware::InitializeRequest
  :super ros::object
  :slots (_idList _controlmode ))

(defmethod roboy_communication_middleware::InitializeRequest
  (:init
   (&key
    ((:idList __idList) (make-array 0 :initial-element 0 :element-type :integer))
    ((:controlmode __controlmode) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _idList __idList)
   (setq _controlmode __controlmode)
   self)
  (:idList
   (&optional __idList)
   (if __idList (setq _idList __idList)) _idList)
  (:controlmode
   (&optional __controlmode)
   (if __controlmode (setq _controlmode __controlmode)) _controlmode)
  (:serialization-length
   ()
   (+
    ;; int8[] _idList
    (* 1    (length _idList)) 4
    ;; uint8[] _controlmode
    (* 1    (length _controlmode)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8[] _idList
     (write-long (length _idList) s)
     (dotimes (i (length _idList))
       (write-byte (elt _idList i) s)
       )
     ;; uint8[] _controlmode
     (write-long (length _controlmode) s)
     (princ _controlmode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8[] _idList
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _idList (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _idList i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _idList i) 127) (setf (elt _idList i) (- (elt _idList i) 256)))
     ))
   ;; uint8[] _controlmode
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _controlmode (make-array n :element-type :char))
     (replace _controlmode buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(defclass roboy_communication_middleware::InitializeResponse
  :super ros::object
  :slots (_states ))

(defmethod roboy_communication_middleware::InitializeResponse
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

(defclass roboy_communication_middleware::Initialize
  :super ros::object
  :slots ())

(setf (get roboy_communication_middleware::Initialize :md5sum-) "9549151cdabb82b0cb5be3949926ea6c")
(setf (get roboy_communication_middleware::Initialize :datatype-) "roboy_communication_middleware/Initialize")
(setf (get roboy_communication_middleware::Initialize :request) roboy_communication_middleware::InitializeRequest)
(setf (get roboy_communication_middleware::Initialize :response) roboy_communication_middleware::InitializeResponse)

(defmethod roboy_communication_middleware::InitializeRequest
  (:response () (instance roboy_communication_middleware::InitializeResponse :init)))

(setf (get roboy_communication_middleware::InitializeRequest :md5sum-) "9549151cdabb82b0cb5be3949926ea6c")
(setf (get roboy_communication_middleware::InitializeRequest :datatype-) "roboy_communication_middleware/InitializeRequest")
(setf (get roboy_communication_middleware::InitializeRequest :definition-)
      "int8[] idList
uint8[] controlmode
---
ControllerState[] states


================================================================================
MSG: roboy_communication_middleware/ControllerState
int32 id
int8 state

")

(setf (get roboy_communication_middleware::InitializeResponse :md5sum-) "9549151cdabb82b0cb5be3949926ea6c")
(setf (get roboy_communication_middleware::InitializeResponse :datatype-) "roboy_communication_middleware/InitializeResponse")
(setf (get roboy_communication_middleware::InitializeResponse :definition-)
      "int8[] idList
uint8[] controlmode
---
ControllerState[] states


================================================================================
MSG: roboy_communication_middleware/ControllerState
int32 id
int8 state

")



(provide :roboy_communication_middleware/Initialize "9549151cdabb82b0cb5be3949926ea6c")


