;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_cognition::QualityOfTones)
  (if (not (find-package "ROBOY_COMMUNICATION_COGNITION"))
    (make-package "ROBOY_COMMUNICATION_COGNITION"))
  (shadow 'QualityOfTones (find-package "ROBOY_COMMUNICATION_COGNITION")))
(unless (find-package "ROBOY_COMMUNICATION_COGNITION::QUALITYOFTONES")
  (make-package "ROBOY_COMMUNICATION_COGNITION::QUALITYOFTONES"))
(unless (find-package "ROBOY_COMMUNICATION_COGNITION::QUALITYOFTONESREQUEST")
  (make-package "ROBOY_COMMUNICATION_COGNITION::QUALITYOFTONESREQUEST"))
(unless (find-package "ROBOY_COMMUNICATION_COGNITION::QUALITYOFTONESRESPONSE")
  (make-package "ROBOY_COMMUNICATION_COGNITION::QUALITYOFTONESRESPONSE"))

(in-package "ROS")





(defclass roboy_communication_cognition::QualityOfTonesRequest
  :super ros::object
  :slots (_timeInMilliseconds _majorOnly ))

(defmethod roboy_communication_cognition::QualityOfTonesRequest
  (:init
   (&key
    ((:timeInMilliseconds __timeInMilliseconds) 0.0)
    ((:majorOnly __majorOnly) nil)
    )
   (send-super :init)
   (setq _timeInMilliseconds (float __timeInMilliseconds))
   (setq _majorOnly __majorOnly)
   self)
  (:timeInMilliseconds
   (&optional __timeInMilliseconds)
   (if __timeInMilliseconds (setq _timeInMilliseconds __timeInMilliseconds)) _timeInMilliseconds)
  (:majorOnly
   (&optional __majorOnly)
   (if __majorOnly (setq _majorOnly __majorOnly)) _majorOnly)
  (:serialization-length
   ()
   (+
    ;; float32 _timeInMilliseconds
    4
    ;; bool _majorOnly
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _timeInMilliseconds
       (sys::poke _timeInMilliseconds (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _majorOnly
       (if _majorOnly (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _timeInMilliseconds
     (setq _timeInMilliseconds (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _majorOnly
     (setq _majorOnly (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass roboy_communication_cognition::QualityOfTonesResponse
  :super ros::object
  :slots (_quality _purity _directionZ _directionY _hitPin ))

(defmethod roboy_communication_cognition::QualityOfTonesResponse
  (:init
   (&key
    ((:quality __quality) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:purity __purity) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:directionZ __directionZ) 0.0)
    ((:directionY __directionY) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:hitPin __hitPin) nil)
    )
   (send-super :init)
   (setq _quality __quality)
   (setq _purity __purity)
   (setq _directionZ (float __directionZ))
   (setq _directionY __directionY)
   (setq _hitPin __hitPin)
   self)
  (:quality
   (&optional __quality)
   (if __quality (setq _quality __quality)) _quality)
  (:purity
   (&optional __purity)
   (if __purity (setq _purity __purity)) _purity)
  (:directionZ
   (&optional __directionZ)
   (if __directionZ (setq _directionZ __directionZ)) _directionZ)
  (:directionY
   (&optional __directionY)
   (if __directionY (setq _directionY __directionY)) _directionY)
  (:hitPin
   (&optional __hitPin)
   (if __hitPin (setq _hitPin __hitPin)) _hitPin)
  (:serialization-length
   ()
   (+
    ;; float32[] _quality
    (* 4    (length _quality)) 4
    ;; float32[] _purity
    (* 4    (length _purity)) 4
    ;; float32 _directionZ
    4
    ;; float32[] _directionY
    (* 4    (length _directionY)) 4
    ;; bool _hitPin
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _quality
     (write-long (length _quality) s)
     (dotimes (i (length _quality))
       (sys::poke (elt _quality i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _purity
     (write-long (length _purity) s)
     (dotimes (i (length _purity))
       (sys::poke (elt _purity i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _directionZ
       (sys::poke _directionZ (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[] _directionY
     (write-long (length _directionY) s)
     (dotimes (i (length _directionY))
       (sys::poke (elt _directionY i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; bool _hitPin
       (if _hitPin (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _quality
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _quality (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _quality i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _purity
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _purity (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _purity i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32 _directionZ
     (setq _directionZ (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[] _directionY
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _directionY (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _directionY i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; bool _hitPin
     (setq _hitPin (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass roboy_communication_cognition::QualityOfTones
  :super ros::object
  :slots ())

(setf (get roboy_communication_cognition::QualityOfTones :md5sum-) "b0819310d2b88551910c5d4d0c08bb51")
(setf (get roboy_communication_cognition::QualityOfTones :datatype-) "roboy_communication_cognition/QualityOfTones")
(setf (get roboy_communication_cognition::QualityOfTones :request) roboy_communication_cognition::QualityOfTonesRequest)
(setf (get roboy_communication_cognition::QualityOfTones :response) roboy_communication_cognition::QualityOfTonesResponse)

(defmethod roboy_communication_cognition::QualityOfTonesRequest
  (:response () (instance roboy_communication_cognition::QualityOfTonesResponse :init)))

(setf (get roboy_communication_cognition::QualityOfTonesRequest :md5sum-) "b0819310d2b88551910c5d4d0c08bb51")
(setf (get roboy_communication_cognition::QualityOfTonesRequest :datatype-) "roboy_communication_cognition/QualityOfTonesRequest")
(setf (get roboy_communication_cognition::QualityOfTonesRequest :definition-)
      "float32 timeInMilliseconds
bool majorOnly
---
float32[] quality
float32[] purity
float32 directionZ
float32[] directionY
bool hitPin

")

(setf (get roboy_communication_cognition::QualityOfTonesResponse :md5sum-) "b0819310d2b88551910c5d4d0c08bb51")
(setf (get roboy_communication_cognition::QualityOfTonesResponse :datatype-) "roboy_communication_cognition/QualityOfTonesResponse")
(setf (get roboy_communication_cognition::QualityOfTonesResponse :definition-)
      "float32 timeInMilliseconds
bool majorOnly
---
float32[] quality
float32[] purity
float32 directionZ
float32[] directionY
bool hitPin

")



(provide :roboy_communication_cognition/QualityOfTones "b0819310d2b88551910c5d4d0c08bb51")


