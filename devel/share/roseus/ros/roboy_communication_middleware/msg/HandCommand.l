;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_middleware::HandCommand)
  (if (not (find-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
    (make-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
  (shadow 'HandCommand (find-package "ROBOY_COMMUNICATION_MIDDLEWARE")))
(unless (find-package "ROBOY_COMMUNICATION_MIDDLEWARE::HANDCOMMAND")
  (make-package "ROBOY_COMMUNICATION_MIDDLEWARE::HANDCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude HandCommand.msg.html


(defclass roboy_communication_middleware::HandCommand
  :super ros::object
  :slots (_id _setPoint _motorid ))

(defmethod roboy_communication_middleware::HandCommand
  (:init
   (&key
    ((:id __id) 0)
    ((:setPoint __setPoint) (make-array 0 :initial-element 0 :element-type :char))
    ((:motorid __motorid) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _setPoint __setPoint)
   (setq _motorid __motorid)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:setPoint
   (&optional __setPoint)
   (if __setPoint (setq _setPoint __setPoint)) _setPoint)
  (:motorid
   (&optional __motorid)
   (if __motorid (setq _motorid __motorid)) _motorid)
  (:serialization-length
   ()
   (+
    ;; uint8 _id
    1
    ;; uint8[] _setPoint
    (* 1    (length _setPoint)) 4
    ;; uint8[] _motorid
    (* 1    (length _motorid)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id
       (write-byte _id s)
     ;; uint8[] _setPoint
     (write-long (length _setPoint) s)
     (princ _setPoint s)
     ;; uint8[] _motorid
     (write-long (length _motorid) s)
     (princ _motorid s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[] _setPoint
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _setPoint (make-array n :element-type :char))
     (replace _setPoint buf :start2 ptr-) (incf ptr- n))
   ;; uint8[] _motorid
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _motorid (make-array n :element-type :char))
     (replace _motorid buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get roboy_communication_middleware::HandCommand :md5sum-) "33ffaf8168256fe4b3d8ba74b9a0642d")
(setf (get roboy_communication_middleware::HandCommand :datatype-) "roboy_communication_middleware/HandCommand")
(setf (get roboy_communication_middleware::HandCommand :definition-)
      "uint8 id
uint8[] setPoint
uint8[] motorid
")



(provide :roboy_communication_middleware/HandCommand "33ffaf8168256fe4b3d8ba74b9a0642d")


