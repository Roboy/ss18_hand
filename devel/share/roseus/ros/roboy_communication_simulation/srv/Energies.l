;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_simulation::Energies)
  (if (not (find-package "ROBOY_COMMUNICATION_SIMULATION"))
    (make-package "ROBOY_COMMUNICATION_SIMULATION"))
  (shadow 'Energies (find-package "ROBOY_COMMUNICATION_SIMULATION")))
(unless (find-package "ROBOY_COMMUNICATION_SIMULATION::ENERGIES")
  (make-package "ROBOY_COMMUNICATION_SIMULATION::ENERGIES"))
(unless (find-package "ROBOY_COMMUNICATION_SIMULATION::ENERGIESREQUEST")
  (make-package "ROBOY_COMMUNICATION_SIMULATION::ENERGIESREQUEST"))
(unless (find-package "ROBOY_COMMUNICATION_SIMULATION::ENERGIESRESPONSE")
  (make-package "ROBOY_COMMUNICATION_SIMULATION::ENERGIESRESPONSE"))

(in-package "ROS")





(defclass roboy_communication_simulation::EnergiesRequest
  :super ros::object
  :slots ())

(defmethod roboy_communication_simulation::EnergiesRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass roboy_communication_simulation::EnergiesResponse
  :super ros::object
  :slots (_E_speed _E_headvel _E_headori _E_slide _E_effort ))

(defmethod roboy_communication_simulation::EnergiesResponse
  (:init
   (&key
    ((:E_speed __E_speed) 0.0)
    ((:E_headvel __E_headvel) 0.0)
    ((:E_headori __E_headori) 0.0)
    ((:E_slide __E_slide) 0.0)
    ((:E_effort __E_effort) 0.0)
    )
   (send-super :init)
   (setq _E_speed (float __E_speed))
   (setq _E_headvel (float __E_headvel))
   (setq _E_headori (float __E_headori))
   (setq _E_slide (float __E_slide))
   (setq _E_effort (float __E_effort))
   self)
  (:E_speed
   (&optional __E_speed)
   (if __E_speed (setq _E_speed __E_speed)) _E_speed)
  (:E_headvel
   (&optional __E_headvel)
   (if __E_headvel (setq _E_headvel __E_headvel)) _E_headvel)
  (:E_headori
   (&optional __E_headori)
   (if __E_headori (setq _E_headori __E_headori)) _E_headori)
  (:E_slide
   (&optional __E_slide)
   (if __E_slide (setq _E_slide __E_slide)) _E_slide)
  (:E_effort
   (&optional __E_effort)
   (if __E_effort (setq _E_effort __E_effort)) _E_effort)
  (:serialization-length
   ()
   (+
    ;; float64 _E_speed
    8
    ;; float64 _E_headvel
    8
    ;; float64 _E_headori
    8
    ;; float64 _E_slide
    8
    ;; float64 _E_effort
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _E_speed
       (sys::poke _E_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _E_headvel
       (sys::poke _E_headvel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _E_headori
       (sys::poke _E_headori (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _E_slide
       (sys::poke _E_slide (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _E_effort
       (sys::poke _E_effort (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _E_speed
     (setq _E_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _E_headvel
     (setq _E_headvel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _E_headori
     (setq _E_headori (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _E_slide
     (setq _E_slide (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _E_effort
     (setq _E_effort (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass roboy_communication_simulation::Energies
  :super ros::object
  :slots ())

(setf (get roboy_communication_simulation::Energies :md5sum-) "3a6c57e829cf6beb9c3918f4ad1ffcad")
(setf (get roboy_communication_simulation::Energies :datatype-) "roboy_communication_simulation/Energies")
(setf (get roboy_communication_simulation::Energies :request) roboy_communication_simulation::EnergiesRequest)
(setf (get roboy_communication_simulation::Energies :response) roboy_communication_simulation::EnergiesResponse)

(defmethod roboy_communication_simulation::EnergiesRequest
  (:response () (instance roboy_communication_simulation::EnergiesResponse :init)))

(setf (get roboy_communication_simulation::EnergiesRequest :md5sum-) "3a6c57e829cf6beb9c3918f4ad1ffcad")
(setf (get roboy_communication_simulation::EnergiesRequest :datatype-) "roboy_communication_simulation/EnergiesRequest")
(setf (get roboy_communication_simulation::EnergiesRequest :definition-)
      "---
float64 E_speed
float64 E_headvel
float64 E_headori
float64 E_slide
float64 E_effort
")

(setf (get roboy_communication_simulation::EnergiesResponse :md5sum-) "3a6c57e829cf6beb9c3918f4ad1ffcad")
(setf (get roboy_communication_simulation::EnergiesResponse :datatype-) "roboy_communication_simulation/EnergiesResponse")
(setf (get roboy_communication_simulation::EnergiesResponse :definition-)
      "---
float64 E_speed
float64 E_headvel
float64 E_headori
float64 E_slide
float64 E_effort
")



(provide :roboy_communication_simulation/Energies "3a6c57e829cf6beb9c3918f4ad1ffcad")


