;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_cognition::NewFacialFeatures)
  (if (not (find-package "ROBOY_COMMUNICATION_COGNITION"))
    (make-package "ROBOY_COMMUNICATION_COGNITION"))
  (shadow 'NewFacialFeatures (find-package "ROBOY_COMMUNICATION_COGNITION")))
(unless (find-package "ROBOY_COMMUNICATION_COGNITION::NEWFACIALFEATURES")
  (make-package "ROBOY_COMMUNICATION_COGNITION::NEWFACIALFEATURES"))

(in-package "ROS")
;;//! \htmlinclude NewFacialFeatures.msg.html


(defclass roboy_communication_cognition::NewFacialFeatures
  :super ros::object
  :slots (_speaking _ff ))

(defmethod roboy_communication_cognition::NewFacialFeatures
  (:init
   (&key
    ((:speaking __speaking) nil)
    ((:ff __ff) (make-array 128 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _speaking __speaking)
   (setq _ff __ff)
   self)
  (:speaking
   (&optional __speaking)
   (if __speaking (setq _speaking __speaking)) _speaking)
  (:ff
   (&optional __ff)
   (if __ff (setq _ff __ff)) _ff)
  (:serialization-length
   ()
   (+
    ;; bool _speaking
    1
    ;; float64[128] _ff
    (* 8    128)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _speaking
       (if _speaking (write-byte -1 s) (write-byte 0 s))
     ;; float64[128] _ff
     (dotimes (i 128)
       (sys::poke (elt _ff i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _speaking
     (setq _speaking (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64[128] _ff
   (dotimes (i (length _ff))
     (setf (elt _ff i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get roboy_communication_cognition::NewFacialFeatures :md5sum-) "782758a9ad871ad0f7c61033e6a9c6cf")
(setf (get roboy_communication_cognition::NewFacialFeatures :datatype-) "roboy_communication_cognition/NewFacialFeatures")
(setf (get roboy_communication_cognition::NewFacialFeatures :definition-)
      "#only for unrecognized faces
#is person speaking?
bool speaking
#facial features (128x1 vector)
float64[128] ff

")



(provide :roboy_communication_cognition/NewFacialFeatures "782758a9ad871ad0f7c61033e6a9c6cf")


