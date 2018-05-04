;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_cognition::AudioInfo)
  (if (not (find-package "ROBOY_COMMUNICATION_COGNITION"))
    (make-package "ROBOY_COMMUNICATION_COGNITION"))
  (shadow 'AudioInfo (find-package "ROBOY_COMMUNICATION_COGNITION")))
(unless (find-package "ROBOY_COMMUNICATION_COGNITION::AUDIOINFO")
  (make-package "ROBOY_COMMUNICATION_COGNITION::AUDIOINFO"))

(in-package "ROS")
;;//! \htmlinclude AudioInfo.msg.html


(defclass roboy_communication_cognition::AudioInfo
  :super ros::object
  :slots (_frequency _averagePower ))

(defmethod roboy_communication_cognition::AudioInfo
  (:init
   (&key
    ((:frequency __frequency) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:averagePower __averagePower) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _frequency __frequency)
   (setq _averagePower __averagePower)
   self)
  (:frequency
   (&optional __frequency)
   (if __frequency (setq _frequency __frequency)) _frequency)
  (:averagePower
   (&optional __averagePower)
   (if __averagePower (setq _averagePower __averagePower)) _averagePower)
  (:serialization-length
   ()
   (+
    ;; float32[] _frequency
    (* 4    (length _frequency)) 4
    ;; float32[] _averagePower
    (* 4    (length _averagePower)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _frequency
     (write-long (length _frequency) s)
     (dotimes (i (length _frequency))
       (sys::poke (elt _frequency i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _averagePower
     (write-long (length _averagePower) s)
     (dotimes (i (length _averagePower))
       (sys::poke (elt _averagePower i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _frequency
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _frequency (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _frequency i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _averagePower
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _averagePower (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _averagePower i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get roboy_communication_cognition::AudioInfo :md5sum-) "72fb2e65555f8e71fd34fc560cf30d5f")
(setf (get roboy_communication_cognition::AudioInfo :datatype-) "roboy_communication_cognition/AudioInfo")
(setf (get roboy_communication_cognition::AudioInfo :definition-)
      "float32[] frequency
float32[] averagePower
")



(provide :roboy_communication_cognition/AudioInfo "72fb2e65555f8e71fd34fc560cf30d5f")


