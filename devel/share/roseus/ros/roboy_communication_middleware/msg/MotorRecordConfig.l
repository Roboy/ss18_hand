;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_middleware::MotorRecordConfig)
  (if (not (find-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
    (make-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
  (shadow 'MotorRecordConfig (find-package "ROBOY_COMMUNICATION_MIDDLEWARE")))
(unless (find-package "ROBOY_COMMUNICATION_MIDDLEWARE::MOTORRECORDCONFIG")
  (make-package "ROBOY_COMMUNICATION_MIDDLEWARE::MOTORRECORDCONFIG"))

(in-package "ROS")
;;//! \htmlinclude MotorRecordConfig.msg.html


(defclass roboy_communication_middleware::MotorRecordConfig
  :super ros::object
  :slots (_ids _control_mode _samplingTime _recordTime ))

(defmethod roboy_communication_middleware::MotorRecordConfig
  (:init
   (&key
    ((:ids __ids) (make-array 0 :initial-element 0 :element-type :char))
    ((:control_mode __control_mode) 0)
    ((:samplingTime __samplingTime) 0)
    ((:recordTime __recordTime) 0)
    )
   (send-super :init)
   (setq _ids __ids)
   (setq _control_mode (round __control_mode))
   (setq _samplingTime (round __samplingTime))
   (setq _recordTime (round __recordTime))
   self)
  (:ids
   (&optional __ids)
   (if __ids (setq _ids __ids)) _ids)
  (:control_mode
   (&optional __control_mode)
   (if __control_mode (setq _control_mode __control_mode)) _control_mode)
  (:samplingTime
   (&optional __samplingTime)
   (if __samplingTime (setq _samplingTime __samplingTime)) _samplingTime)
  (:recordTime
   (&optional __recordTime)
   (if __recordTime (setq _recordTime __recordTime)) _recordTime)
  (:serialization-length
   ()
   (+
    ;; uint8[] _ids
    (* 1    (length _ids)) 4
    ;; uint8 _control_mode
    1
    ;; int32 _samplingTime
    4
    ;; int32 _recordTime
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[] _ids
     (write-long (length _ids) s)
     (princ _ids s)
     ;; uint8 _control_mode
       (write-byte _control_mode s)
     ;; int32 _samplingTime
       (write-long _samplingTime s)
     ;; int32 _recordTime
       (write-long _recordTime s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[] _ids
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _ids (make-array n :element-type :char))
     (replace _ids buf :start2 ptr-) (incf ptr- n))
   ;; uint8 _control_mode
     (setq _control_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int32 _samplingTime
     (setq _samplingTime (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _recordTime
     (setq _recordTime (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get roboy_communication_middleware::MotorRecordConfig :md5sum-) "4bdc623fa132fbb9601cc1d66046343b")
(setf (get roboy_communication_middleware::MotorRecordConfig :datatype-) "roboy_communication_middleware/MotorRecordConfig")
(setf (get roboy_communication_middleware::MotorRecordConfig :definition-)
      "uint8[] ids
uint8 control_mode
int32 samplingTime
int32 recordTime
")



(provide :roboy_communication_middleware/MotorRecordConfig "4bdc623fa132fbb9601cc1d66046343b")


