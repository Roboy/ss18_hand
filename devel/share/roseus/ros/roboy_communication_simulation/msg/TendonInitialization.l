;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_simulation::TendonInitialization)
  (if (not (find-package "ROBOY_COMMUNICATION_SIMULATION"))
    (make-package "ROBOY_COMMUNICATION_SIMULATION"))
  (shadow 'TendonInitialization (find-package "ROBOY_COMMUNICATION_SIMULATION")))
(unless (find-package "ROBOY_COMMUNICATION_SIMULATION::TENDONINITIALIZATION")
  (make-package "ROBOY_COMMUNICATION_SIMULATION::TENDONINITIALIZATION"))

(in-package "ROS")
;;//! \htmlinclude TendonInitialization.msg.html


(defclass roboy_communication_simulation::TendonInitialization
  :super ros::object
  :slots (_tendonID _maxForce _wirepoints _roboyParts ))

(defmethod roboy_communication_simulation::TendonInitialization
  (:init
   (&key
    ((:tendonID __tendonID) 0)
    ((:maxForce __maxForce) 0.0)
    ((:wirepoints __wirepoints) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:roboyParts __roboyParts) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _tendonID (round __tendonID))
   (setq _maxForce (float __maxForce))
   (setq _wirepoints __wirepoints)
   (setq _roboyParts __roboyParts)
   self)
  (:tendonID
   (&optional __tendonID)
   (if __tendonID (setq _tendonID __tendonID)) _tendonID)
  (:maxForce
   (&optional __maxForce)
   (if __maxForce (setq _maxForce __maxForce)) _maxForce)
  (:wirepoints
   (&optional __wirepoints)
   (if __wirepoints (setq _wirepoints __wirepoints)) _wirepoints)
  (:roboyParts
   (&optional __roboyParts)
   (if __roboyParts (setq _roboyParts __roboyParts)) _roboyParts)
  (:serialization-length
   ()
   (+
    ;; int32 _tendonID
    4
    ;; float32 _maxForce
    4
    ;; float32[] _wirepoints
    (* 4    (length _wirepoints)) 4
    ;; string[] _roboyParts
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _roboyParts)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _tendonID
       (write-long _tendonID s)
     ;; float32 _maxForce
       (sys::poke _maxForce (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[] _wirepoints
     (write-long (length _wirepoints) s)
     (dotimes (i (length _wirepoints))
       (sys::poke (elt _wirepoints i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; string[] _roboyParts
     (write-long (length _roboyParts) s)
     (dolist (elem _roboyParts)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _tendonID
     (setq _tendonID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _maxForce
     (setq _maxForce (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[] _wirepoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _wirepoints (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _wirepoints i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; string[] _roboyParts
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _roboyParts (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _roboyParts i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get roboy_communication_simulation::TendonInitialization :md5sum-) "085ee5f8bb51d4a1c10813b9fc10e600")
(setf (get roboy_communication_simulation::TendonInitialization :datatype-) "roboy_communication_simulation/TendonInitialization")
(setf (get roboy_communication_simulation::TendonInitialization :definition-)
      "int32 tendonID
#maximal applicable force	
float32 maxForce
#world space coord, 3 floats == one coordinate
float32[] wirepoints
#names of roboypart each wirepoint is linked to
string[] roboyParts
")



(provide :roboy_communication_simulation/TendonInitialization "085ee5f8bb51d4a1c10813b9fc10e600")


