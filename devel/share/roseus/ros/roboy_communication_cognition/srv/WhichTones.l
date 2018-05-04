;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_cognition::WhichTones)
  (if (not (find-package "ROBOY_COMMUNICATION_COGNITION"))
    (make-package "ROBOY_COMMUNICATION_COGNITION"))
  (shadow 'WhichTones (find-package "ROBOY_COMMUNICATION_COGNITION")))
(unless (find-package "ROBOY_COMMUNICATION_COGNITION::WHICHTONES")
  (make-package "ROBOY_COMMUNICATION_COGNITION::WHICHTONES"))
(unless (find-package "ROBOY_COMMUNICATION_COGNITION::WHICHTONESREQUEST")
  (make-package "ROBOY_COMMUNICATION_COGNITION::WHICHTONESREQUEST"))
(unless (find-package "ROBOY_COMMUNICATION_COGNITION::WHICHTONESRESPONSE")
  (make-package "ROBOY_COMMUNICATION_COGNITION::WHICHTONESRESPONSE"))

(in-package "ROS")





(defclass roboy_communication_cognition::WhichTonesRequest
  :super ros::object
  :slots (_timeInMilliseconds ))

(defmethod roboy_communication_cognition::WhichTonesRequest
  (:init
   (&key
    ((:timeInMilliseconds __timeInMilliseconds) 0.0)
    )
   (send-super :init)
   (setq _timeInMilliseconds (float __timeInMilliseconds))
   self)
  (:timeInMilliseconds
   (&optional __timeInMilliseconds)
   (if __timeInMilliseconds (setq _timeInMilliseconds __timeInMilliseconds)) _timeInMilliseconds)
  (:serialization-length
   ()
   (+
    ;; float32 _timeInMilliseconds
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _timeInMilliseconds
       (sys::poke _timeInMilliseconds (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _timeInMilliseconds
     (setq _timeInMilliseconds (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass roboy_communication_cognition::WhichTonesResponse
  :super ros::object
  :slots (_tones _timestamps ))

(defmethod roboy_communication_cognition::WhichTonesResponse
  (:init
   (&key
    ((:tones __tones) (make-array 0 :initial-element 0 :element-type :integer))
    ((:timestamps __timestamps) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _tones __tones)
   (setq _timestamps __timestamps)
   self)
  (:tones
   (&optional __tones)
   (if __tones (setq _tones __tones)) _tones)
  (:timestamps
   (&optional __timestamps)
   (if __timestamps (setq _timestamps __timestamps)) _timestamps)
  (:serialization-length
   ()
   (+
    ;; uint16[] _tones
    (* 2    (length _tones)) 4
    ;; float32[] _timestamps
    (* 4    (length _timestamps)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16[] _tones
     (write-long (length _tones) s)
     (dotimes (i (length _tones))
       (write-word (elt _tones i) s)
       )
     ;; float32[] _timestamps
     (write-long (length _timestamps) s)
     (dotimes (i (length _timestamps))
       (sys::poke (elt _timestamps i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16[] _tones
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tones (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _tones i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; float32[] _timestamps
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _timestamps (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _timestamps i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass roboy_communication_cognition::WhichTones
  :super ros::object
  :slots ())

(setf (get roboy_communication_cognition::WhichTones :md5sum-) "9bb4a7459b0f3655f623402ca1383bd0")
(setf (get roboy_communication_cognition::WhichTones :datatype-) "roboy_communication_cognition/WhichTones")
(setf (get roboy_communication_cognition::WhichTones :request) roboy_communication_cognition::WhichTonesRequest)
(setf (get roboy_communication_cognition::WhichTones :response) roboy_communication_cognition::WhichTonesResponse)

(defmethod roboy_communication_cognition::WhichTonesRequest
  (:response () (instance roboy_communication_cognition::WhichTonesResponse :init)))

(setf (get roboy_communication_cognition::WhichTonesRequest :md5sum-) "9bb4a7459b0f3655f623402ca1383bd0")
(setf (get roboy_communication_cognition::WhichTonesRequest :datatype-) "roboy_communication_cognition/WhichTonesRequest")
(setf (get roboy_communication_cognition::WhichTonesRequest :definition-)
      "float32 timeInMilliseconds
---
uint16[] tones
float32[] timestamps

")

(setf (get roboy_communication_cognition::WhichTonesResponse :md5sum-) "9bb4a7459b0f3655f623402ca1383bd0")
(setf (get roboy_communication_cognition::WhichTonesResponse :datatype-) "roboy_communication_cognition/WhichTonesResponse")
(setf (get roboy_communication_cognition::WhichTonesResponse :definition-)
      "float32 timeInMilliseconds
---
uint16[] tones
float32[] timestamps

")



(provide :roboy_communication_cognition/WhichTones "9bb4a7459b0f3655f623402ca1383bd0")


