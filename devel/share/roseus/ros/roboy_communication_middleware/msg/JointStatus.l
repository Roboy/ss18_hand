;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_middleware::JointStatus)
  (if (not (find-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
    (make-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
  (shadow 'JointStatus (find-package "ROBOY_COMMUNICATION_MIDDLEWARE")))
(unless (find-package "ROBOY_COMMUNICATION_MIDDLEWARE::JOINTSTATUS")
  (make-package "ROBOY_COMMUNICATION_MIDDLEWARE::JOINTSTATUS"))

(in-package "ROS")
;;//! \htmlinclude JointStatus.msg.html


(defclass roboy_communication_middleware::JointStatus
  :super ros::object
  :slots (_id _absAngles _relAngles _tacho _agcGain _tooFar _tooClose ))

(defmethod roboy_communication_middleware::JointStatus
  (:init
   (&key
    ((:id __id) 0)
    ((:absAngles __absAngles) (make-array 0 :initial-element 0 :element-type :integer))
    ((:relAngles __relAngles) (make-array 0 :initial-element 0 :element-type :integer))
    ((:tacho __tacho) (make-array 0 :initial-element 0 :element-type :integer))
    ((:agcGain __agcGain) (make-array 0 :initial-element 0 :element-type :char))
    ((:tooFar __tooFar) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:tooClose __tooClose) (let (r) (dotimes (i 0) (push nil r)) r))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _absAngles __absAngles)
   (setq _relAngles __relAngles)
   (setq _tacho __tacho)
   (setq _agcGain __agcGain)
   (setq _tooFar __tooFar)
   (setq _tooClose __tooClose)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:absAngles
   (&optional __absAngles)
   (if __absAngles (setq _absAngles __absAngles)) _absAngles)
  (:relAngles
   (&optional __relAngles)
   (if __relAngles (setq _relAngles __relAngles)) _relAngles)
  (:tacho
   (&optional __tacho)
   (if __tacho (setq _tacho __tacho)) _tacho)
  (:agcGain
   (&optional __agcGain)
   (if __agcGain (setq _agcGain __agcGain)) _agcGain)
  (:tooFar
   (&optional __tooFar)
   (if __tooFar (setq _tooFar __tooFar)) _tooFar)
  (:tooClose
   (&optional __tooClose)
   (if __tooClose (setq _tooClose __tooClose)) _tooClose)
  (:serialization-length
   ()
   (+
    ;; uint8 _id
    1
    ;; uint32[] _absAngles
    (* 4    (length _absAngles)) 4
    ;; uint32[] _relAngles
    (* 4    (length _relAngles)) 4
    ;; uint32[] _tacho
    (* 4    (length _tacho)) 4
    ;; uint8[] _agcGain
    (* 1    (length _agcGain)) 4
    ;; bool[] _tooFar
    (* 1    (length _tooFar)) 4
    ;; bool[] _tooClose
    (* 1    (length _tooClose)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id
       (write-byte _id s)
     ;; uint32[] _absAngles
     (write-long (length _absAngles) s)
     (dotimes (i (length _absAngles))
       (write-long (elt _absAngles i) s)
       )
     ;; uint32[] _relAngles
     (write-long (length _relAngles) s)
     (dotimes (i (length _relAngles))
       (write-long (elt _relAngles i) s)
       )
     ;; uint32[] _tacho
     (write-long (length _tacho) s)
     (dotimes (i (length _tacho))
       (write-long (elt _tacho i) s)
       )
     ;; uint8[] _agcGain
     (write-long (length _agcGain) s)
     (princ _agcGain s)
     ;; bool[] _tooFar
     (write-long (length _tooFar) s)
     (dotimes (i (length _tooFar))
       (if (elt _tooFar i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[] _tooClose
     (write-long (length _tooClose) s)
     (dotimes (i (length _tooClose))
       (if (elt _tooClose i) (write-byte -1 s) (write-byte 0 s))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32[] _absAngles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _absAngles (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _absAngles i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint32[] _relAngles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _relAngles (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _relAngles i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint32[] _tacho
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tacho (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _tacho i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint8[] _agcGain
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _agcGain (make-array n :element-type :char))
     (replace _agcGain buf :start2 ptr-) (incf ptr- n))
   ;; bool[] _tooFar
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tooFar (make-list n))
     (dotimes (i n)
     (setf (elt _tooFar i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; bool[] _tooClose
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tooClose (make-list n))
     (dotimes (i n)
     (setf (elt _tooClose i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;;
   self)
  )

(setf (get roboy_communication_middleware::JointStatus :md5sum-) "126236eed80c5a19c2a712307f0137f2")
(setf (get roboy_communication_middleware::JointStatus :datatype-) "roboy_communication_middleware/JointStatus")
(setf (get roboy_communication_middleware::JointStatus :definition-)
      "uint8 id
uint32[] absAngles
uint32[] relAngles
uint32[] tacho
uint8[] agcGain
bool[] tooFar
bool[] tooClose
")



(provide :roboy_communication_middleware/JointStatus "126236eed80c5a19c2a712307f0137f2")


