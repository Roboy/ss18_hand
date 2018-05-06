;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_middleware::MotorCalibrationService)
  (if (not (find-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
    (make-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
  (shadow 'MotorCalibrationService (find-package "ROBOY_COMMUNICATION_MIDDLEWARE")))
(unless (find-package "ROBOY_COMMUNICATION_MIDDLEWARE::MOTORCALIBRATIONSERVICE")
  (make-package "ROBOY_COMMUNICATION_MIDDLEWARE::MOTORCALIBRATIONSERVICE"))
(unless (find-package "ROBOY_COMMUNICATION_MIDDLEWARE::MOTORCALIBRATIONSERVICEREQUEST")
  (make-package "ROBOY_COMMUNICATION_MIDDLEWARE::MOTORCALIBRATIONSERVICEREQUEST"))
(unless (find-package "ROBOY_COMMUNICATION_MIDDLEWARE::MOTORCALIBRATIONSERVICERESPONSE")
  (make-package "ROBOY_COMMUNICATION_MIDDLEWARE::MOTORCALIBRATIONSERVICERESPONSE"))

(in-package "ROS")





(defclass roboy_communication_middleware::MotorCalibrationServiceRequest
  :super ros::object
  :slots (_fpga _motor _degree _timeout _numberOfDataPoints _displacement_min _displacement_max ))

(defmethod roboy_communication_middleware::MotorCalibrationServiceRequest
  (:init
   (&key
    ((:fpga __fpga) 0)
    ((:motor __motor) 0)
    ((:degree __degree) 0)
    ((:timeout __timeout) 0)
    ((:numberOfDataPoints __numberOfDataPoints) 0)
    ((:displacement_min __displacement_min) 0)
    ((:displacement_max __displacement_max) 0)
    )
   (send-super :init)
   (setq _fpga (round __fpga))
   (setq _motor (round __motor))
   (setq _degree (round __degree))
   (setq _timeout (round __timeout))
   (setq _numberOfDataPoints (round __numberOfDataPoints))
   (setq _displacement_min (round __displacement_min))
   (setq _displacement_max (round __displacement_max))
   self)
  (:fpga
   (&optional __fpga)
   (if __fpga (setq _fpga __fpga)) _fpga)
  (:motor
   (&optional __motor)
   (if __motor (setq _motor __motor)) _motor)
  (:degree
   (&optional __degree)
   (if __degree (setq _degree __degree)) _degree)
  (:timeout
   (&optional __timeout)
   (if __timeout (setq _timeout __timeout)) _timeout)
  (:numberOfDataPoints
   (&optional __numberOfDataPoints)
   (if __numberOfDataPoints (setq _numberOfDataPoints __numberOfDataPoints)) _numberOfDataPoints)
  (:displacement_min
   (&optional __displacement_min)
   (if __displacement_min (setq _displacement_min __displacement_min)) _displacement_min)
  (:displacement_max
   (&optional __displacement_max)
   (if __displacement_max (setq _displacement_max __displacement_max)) _displacement_max)
  (:serialization-length
   ()
   (+
    ;; int32 _fpga
    4
    ;; int32 _motor
    4
    ;; int32 _degree
    4
    ;; int32 _timeout
    4
    ;; int32 _numberOfDataPoints
    4
    ;; int32 _displacement_min
    4
    ;; int32 _displacement_max
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _fpga
       (write-long _fpga s)
     ;; int32 _motor
       (write-long _motor s)
     ;; int32 _degree
       (write-long _degree s)
     ;; int32 _timeout
       (write-long _timeout s)
     ;; int32 _numberOfDataPoints
       (write-long _numberOfDataPoints s)
     ;; int32 _displacement_min
       (write-long _displacement_min s)
     ;; int32 _displacement_max
       (write-long _displacement_max s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _fpga
     (setq _fpga (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _motor
     (setq _motor (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _degree
     (setq _degree (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _timeout
     (setq _timeout (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _numberOfDataPoints
     (setq _numberOfDataPoints (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _displacement_min
     (setq _displacement_min (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _displacement_max
     (setq _displacement_max (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass roboy_communication_middleware::MotorCalibrationServiceResponse
  :super ros::object
  :slots (_estimated_spring_parameters _load _displacement ))

(defmethod roboy_communication_middleware::MotorCalibrationServiceResponse
  (:init
   (&key
    ((:estimated_spring_parameters __estimated_spring_parameters) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:load __load) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:displacement __displacement) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _estimated_spring_parameters __estimated_spring_parameters)
   (setq _load __load)
   (setq _displacement __displacement)
   self)
  (:estimated_spring_parameters
   (&optional __estimated_spring_parameters)
   (if __estimated_spring_parameters (setq _estimated_spring_parameters __estimated_spring_parameters)) _estimated_spring_parameters)
  (:load
   (&optional __load)
   (if __load (setq _load __load)) _load)
  (:displacement
   (&optional __displacement)
   (if __displacement (setq _displacement __displacement)) _displacement)
  (:serialization-length
   ()
   (+
    ;; float32[] _estimated_spring_parameters
    (* 4    (length _estimated_spring_parameters)) 4
    ;; float64[] _load
    (* 8    (length _load)) 4
    ;; float64[] _displacement
    (* 8    (length _displacement)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _estimated_spring_parameters
     (write-long (length _estimated_spring_parameters) s)
     (dotimes (i (length _estimated_spring_parameters))
       (sys::poke (elt _estimated_spring_parameters i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float64[] _load
     (write-long (length _load) s)
     (dotimes (i (length _load))
       (sys::poke (elt _load i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _displacement
     (write-long (length _displacement) s)
     (dotimes (i (length _displacement))
       (sys::poke (elt _displacement i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _estimated_spring_parameters
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _estimated_spring_parameters (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _estimated_spring_parameters i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float64[] _load
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _load (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _load i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _displacement
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _displacement (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _displacement i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass roboy_communication_middleware::MotorCalibrationService
  :super ros::object
  :slots ())

(setf (get roboy_communication_middleware::MotorCalibrationService :md5sum-) "78e9593b5280af42e349c156e06528a2")
(setf (get roboy_communication_middleware::MotorCalibrationService :datatype-) "roboy_communication_middleware/MotorCalibrationService")
(setf (get roboy_communication_middleware::MotorCalibrationService :request) roboy_communication_middleware::MotorCalibrationServiceRequest)
(setf (get roboy_communication_middleware::MotorCalibrationService :response) roboy_communication_middleware::MotorCalibrationServiceResponse)

(defmethod roboy_communication_middleware::MotorCalibrationServiceRequest
  (:response () (instance roboy_communication_middleware::MotorCalibrationServiceResponse :init)))

(setf (get roboy_communication_middleware::MotorCalibrationServiceRequest :md5sum-) "78e9593b5280af42e349c156e06528a2")
(setf (get roboy_communication_middleware::MotorCalibrationServiceRequest :datatype-) "roboy_communication_middleware/MotorCalibrationServiceRequest")
(setf (get roboy_communication_middleware::MotorCalibrationServiceRequest :definition-)
      "int32 fpga
int32 motor
int32 degree
int32 timeout
int32 numberOfDataPoints
int32 displacement_min
int32 displacement_max
---
float32[] estimated_spring_parameters
float64[] load
float64[] displacement

")

(setf (get roboy_communication_middleware::MotorCalibrationServiceResponse :md5sum-) "78e9593b5280af42e349c156e06528a2")
(setf (get roboy_communication_middleware::MotorCalibrationServiceResponse :datatype-) "roboy_communication_middleware/MotorCalibrationServiceResponse")
(setf (get roboy_communication_middleware::MotorCalibrationServiceResponse :definition-)
      "int32 fpga
int32 motor
int32 degree
int32 timeout
int32 numberOfDataPoints
int32 displacement_min
int32 displacement_max
---
float32[] estimated_spring_parameters
float64[] load
float64[] displacement

")



(provide :roboy_communication_middleware/MotorCalibrationService "78e9593b5280af42e349c156e06528a2")


