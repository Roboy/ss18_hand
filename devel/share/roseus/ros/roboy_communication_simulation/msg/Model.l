;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_simulation::Model)
  (if (not (find-package "ROBOY_COMMUNICATION_SIMULATION"))
    (make-package "ROBOY_COMMUNICATION_SIMULATION"))
  (shadow 'Model (find-package "ROBOY_COMMUNICATION_SIMULATION")))
(unless (find-package "ROBOY_COMMUNICATION_SIMULATION::MODEL")
  (make-package "ROBOY_COMMUNICATION_SIMULATION::MODEL"))

(in-package "ROS")
;;//! \htmlinclude Model.msg.html


(defclass roboy_communication_simulation::Model
  :super ros::object
  :slots (_operation _type _objects _positions ))

(defmethod roboy_communication_simulation::Model
  (:init
   (&key
    ((:operation __operation) 0)
    ((:type __type) 0)
    ((:objects __objects) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:positions __positions) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _operation (round __operation))
   (setq _type (round __type))
   (setq _objects __objects)
   (setq _positions __positions)
   self)
  (:operation
   (&optional __operation)
   (if __operation (setq _operation __operation)) _operation)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:objects
   (&optional __objects)
   (if __objects (setq _objects __objects)) _objects)
  (:positions
   (&optional __positions)
   (if __positions (setq _positions __positions)) _positions)
  (:serialization-length
   ()
   (+
    ;; int32 _operation
    4
    ;; int32 _type
    4
    ;; string[] _objects
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _objects)) 4
    ;; float32[] _positions
    (* 4    (length _positions)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _operation
       (write-long _operation s)
     ;; int32 _type
       (write-long _type s)
     ;; string[] _objects
     (write-long (length _objects) s)
     (dolist (elem _objects)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float32[] _positions
     (write-long (length _positions) s)
     (dotimes (i (length _positions))
       (sys::poke (elt _positions i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _operation
     (setq _operation (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string[] _objects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _objects (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _objects i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float32[] _positions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _positions (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _positions i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get roboy_communication_simulation::Model :md5sum-) "69efd5b13286c453a423cb8ab3a38313")
(setf (get roboy_communication_simulation::Model :datatype-) "roboy_communication_simulation/Model")
(setf (get roboy_communication_simulation::Model :definition-)
      "#Operation you want to call, either delete (0) or insert (1)
int32 operation
#Type, either world (0) or model (1)
int32 type
#Model(s) or world(s) to be used
string[] objects
#Position(s) of object(s) @where they should be inserted
float32[] positions

")



(provide :roboy_communication_simulation/Model "69efd5b13286c453a423cb8ab3a38313")


