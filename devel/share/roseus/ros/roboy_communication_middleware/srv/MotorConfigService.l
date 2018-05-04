;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_middleware::MotorConfigService)
  (if (not (find-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
    (make-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
  (shadow 'MotorConfigService (find-package "ROBOY_COMMUNICATION_MIDDLEWARE")))
(unless (find-package "ROBOY_COMMUNICATION_MIDDLEWARE::MOTORCONFIGSERVICE")
  (make-package "ROBOY_COMMUNICATION_MIDDLEWARE::MOTORCONFIGSERVICE"))
(unless (find-package "ROBOY_COMMUNICATION_MIDDLEWARE::MOTORCONFIGSERVICEREQUEST")
  (make-package "ROBOY_COMMUNICATION_MIDDLEWARE::MOTORCONFIGSERVICEREQUEST"))
(unless (find-package "ROBOY_COMMUNICATION_MIDDLEWARE::MOTORCONFIGSERVICERESPONSE")
  (make-package "ROBOY_COMMUNICATION_MIDDLEWARE::MOTORCONFIGSERVICERESPONSE"))

(in-package "ROS")





(defclass roboy_communication_middleware::MotorConfigServiceRequest
  :super ros::object
  :slots (_config _setPoints ))

(defmethod roboy_communication_middleware::MotorConfigServiceRequest
  (:init
   (&key
    ((:config __config) (instance roboy_communication_middleware::MotorConfig :init))
    ((:setPoints __setPoints) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _config __config)
   (setq _setPoints __setPoints)
   self)
  (:config
   (&rest __config)
   (if (keywordp (car __config))
       (send* _config __config)
     (progn
       (if __config (setq _config (car __config)))
       _config)))
  (:setPoints
   (&optional __setPoints)
   (if __setPoints (setq _setPoints __setPoints)) _setPoints)
  (:serialization-length
   ()
   (+
    ;; roboy_communication_middleware/MotorConfig _config
    (send _config :serialization-length)
    ;; int32[] _setPoints
    (* 4    (length _setPoints)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; roboy_communication_middleware/MotorConfig _config
       (send _config :serialize s)
     ;; int32[] _setPoints
     (write-long (length _setPoints) s)
     (dotimes (i (length _setPoints))
       (write-long (elt _setPoints i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; roboy_communication_middleware/MotorConfig _config
     (send _config :deserialize buf ptr-) (incf ptr- (send _config :serialization-length))
   ;; int32[] _setPoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _setPoints (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _setPoints i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass roboy_communication_middleware::MotorConfigServiceResponse
  :super ros::object
  :slots (_mode ))

(defmethod roboy_communication_middleware::MotorConfigServiceResponse
  (:init
   (&key
    ((:mode __mode) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _mode __mode)
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; int32[] _mode
    (* 4    (length _mode)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _mode
     (write-long (length _mode) s)
     (dotimes (i (length _mode))
       (write-long (elt _mode i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _mode
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _mode (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _mode i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass roboy_communication_middleware::MotorConfigService
  :super ros::object
  :slots ())

(setf (get roboy_communication_middleware::MotorConfigService :md5sum-) "07934f0a5689f5ba498e42aef1da7a8e")
(setf (get roboy_communication_middleware::MotorConfigService :datatype-) "roboy_communication_middleware/MotorConfigService")
(setf (get roboy_communication_middleware::MotorConfigService :request) roboy_communication_middleware::MotorConfigServiceRequest)
(setf (get roboy_communication_middleware::MotorConfigService :response) roboy_communication_middleware::MotorConfigServiceResponse)

(defmethod roboy_communication_middleware::MotorConfigServiceRequest
  (:response () (instance roboy_communication_middleware::MotorConfigServiceResponse :init)))

(setf (get roboy_communication_middleware::MotorConfigServiceRequest :md5sum-) "07934f0a5689f5ba498e42aef1da7a8e")
(setf (get roboy_communication_middleware::MotorConfigServiceRequest :datatype-) "roboy_communication_middleware/MotorConfigServiceRequest")
(setf (get roboy_communication_middleware::MotorConfigServiceRequest :definition-)
      "MotorConfig config
int32[] setPoints

================================================================================
MSG: roboy_communication_middleware/MotorConfig
int32 id
uint8[] motors
uint8[] control_mode
int32[] outputPosMax
int32[] outputNegMax
int32[] spPosMax
int32[] spNegMax
uint16[] Kp
uint16[] Ki
uint16[] Kd
uint16[] forwardGain
uint16[] deadBand
int32[] IntegralPosMax
---
int32[] mode

")

(setf (get roboy_communication_middleware::MotorConfigServiceResponse :md5sum-) "07934f0a5689f5ba498e42aef1da7a8e")
(setf (get roboy_communication_middleware::MotorConfigServiceResponse :datatype-) "roboy_communication_middleware/MotorConfigServiceResponse")
(setf (get roboy_communication_middleware::MotorConfigServiceResponse :definition-)
      "MotorConfig config
int32[] setPoints

================================================================================
MSG: roboy_communication_middleware/MotorConfig
int32 id
uint8[] motors
uint8[] control_mode
int32[] outputPosMax
int32[] outputNegMax
int32[] spPosMax
int32[] spNegMax
uint16[] Kp
uint16[] Ki
uint16[] Kd
uint16[] forwardGain
uint16[] deadBand
int32[] IntegralPosMax
---
int32[] mode

")



(provide :roboy_communication_middleware/MotorConfigService "07934f0a5689f5ba498e42aef1da7a8e")


