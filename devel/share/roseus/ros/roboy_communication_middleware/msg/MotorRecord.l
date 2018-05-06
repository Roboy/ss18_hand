;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_middleware::MotorRecord)
  (if (not (find-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
    (make-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
  (shadow 'MotorRecord (find-package "ROBOY_COMMUNICATION_MIDDLEWARE")))
(unless (find-package "ROBOY_COMMUNICATION_MIDDLEWARE::MOTORRECORD")
  (make-package "ROBOY_COMMUNICATION_MIDDLEWARE::MOTORRECORD"))

(in-package "ROS")
;;//! \htmlinclude MotorRecord.msg.html


(defclass roboy_communication_middleware::MotorRecord
  :super ros::object
  :slots (_id _recordTime _samplingTime _control_mode _motor0 _motor1 _motor2 _motor3 _motor4 _motor5 _motor6 _motor7 _motor8 _motor9 _motor10 _motor11 _motor12 _motor13 ))

(defmethod roboy_communication_middleware::MotorRecord
  (:init
   (&key
    ((:id __id) 0)
    ((:recordTime __recordTime) 0.0)
    ((:samplingTime __samplingTime) 0)
    ((:control_mode __control_mode) 0)
    ((:motor0 __motor0) (make-array 0 :initial-element 0 :element-type :integer))
    ((:motor1 __motor1) (make-array 0 :initial-element 0 :element-type :integer))
    ((:motor2 __motor2) (make-array 0 :initial-element 0 :element-type :integer))
    ((:motor3 __motor3) (make-array 0 :initial-element 0 :element-type :integer))
    ((:motor4 __motor4) (make-array 0 :initial-element 0 :element-type :integer))
    ((:motor5 __motor5) (make-array 0 :initial-element 0 :element-type :integer))
    ((:motor6 __motor6) (make-array 0 :initial-element 0 :element-type :integer))
    ((:motor7 __motor7) (make-array 0 :initial-element 0 :element-type :integer))
    ((:motor8 __motor8) (make-array 0 :initial-element 0 :element-type :integer))
    ((:motor9 __motor9) (make-array 0 :initial-element 0 :element-type :integer))
    ((:motor10 __motor10) (make-array 0 :initial-element 0 :element-type :integer))
    ((:motor11 __motor11) (make-array 0 :initial-element 0 :element-type :integer))
    ((:motor12 __motor12) (make-array 0 :initial-element 0 :element-type :integer))
    ((:motor13 __motor13) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _recordTime (float __recordTime))
   (setq _samplingTime (round __samplingTime))
   (setq _control_mode (round __control_mode))
   (setq _motor0 __motor0)
   (setq _motor1 __motor1)
   (setq _motor2 __motor2)
   (setq _motor3 __motor3)
   (setq _motor4 __motor4)
   (setq _motor5 __motor5)
   (setq _motor6 __motor6)
   (setq _motor7 __motor7)
   (setq _motor8 __motor8)
   (setq _motor9 __motor9)
   (setq _motor10 __motor10)
   (setq _motor11 __motor11)
   (setq _motor12 __motor12)
   (setq _motor13 __motor13)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:recordTime
   (&optional __recordTime)
   (if __recordTime (setq _recordTime __recordTime)) _recordTime)
  (:samplingTime
   (&optional __samplingTime)
   (if __samplingTime (setq _samplingTime __samplingTime)) _samplingTime)
  (:control_mode
   (&optional __control_mode)
   (if __control_mode (setq _control_mode __control_mode)) _control_mode)
  (:motor0
   (&optional __motor0)
   (if __motor0 (setq _motor0 __motor0)) _motor0)
  (:motor1
   (&optional __motor1)
   (if __motor1 (setq _motor1 __motor1)) _motor1)
  (:motor2
   (&optional __motor2)
   (if __motor2 (setq _motor2 __motor2)) _motor2)
  (:motor3
   (&optional __motor3)
   (if __motor3 (setq _motor3 __motor3)) _motor3)
  (:motor4
   (&optional __motor4)
   (if __motor4 (setq _motor4 __motor4)) _motor4)
  (:motor5
   (&optional __motor5)
   (if __motor5 (setq _motor5 __motor5)) _motor5)
  (:motor6
   (&optional __motor6)
   (if __motor6 (setq _motor6 __motor6)) _motor6)
  (:motor7
   (&optional __motor7)
   (if __motor7 (setq _motor7 __motor7)) _motor7)
  (:motor8
   (&optional __motor8)
   (if __motor8 (setq _motor8 __motor8)) _motor8)
  (:motor9
   (&optional __motor9)
   (if __motor9 (setq _motor9 __motor9)) _motor9)
  (:motor10
   (&optional __motor10)
   (if __motor10 (setq _motor10 __motor10)) _motor10)
  (:motor11
   (&optional __motor11)
   (if __motor11 (setq _motor11 __motor11)) _motor11)
  (:motor12
   (&optional __motor12)
   (if __motor12 (setq _motor12 __motor12)) _motor12)
  (:motor13
   (&optional __motor13)
   (if __motor13 (setq _motor13 __motor13)) _motor13)
  (:serialization-length
   ()
   (+
    ;; uint8 _id
    1
    ;; float32 _recordTime
    4
    ;; int32 _samplingTime
    4
    ;; uint8 _control_mode
    1
    ;; int32[] _motor0
    (* 4    (length _motor0)) 4
    ;; int32[] _motor1
    (* 4    (length _motor1)) 4
    ;; int32[] _motor2
    (* 4    (length _motor2)) 4
    ;; int32[] _motor3
    (* 4    (length _motor3)) 4
    ;; int32[] _motor4
    (* 4    (length _motor4)) 4
    ;; int32[] _motor5
    (* 4    (length _motor5)) 4
    ;; int32[] _motor6
    (* 4    (length _motor6)) 4
    ;; int32[] _motor7
    (* 4    (length _motor7)) 4
    ;; int32[] _motor8
    (* 4    (length _motor8)) 4
    ;; int32[] _motor9
    (* 4    (length _motor9)) 4
    ;; int32[] _motor10
    (* 4    (length _motor10)) 4
    ;; int32[] _motor11
    (* 4    (length _motor11)) 4
    ;; int32[] _motor12
    (* 4    (length _motor12)) 4
    ;; int32[] _motor13
    (* 4    (length _motor13)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id
       (write-byte _id s)
     ;; float32 _recordTime
       (sys::poke _recordTime (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _samplingTime
       (write-long _samplingTime s)
     ;; uint8 _control_mode
       (write-byte _control_mode s)
     ;; int32[] _motor0
     (write-long (length _motor0) s)
     (dotimes (i (length _motor0))
       (write-long (elt _motor0 i) s)
       )
     ;; int32[] _motor1
     (write-long (length _motor1) s)
     (dotimes (i (length _motor1))
       (write-long (elt _motor1 i) s)
       )
     ;; int32[] _motor2
     (write-long (length _motor2) s)
     (dotimes (i (length _motor2))
       (write-long (elt _motor2 i) s)
       )
     ;; int32[] _motor3
     (write-long (length _motor3) s)
     (dotimes (i (length _motor3))
       (write-long (elt _motor3 i) s)
       )
     ;; int32[] _motor4
     (write-long (length _motor4) s)
     (dotimes (i (length _motor4))
       (write-long (elt _motor4 i) s)
       )
     ;; int32[] _motor5
     (write-long (length _motor5) s)
     (dotimes (i (length _motor5))
       (write-long (elt _motor5 i) s)
       )
     ;; int32[] _motor6
     (write-long (length _motor6) s)
     (dotimes (i (length _motor6))
       (write-long (elt _motor6 i) s)
       )
     ;; int32[] _motor7
     (write-long (length _motor7) s)
     (dotimes (i (length _motor7))
       (write-long (elt _motor7 i) s)
       )
     ;; int32[] _motor8
     (write-long (length _motor8) s)
     (dotimes (i (length _motor8))
       (write-long (elt _motor8 i) s)
       )
     ;; int32[] _motor9
     (write-long (length _motor9) s)
     (dotimes (i (length _motor9))
       (write-long (elt _motor9 i) s)
       )
     ;; int32[] _motor10
     (write-long (length _motor10) s)
     (dotimes (i (length _motor10))
       (write-long (elt _motor10 i) s)
       )
     ;; int32[] _motor11
     (write-long (length _motor11) s)
     (dotimes (i (length _motor11))
       (write-long (elt _motor11 i) s)
       )
     ;; int32[] _motor12
     (write-long (length _motor12) s)
     (dotimes (i (length _motor12))
       (write-long (elt _motor12 i) s)
       )
     ;; int32[] _motor13
     (write-long (length _motor13) s)
     (dotimes (i (length _motor13))
       (write-long (elt _motor13 i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _recordTime
     (setq _recordTime (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _samplingTime
     (setq _samplingTime (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _control_mode
     (setq _control_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int32[] _motor0
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motor0 (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _motor0 i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _motor1
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motor1 (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _motor1 i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _motor2
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motor2 (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _motor2 i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _motor3
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motor3 (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _motor3 i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _motor4
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motor4 (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _motor4 i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _motor5
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motor5 (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _motor5 i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _motor6
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motor6 (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _motor6 i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _motor7
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motor7 (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _motor7 i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _motor8
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motor8 (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _motor8 i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _motor9
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motor9 (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _motor9 i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _motor10
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motor10 (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _motor10 i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _motor11
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motor11 (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _motor11 i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _motor12
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motor12 (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _motor12 i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _motor13
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motor13 (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _motor13 i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get roboy_communication_middleware::MotorRecord :md5sum-) "fdc40ac028fa6d92b5ce4d22fd304528")
(setf (get roboy_communication_middleware::MotorRecord :datatype-) "roboy_communication_middleware/MotorRecord")
(setf (get roboy_communication_middleware::MotorRecord :definition-)
      "uint8 id
float32 recordTime
int32 samplingTime
uint8 control_mode
int32[] motor0
int32[] motor1
int32[] motor2
int32[] motor3
int32[] motor4
int32[] motor5
int32[] motor6
int32[] motor7
int32[] motor8
int32[] motor9
int32[] motor10
int32[] motor11
int32[] motor12
int32[] motor13
")



(provide :roboy_communication_middleware/MotorRecord "fdc40ac028fa6d92b5ce4d22fd304528")


