;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_middleware::DarkRoomStatistics)
  (if (not (find-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
    (make-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
  (shadow 'DarkRoomStatistics (find-package "ROBOY_COMMUNICATION_MIDDLEWARE")))
(unless (find-package "ROBOY_COMMUNICATION_MIDDLEWARE::DARKROOMSTATISTICS")
  (make-package "ROBOY_COMMUNICATION_MIDDLEWARE::DARKROOMSTATISTICS"))

(in-package "ROS")
;;//! \htmlinclude DarkRoomStatistics.msg.html


(defclass roboy_communication_middleware::DarkRoomStatistics
  :super ros::object
  :slots (_object_name _lighthouse _updateFrequency_horizontal _updateFrequency_vertical ))

(defmethod roboy_communication_middleware::DarkRoomStatistics
  (:init
   (&key
    ((:object_name __object_name) "")
    ((:lighthouse __lighthouse) 0)
    ((:updateFrequency_horizontal __updateFrequency_horizontal) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:updateFrequency_vertical __updateFrequency_vertical) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _object_name (string __object_name))
   (setq _lighthouse (round __lighthouse))
   (setq _updateFrequency_horizontal __updateFrequency_horizontal)
   (setq _updateFrequency_vertical __updateFrequency_vertical)
   self)
  (:object_name
   (&optional __object_name)
   (if __object_name (setq _object_name __object_name)) _object_name)
  (:lighthouse
   (&optional __lighthouse)
   (if __lighthouse (setq _lighthouse __lighthouse)) _lighthouse)
  (:updateFrequency_horizontal
   (&optional __updateFrequency_horizontal)
   (if __updateFrequency_horizontal (setq _updateFrequency_horizontal __updateFrequency_horizontal)) _updateFrequency_horizontal)
  (:updateFrequency_vertical
   (&optional __updateFrequency_vertical)
   (if __updateFrequency_vertical (setq _updateFrequency_vertical __updateFrequency_vertical)) _updateFrequency_vertical)
  (:serialization-length
   ()
   (+
    ;; string _object_name
    4 (length _object_name)
    ;; int32 _lighthouse
    4
    ;; float32[] _updateFrequency_horizontal
    (* 4    (length _updateFrequency_horizontal)) 4
    ;; float32[] _updateFrequency_vertical
    (* 4    (length _updateFrequency_vertical)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _object_name
       (write-long (length _object_name) s) (princ _object_name s)
     ;; int32 _lighthouse
       (write-long _lighthouse s)
     ;; float32[] _updateFrequency_horizontal
     (write-long (length _updateFrequency_horizontal) s)
     (dotimes (i (length _updateFrequency_horizontal))
       (sys::poke (elt _updateFrequency_horizontal i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _updateFrequency_vertical
     (write-long (length _updateFrequency_vertical) s)
     (dotimes (i (length _updateFrequency_vertical))
       (sys::poke (elt _updateFrequency_vertical i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _object_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _object_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _lighthouse
     (setq _lighthouse (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _updateFrequency_horizontal
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _updateFrequency_horizontal (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _updateFrequency_horizontal i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _updateFrequency_vertical
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _updateFrequency_vertical (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _updateFrequency_vertical i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get roboy_communication_middleware::DarkRoomStatistics :md5sum-) "7aa7daab9e7ff8fdfb2e001f35611191")
(setf (get roboy_communication_middleware::DarkRoomStatistics :datatype-) "roboy_communication_middleware/DarkRoomStatistics")
(setf (get roboy_communication_middleware::DarkRoomStatistics :definition-)
      "string object_name
int32 lighthouse
float32[] updateFrequency_horizontal
float32[] updateFrequency_vertical
")



(provide :roboy_communication_middleware/DarkRoomStatistics "7aa7daab9e7ff8fdfb2e001f35611191")


