;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_cognition::QualityOfTone)
  (if (not (find-package "ROBOY_COMMUNICATION_COGNITION"))
    (make-package "ROBOY_COMMUNICATION_COGNITION"))
  (shadow 'QualityOfTone (find-package "ROBOY_COMMUNICATION_COGNITION")))
(unless (find-package "ROBOY_COMMUNICATION_COGNITION::QUALITYOFTONE")
  (make-package "ROBOY_COMMUNICATION_COGNITION::QUALITYOFTONE"))
(unless (find-package "ROBOY_COMMUNICATION_COGNITION::QUALITYOFTONEREQUEST")
  (make-package "ROBOY_COMMUNICATION_COGNITION::QUALITYOFTONEREQUEST"))
(unless (find-package "ROBOY_COMMUNICATION_COGNITION::QUALITYOFTONERESPONSE")
  (make-package "ROBOY_COMMUNICATION_COGNITION::QUALITYOFTONERESPONSE"))

(in-package "ROS")





(defclass roboy_communication_cognition::QualityOfToneRequest
  :super ros::object
  :slots (_tone _timeInMilliseconds _majorOnly ))

(defmethod roboy_communication_cognition::QualityOfToneRequest
  (:init
   (&key
    ((:tone __tone) "")
    ((:timeInMilliseconds __timeInMilliseconds) 0.0)
    ((:majorOnly __majorOnly) nil)
    )
   (send-super :init)
   (setq _tone (string __tone))
   (setq _timeInMilliseconds (float __timeInMilliseconds))
   (setq _majorOnly __majorOnly)
   self)
  (:tone
   (&optional __tone)
   (if __tone (setq _tone __tone)) _tone)
  (:timeInMilliseconds
   (&optional __timeInMilliseconds)
   (if __timeInMilliseconds (setq _timeInMilliseconds __timeInMilliseconds)) _timeInMilliseconds)
  (:majorOnly
   (&optional __majorOnly)
   (if __majorOnly (setq _majorOnly __majorOnly)) _majorOnly)
  (:serialization-length
   ()
   (+
    ;; string _tone
    4 (length _tone)
    ;; float32 _timeInMilliseconds
    4
    ;; bool _majorOnly
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _tone
       (write-long (length _tone) s) (princ _tone s)
     ;; float32 _timeInMilliseconds
       (sys::poke _timeInMilliseconds (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _majorOnly
       (if _majorOnly (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _tone
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _tone (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _timeInMilliseconds
     (setq _timeInMilliseconds (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _majorOnly
     (setq _majorOnly (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass roboy_communication_cognition::QualityOfToneResponse
  :super ros::object
  :slots (_quality _purity _directionZ _directionY _hitPin ))

(defmethod roboy_communication_cognition::QualityOfToneResponse
  (:init
   (&key
    ((:quality __quality) 0.0)
    ((:purity __purity) 0.0)
    ((:directionZ __directionZ) 0.0)
    ((:directionY __directionY) 0.0)
    ((:hitPin __hitPin) nil)
    )
   (send-super :init)
   (setq _quality (float __quality))
   (setq _purity (float __purity))
   (setq _directionZ (float __directionZ))
   (setq _directionY (float __directionY))
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
    ;; float32 _quality
    4
    ;; float32 _purity
    4
    ;; float32 _directionZ
    4
    ;; float32 _directionY
    4
    ;; bool _hitPin
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _quality
       (sys::poke _quality (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _purity
       (sys::poke _purity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _directionZ
       (sys::poke _directionZ (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _directionY
       (sys::poke _directionY (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _hitPin
       (if _hitPin (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _quality
     (setq _quality (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _purity
     (setq _purity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _directionZ
     (setq _directionZ (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _directionY
     (setq _directionY (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _hitPin
     (setq _hitPin (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass roboy_communication_cognition::QualityOfTone
  :super ros::object
  :slots ())

(setf (get roboy_communication_cognition::QualityOfTone :md5sum-) "ebc7c4e9f07e3e393dc5857ee7083482")
(setf (get roboy_communication_cognition::QualityOfTone :datatype-) "roboy_communication_cognition/QualityOfTone")
(setf (get roboy_communication_cognition::QualityOfTone :request) roboy_communication_cognition::QualityOfToneRequest)
(setf (get roboy_communication_cognition::QualityOfTone :response) roboy_communication_cognition::QualityOfToneResponse)

(defmethod roboy_communication_cognition::QualityOfToneRequest
  (:response () (instance roboy_communication_cognition::QualityOfToneResponse :init)))

(setf (get roboy_communication_cognition::QualityOfToneRequest :md5sum-) "ebc7c4e9f07e3e393dc5857ee7083482")
(setf (get roboy_communication_cognition::QualityOfToneRequest :datatype-) "roboy_communication_cognition/QualityOfToneRequest")
(setf (get roboy_communication_cognition::QualityOfToneRequest :definition-)
      "string tone
float32 timeInMilliseconds
bool majorOnly
---
float32 quality
float32 purity
float32 directionZ
float32 directionY
bool hitPin

")

(setf (get roboy_communication_cognition::QualityOfToneResponse :md5sum-) "ebc7c4e9f07e3e393dc5857ee7083482")
(setf (get roboy_communication_cognition::QualityOfToneResponse :datatype-) "roboy_communication_cognition/QualityOfToneResponse")
(setf (get roboy_communication_cognition::QualityOfToneResponse :definition-)
      "string tone
float32 timeInMilliseconds
bool majorOnly
---
float32 quality
float32 purity
float32 directionZ
float32 directionY
bool hitPin

")



(provide :roboy_communication_cognition/QualityOfTone "ebc7c4e9f07e3e393dc5857ee7083482")


