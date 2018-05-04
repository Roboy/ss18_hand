;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_cognition::AudioData)
  (if (not (find-package "ROBOY_COMMUNICATION_COGNITION"))
    (make-package "ROBOY_COMMUNICATION_COGNITION"))
  (shadow 'AudioData (find-package "ROBOY_COMMUNICATION_COGNITION")))
(unless (find-package "ROBOY_COMMUNICATION_COGNITION::AUDIODATA")
  (make-package "ROBOY_COMMUNICATION_COGNITION::AUDIODATA"))

(in-package "ROS")
;;//! \htmlinclude AudioData.msg.html


(defclass roboy_communication_cognition::AudioData
  :super ros::object
  :slots (_data ))

(defmethod roboy_communication_cognition::AudioData
  (:init
   (&key
    ((:data __data) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; uint8[] _data
    (* 1    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[] _data
     (write-long (length _data) s)
     (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[] _data
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _data (make-array n :element-type :char))
     (replace _data buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get roboy_communication_cognition::AudioData :md5sum-) "f43a8e1b362b75baa741461b46adc7e0")
(setf (get roboy_communication_cognition::AudioData :datatype-) "roboy_communication_cognition/AudioData")
(setf (get roboy_communication_cognition::AudioData :definition-)
      "uint8[] data

")



(provide :roboy_communication_cognition/AudioData "f43a8e1b362b75baa741461b46adc7e0")


