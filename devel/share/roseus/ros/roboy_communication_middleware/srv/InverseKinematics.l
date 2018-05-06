;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_middleware::InverseKinematics)
  (if (not (find-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
    (make-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
  (shadow 'InverseKinematics (find-package "ROBOY_COMMUNICATION_MIDDLEWARE")))
(unless (find-package "ROBOY_COMMUNICATION_MIDDLEWARE::INVERSEKINEMATICS")
  (make-package "ROBOY_COMMUNICATION_MIDDLEWARE::INVERSEKINEMATICS"))
(unless (find-package "ROBOY_COMMUNICATION_MIDDLEWARE::INVERSEKINEMATICSREQUEST")
  (make-package "ROBOY_COMMUNICATION_MIDDLEWARE::INVERSEKINEMATICSREQUEST"))
(unless (find-package "ROBOY_COMMUNICATION_MIDDLEWARE::INVERSEKINEMATICSRESPONSE")
  (make-package "ROBOY_COMMUNICATION_MIDDLEWARE::INVERSEKINEMATICSRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass roboy_communication_middleware::InverseKinematicsRequest
  :super ros::object
  :slots (_targetPosition _ankle_left _ankle_right_sensor _lighthouse_sensor_id _initial_angles _inspect _visualize_initial _visualize_result ))

(defmethod roboy_communication_middleware::InverseKinematicsRequest
  (:init
   (&key
    ((:targetPosition __targetPosition) (instance geometry_msgs::Vector3 :init))
    ((:ankle_left __ankle_left) (instance geometry_msgs::Vector3 :init))
    ((:ankle_right_sensor __ankle_right_sensor) (instance geometry_msgs::Vector3 :init))
    ((:lighthouse_sensor_id __lighthouse_sensor_id) 0)
    ((:initial_angles __initial_angles) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:inspect __inspect) nil)
    ((:visualize_initial __visualize_initial) nil)
    ((:visualize_result __visualize_result) nil)
    )
   (send-super :init)
   (setq _targetPosition __targetPosition)
   (setq _ankle_left __ankle_left)
   (setq _ankle_right_sensor __ankle_right_sensor)
   (setq _lighthouse_sensor_id (round __lighthouse_sensor_id))
   (setq _initial_angles __initial_angles)
   (setq _inspect __inspect)
   (setq _visualize_initial __visualize_initial)
   (setq _visualize_result __visualize_result)
   self)
  (:targetPosition
   (&rest __targetPosition)
   (if (keywordp (car __targetPosition))
       (send* _targetPosition __targetPosition)
     (progn
       (if __targetPosition (setq _targetPosition (car __targetPosition)))
       _targetPosition)))
  (:ankle_left
   (&rest __ankle_left)
   (if (keywordp (car __ankle_left))
       (send* _ankle_left __ankle_left)
     (progn
       (if __ankle_left (setq _ankle_left (car __ankle_left)))
       _ankle_left)))
  (:ankle_right_sensor
   (&rest __ankle_right_sensor)
   (if (keywordp (car __ankle_right_sensor))
       (send* _ankle_right_sensor __ankle_right_sensor)
     (progn
       (if __ankle_right_sensor (setq _ankle_right_sensor (car __ankle_right_sensor)))
       _ankle_right_sensor)))
  (:lighthouse_sensor_id
   (&optional __lighthouse_sensor_id)
   (if __lighthouse_sensor_id (setq _lighthouse_sensor_id __lighthouse_sensor_id)) _lighthouse_sensor_id)
  (:initial_angles
   (&optional __initial_angles)
   (if __initial_angles (setq _initial_angles __initial_angles)) _initial_angles)
  (:inspect
   (&optional __inspect)
   (if __inspect (setq _inspect __inspect)) _inspect)
  (:visualize_initial
   (&optional __visualize_initial)
   (if __visualize_initial (setq _visualize_initial __visualize_initial)) _visualize_initial)
  (:visualize_result
   (&optional __visualize_result)
   (if __visualize_result (setq _visualize_result __visualize_result)) _visualize_result)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Vector3 _targetPosition
    (send _targetPosition :serialization-length)
    ;; geometry_msgs/Vector3 _ankle_left
    (send _ankle_left :serialization-length)
    ;; geometry_msgs/Vector3 _ankle_right_sensor
    (send _ankle_right_sensor :serialization-length)
    ;; int32 _lighthouse_sensor_id
    4
    ;; float64[] _initial_angles
    (* 8    (length _initial_angles)) 4
    ;; bool _inspect
    1
    ;; bool _visualize_initial
    1
    ;; bool _visualize_result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Vector3 _targetPosition
       (send _targetPosition :serialize s)
     ;; geometry_msgs/Vector3 _ankle_left
       (send _ankle_left :serialize s)
     ;; geometry_msgs/Vector3 _ankle_right_sensor
       (send _ankle_right_sensor :serialize s)
     ;; int32 _lighthouse_sensor_id
       (write-long _lighthouse_sensor_id s)
     ;; float64[] _initial_angles
     (write-long (length _initial_angles) s)
     (dotimes (i (length _initial_angles))
       (sys::poke (elt _initial_angles i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; bool _inspect
       (if _inspect (write-byte -1 s) (write-byte 0 s))
     ;; bool _visualize_initial
       (if _visualize_initial (write-byte -1 s) (write-byte 0 s))
     ;; bool _visualize_result
       (if _visualize_result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Vector3 _targetPosition
     (send _targetPosition :deserialize buf ptr-) (incf ptr- (send _targetPosition :serialization-length))
   ;; geometry_msgs/Vector3 _ankle_left
     (send _ankle_left :deserialize buf ptr-) (incf ptr- (send _ankle_left :serialization-length))
   ;; geometry_msgs/Vector3 _ankle_right_sensor
     (send _ankle_right_sensor :deserialize buf ptr-) (incf ptr- (send _ankle_right_sensor :serialization-length))
   ;; int32 _lighthouse_sensor_id
     (setq _lighthouse_sensor_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64[] _initial_angles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _initial_angles (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _initial_angles i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; bool _inspect
     (setq _inspect (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _visualize_initial
     (setq _visualize_initial (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _visualize_result
     (setq _visualize_result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass roboy_communication_middleware::InverseKinematicsResponse
  :super ros::object
  :slots (_angles _resultPosition ))

(defmethod roboy_communication_middleware::InverseKinematicsResponse
  (:init
   (&key
    ((:angles __angles) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:resultPosition __resultPosition) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Vector3 :init) r)) r))
    )
   (send-super :init)
   (setq _angles __angles)
   (setq _resultPosition __resultPosition)
   self)
  (:angles
   (&optional __angles)
   (if __angles (setq _angles __angles)) _angles)
  (:resultPosition
   (&rest __resultPosition)
   (if (keywordp (car __resultPosition))
       (send* _resultPosition __resultPosition)
     (progn
       (if __resultPosition (setq _resultPosition (car __resultPosition)))
       _resultPosition)))
  (:serialization-length
   ()
   (+
    ;; float64[] _angles
    (* 8    (length _angles)) 4
    ;; geometry_msgs/Vector3[] _resultPosition
    (apply #'+ (send-all _resultPosition :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _angles
     (write-long (length _angles) s)
     (dotimes (i (length _angles))
       (sys::poke (elt _angles i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; geometry_msgs/Vector3[] _resultPosition
     (write-long (length _resultPosition) s)
     (dolist (elem _resultPosition)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _angles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _angles (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _angles i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; geometry_msgs/Vector3[] _resultPosition
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _resultPosition (let (r) (dotimes (i n) (push (instance geometry_msgs::Vector3 :init) r)) r))
     (dolist (elem- _resultPosition)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass roboy_communication_middleware::InverseKinematics
  :super ros::object
  :slots ())

(setf (get roboy_communication_middleware::InverseKinematics :md5sum-) "7ed4cab343a38215cfd78eb6ab4e3999")
(setf (get roboy_communication_middleware::InverseKinematics :datatype-) "roboy_communication_middleware/InverseKinematics")
(setf (get roboy_communication_middleware::InverseKinematics :request) roboy_communication_middleware::InverseKinematicsRequest)
(setf (get roboy_communication_middleware::InverseKinematics :response) roboy_communication_middleware::InverseKinematicsResponse)

(defmethod roboy_communication_middleware::InverseKinematicsRequest
  (:response () (instance roboy_communication_middleware::InverseKinematicsResponse :init)))

(setf (get roboy_communication_middleware::InverseKinematicsRequest :md5sum-) "7ed4cab343a38215cfd78eb6ab4e3999")
(setf (get roboy_communication_middleware::InverseKinematicsRequest :datatype-) "roboy_communication_middleware/InverseKinematicsRequest")
(setf (get roboy_communication_middleware::InverseKinematicsRequest :definition-)
      "
geometry_msgs/Vector3 targetPosition

geometry_msgs/Vector3 ankle_left

geometry_msgs/Vector3 ankle_right_sensor


int32 lighthouse_sensor_id

float64[] initial_angles

bool inspect
bool visualize_initial
bool visualize_result

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
---

float64[] angles

geometry_msgs/Vector3[] resultPosition

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
")

(setf (get roboy_communication_middleware::InverseKinematicsResponse :md5sum-) "7ed4cab343a38215cfd78eb6ab4e3999")
(setf (get roboy_communication_middleware::InverseKinematicsResponse :datatype-) "roboy_communication_middleware/InverseKinematicsResponse")
(setf (get roboy_communication_middleware::InverseKinematicsResponse :definition-)
      "
geometry_msgs/Vector3 targetPosition

geometry_msgs/Vector3 ankle_left

geometry_msgs/Vector3 ankle_right_sensor


int32 lighthouse_sensor_id

float64[] initial_angles

bool inspect
bool visualize_initial
bool visualize_result

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
---

float64[] angles

geometry_msgs/Vector3[] resultPosition

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
")



(provide :roboy_communication_middleware/InverseKinematics "7ed4cab343a38215cfd78eb6ab4e3999")


