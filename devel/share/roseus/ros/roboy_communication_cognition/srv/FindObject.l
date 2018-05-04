;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_cognition::FindObject)
  (if (not (find-package "ROBOY_COMMUNICATION_COGNITION"))
    (make-package "ROBOY_COMMUNICATION_COGNITION"))
  (shadow 'FindObject (find-package "ROBOY_COMMUNICATION_COGNITION")))
(unless (find-package "ROBOY_COMMUNICATION_COGNITION::FINDOBJECT")
  (make-package "ROBOY_COMMUNICATION_COGNITION::FINDOBJECT"))
(unless (find-package "ROBOY_COMMUNICATION_COGNITION::FINDOBJECTREQUEST")
  (make-package "ROBOY_COMMUNICATION_COGNITION::FINDOBJECTREQUEST"))
(unless (find-package "ROBOY_COMMUNICATION_COGNITION::FINDOBJECTRESPONSE")
  (make-package "ROBOY_COMMUNICATION_COGNITION::FINDOBJECTRESPONSE"))

(in-package "ROS")





(defclass roboy_communication_cognition::FindObjectRequest
  :super ros::object
  :slots (_type ))

(defmethod roboy_communication_cognition::FindObjectRequest
  (:init
   (&key
    ((:type __type) "")
    )
   (send-super :init)
   (setq _type (string __type))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; string _type
    4 (length _type)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass roboy_communication_cognition::FindObjectResponse
  :super ros::object
  :slots (_found _x _y _z ))

(defmethod roboy_communication_cognition::FindObjectResponse
  (:init
   (&key
    ((:found __found) nil)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    )
   (send-super :init)
   (setq _found __found)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   self)
  (:found
   (&optional __found)
   (if __found (setq _found __found)) _found)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:serialization-length
   ()
   (+
    ;; bool _found
    1
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _z
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _found
       (if _found (write-byte -1 s) (write-byte 0 s))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _found
     (setq _found (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass roboy_communication_cognition::FindObject
  :super ros::object
  :slots ())

(setf (get roboy_communication_cognition::FindObject :md5sum-) "8bce2c9439fff72b8d9c35fa63d8c24a")
(setf (get roboy_communication_cognition::FindObject :datatype-) "roboy_communication_cognition/FindObject")
(setf (get roboy_communication_cognition::FindObject :request) roboy_communication_cognition::FindObjectRequest)
(setf (get roboy_communication_cognition::FindObject :response) roboy_communication_cognition::FindObjectResponse)

(defmethod roboy_communication_cognition::FindObjectRequest
  (:response () (instance roboy_communication_cognition::FindObjectResponse :init)))

(setf (get roboy_communication_cognition::FindObjectRequest :md5sum-) "8bce2c9439fff72b8d9c35fa63d8c24a")
(setf (get roboy_communication_cognition::FindObjectRequest :datatype-) "roboy_communication_cognition/FindObjectRequest")
(setf (get roboy_communication_cognition::FindObjectRequest :definition-)
      "
string type
---

bool found

float32 x
float32 y
float32 z
")

(setf (get roboy_communication_cognition::FindObjectResponse :md5sum-) "8bce2c9439fff72b8d9c35fa63d8c24a")
(setf (get roboy_communication_cognition::FindObjectResponse :datatype-) "roboy_communication_cognition/FindObjectResponse")
(setf (get roboy_communication_cognition::FindObjectResponse :definition-)
      "
string type
---

bool found

float32 x
float32 y
float32 z
")



(provide :roboy_communication_cognition/FindObject "8bce2c9439fff72b8d9c35fa63d8c24a")


