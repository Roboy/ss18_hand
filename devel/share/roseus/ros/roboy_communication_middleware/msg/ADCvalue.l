;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_middleware::ADCvalue)
  (if (not (find-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
    (make-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
  (shadow 'ADCvalue (find-package "ROBOY_COMMUNICATION_MIDDLEWARE")))
(unless (find-package "ROBOY_COMMUNICATION_MIDDLEWARE::ADCVALUE")
  (make-package "ROBOY_COMMUNICATION_MIDDLEWARE::ADCVALUE"))

(in-package "ROS")
;;//! \htmlinclude ADCvalue.msg.html


(defclass roboy_communication_middleware::ADCvalue
  :super ros::object
  :slots (_id _adc_value _load ))

(defmethod roboy_communication_middleware::ADCvalue
  (:init
   (&key
    ((:id __id) 0)
    ((:adc_value __adc_value) (make-array 0 :initial-element 0 :element-type :integer))
    ((:load __load) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _adc_value __adc_value)
   (setq _load __load)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:adc_value
   (&optional __adc_value)
   (if __adc_value (setq _adc_value __adc_value)) _adc_value)
  (:load
   (&optional __load)
   (if __load (setq _load __load)) _load)
  (:serialization-length
   ()
   (+
    ;; uint8 _id
    1
    ;; int32[] _adc_value
    (* 4    (length _adc_value)) 4
    ;; float32[] _load
    (* 4    (length _load)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id
       (write-byte _id s)
     ;; int32[] _adc_value
     (write-long (length _adc_value) s)
     (dotimes (i (length _adc_value))
       (write-long (elt _adc_value i) s)
       )
     ;; float32[] _load
     (write-long (length _load) s)
     (dotimes (i (length _load))
       (sys::poke (elt _load i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int32[] _adc_value
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _adc_value (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _adc_value i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float32[] _load
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _load (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _load i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get roboy_communication_middleware::ADCvalue :md5sum-) "f98e33d20942e68bbee66ab1b8b068eb")
(setf (get roboy_communication_middleware::ADCvalue :datatype-) "roboy_communication_middleware/ADCvalue")
(setf (get roboy_communication_middleware::ADCvalue :definition-)
      "uint8 id
int32[] adc_value
float32[] load
")



(provide :roboy_communication_middleware/ADCvalue "f98e33d20942e68bbee66ab1b8b068eb")


