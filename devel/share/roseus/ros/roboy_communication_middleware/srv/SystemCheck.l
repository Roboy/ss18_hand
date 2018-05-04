;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_middleware::SystemCheck)
  (if (not (find-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
    (make-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
  (shadow 'SystemCheck (find-package "ROBOY_COMMUNICATION_MIDDLEWARE")))
(unless (find-package "ROBOY_COMMUNICATION_MIDDLEWARE::SYSTEMCHECK")
  (make-package "ROBOY_COMMUNICATION_MIDDLEWARE::SYSTEMCHECK"))
(unless (find-package "ROBOY_COMMUNICATION_MIDDLEWARE::SYSTEMCHECKREQUEST")
  (make-package "ROBOY_COMMUNICATION_MIDDLEWARE::SYSTEMCHECKREQUEST"))
(unless (find-package "ROBOY_COMMUNICATION_MIDDLEWARE::SYSTEMCHECKRESPONSE")
  (make-package "ROBOY_COMMUNICATION_MIDDLEWARE::SYSTEMCHECKRESPONSE"))

(in-package "ROS")





(defclass roboy_communication_middleware::SystemCheckRequest
  :super ros::object
  :slots (_motorIDs ))

(defmethod roboy_communication_middleware::SystemCheckRequest
  (:init
   (&key
    ((:motorIDs __motorIDs) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _motorIDs __motorIDs)
   self)
  (:motorIDs
   (&optional __motorIDs)
   (if __motorIDs (setq _motorIDs __motorIDs)) _motorIDs)
  (:serialization-length
   ()
   (+
    ;; uint8[] _motorIDs
    (* 1    (length _motorIDs)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[] _motorIDs
     (write-long (length _motorIDs) s)
     (princ _motorIDs s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[] _motorIDs
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _motorIDs (make-array n :element-type :char))
     (replace _motorIDs buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(defclass roboy_communication_middleware::SystemCheckResponse
  :super ros::object
  :slots (_position _displacement ))

(defmethod roboy_communication_middleware::SystemCheckResponse
  (:init
   (&key
    ((:position __position) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:displacement __displacement) (let (r) (dotimes (i 0) (push nil r)) r))
    )
   (send-super :init)
   (setq _position __position)
   (setq _displacement __displacement)
   self)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:displacement
   (&optional __displacement)
   (if __displacement (setq _displacement __displacement)) _displacement)
  (:serialization-length
   ()
   (+
    ;; bool[] _position
    (* 1    (length _position)) 4
    ;; bool[] _displacement
    (* 1    (length _displacement)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool[] _position
     (write-long (length _position) s)
     (dotimes (i (length _position))
       (if (elt _position i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[] _displacement
     (write-long (length _displacement) s)
     (dotimes (i (length _displacement))
       (if (elt _displacement i) (write-byte -1 s) (write-byte 0 s))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool[] _position
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _position (make-list n))
     (dotimes (i n)
     (setf (elt _position i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; bool[] _displacement
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _displacement (make-list n))
     (dotimes (i n)
     (setf (elt _displacement i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;;
   self)
  )

(defclass roboy_communication_middleware::SystemCheck
  :super ros::object
  :slots ())

(setf (get roboy_communication_middleware::SystemCheck :md5sum-) "66db4e0a98cb8e965be35dc47d9cb143")
(setf (get roboy_communication_middleware::SystemCheck :datatype-) "roboy_communication_middleware/SystemCheck")
(setf (get roboy_communication_middleware::SystemCheck :request) roboy_communication_middleware::SystemCheckRequest)
(setf (get roboy_communication_middleware::SystemCheck :response) roboy_communication_middleware::SystemCheckResponse)

(defmethod roboy_communication_middleware::SystemCheckRequest
  (:response () (instance roboy_communication_middleware::SystemCheckResponse :init)))

(setf (get roboy_communication_middleware::SystemCheckRequest :md5sum-) "66db4e0a98cb8e965be35dc47d9cb143")
(setf (get roboy_communication_middleware::SystemCheckRequest :datatype-) "roboy_communication_middleware/SystemCheckRequest")
(setf (get roboy_communication_middleware::SystemCheckRequest :definition-)
      "
uint8[] motorIDs
---

bool[] position
bool[] displacement
")

(setf (get roboy_communication_middleware::SystemCheckResponse :md5sum-) "66db4e0a98cb8e965be35dc47d9cb143")
(setf (get roboy_communication_middleware::SystemCheckResponse :datatype-) "roboy_communication_middleware/SystemCheckResponse")
(setf (get roboy_communication_middleware::SystemCheckResponse :definition-)
      "
uint8[] motorIDs
---

bool[] position
bool[] displacement
")



(provide :roboy_communication_middleware/SystemCheck "66db4e0a98cb8e965be35dc47d9cb143")


