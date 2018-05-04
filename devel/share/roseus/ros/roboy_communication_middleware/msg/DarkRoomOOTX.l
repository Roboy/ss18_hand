;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_middleware::DarkRoomOOTX)
  (if (not (find-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
    (make-package "ROBOY_COMMUNICATION_MIDDLEWARE"))
  (shadow 'DarkRoomOOTX (find-package "ROBOY_COMMUNICATION_MIDDLEWARE")))
(unless (find-package "ROBOY_COMMUNICATION_MIDDLEWARE::DARKROOMOOTX")
  (make-package "ROBOY_COMMUNICATION_MIDDLEWARE::DARKROOMOOTX"))

(in-package "ROS")
;;//! \htmlinclude DarkRoomOOTX.msg.html


(defclass roboy_communication_middleware::DarkRoomOOTX
  :super ros::object
  :slots (_lighthouse _fw_version _ID _fcal_0_phase _fcal_1_phase _fcal_0_tilt _fcal_1_tilt _unlock_count _hw_version _fcal_0_curve _fcal_1_curve _accel_dir_x _accel_dir_y _accel_dir_z _fcal_0_gibphase _fcal_1_gibphase _fcal_0_gibmag _fcal_1_gibmag _mode _faults _crc32 ))

(defmethod roboy_communication_middleware::DarkRoomOOTX
  (:init
   (&key
    ((:lighthouse __lighthouse) 0)
    ((:fw_version __fw_version) 0)
    ((:ID __ID) 0)
    ((:fcal_0_phase __fcal_0_phase) 0.0)
    ((:fcal_1_phase __fcal_1_phase) 0.0)
    ((:fcal_0_tilt __fcal_0_tilt) 0.0)
    ((:fcal_1_tilt __fcal_1_tilt) 0.0)
    ((:unlock_count __unlock_count) 0)
    ((:hw_version __hw_version) 0)
    ((:fcal_0_curve __fcal_0_curve) 0.0)
    ((:fcal_1_curve __fcal_1_curve) 0.0)
    ((:accel_dir_x __accel_dir_x) 0.0)
    ((:accel_dir_y __accel_dir_y) 0.0)
    ((:accel_dir_z __accel_dir_z) 0.0)
    ((:fcal_0_gibphase __fcal_0_gibphase) 0.0)
    ((:fcal_1_gibphase __fcal_1_gibphase) 0.0)
    ((:fcal_0_gibmag __fcal_0_gibmag) 0.0)
    ((:fcal_1_gibmag __fcal_1_gibmag) 0.0)
    ((:mode __mode) 0)
    ((:faults __faults) 0)
    ((:crc32 __crc32) 0)
    )
   (send-super :init)
   (setq _lighthouse (round __lighthouse))
   (setq _fw_version (round __fw_version))
   (setq _ID (round __ID))
   (setq _fcal_0_phase (float __fcal_0_phase))
   (setq _fcal_1_phase (float __fcal_1_phase))
   (setq _fcal_0_tilt (float __fcal_0_tilt))
   (setq _fcal_1_tilt (float __fcal_1_tilt))
   (setq _unlock_count (round __unlock_count))
   (setq _hw_version (round __hw_version))
   (setq _fcal_0_curve (float __fcal_0_curve))
   (setq _fcal_1_curve (float __fcal_1_curve))
   (setq _accel_dir_x (float __accel_dir_x))
   (setq _accel_dir_y (float __accel_dir_y))
   (setq _accel_dir_z (float __accel_dir_z))
   (setq _fcal_0_gibphase (float __fcal_0_gibphase))
   (setq _fcal_1_gibphase (float __fcal_1_gibphase))
   (setq _fcal_0_gibmag (float __fcal_0_gibmag))
   (setq _fcal_1_gibmag (float __fcal_1_gibmag))
   (setq _mode (round __mode))
   (setq _faults (round __faults))
   (setq _crc32 (round __crc32))
   self)
  (:lighthouse
   (&optional __lighthouse)
   (if __lighthouse (setq _lighthouse __lighthouse)) _lighthouse)
  (:fw_version
   (&optional __fw_version)
   (if __fw_version (setq _fw_version __fw_version)) _fw_version)
  (:ID
   (&optional __ID)
   (if __ID (setq _ID __ID)) _ID)
  (:fcal_0_phase
   (&optional __fcal_0_phase)
   (if __fcal_0_phase (setq _fcal_0_phase __fcal_0_phase)) _fcal_0_phase)
  (:fcal_1_phase
   (&optional __fcal_1_phase)
   (if __fcal_1_phase (setq _fcal_1_phase __fcal_1_phase)) _fcal_1_phase)
  (:fcal_0_tilt
   (&optional __fcal_0_tilt)
   (if __fcal_0_tilt (setq _fcal_0_tilt __fcal_0_tilt)) _fcal_0_tilt)
  (:fcal_1_tilt
   (&optional __fcal_1_tilt)
   (if __fcal_1_tilt (setq _fcal_1_tilt __fcal_1_tilt)) _fcal_1_tilt)
  (:unlock_count
   (&optional __unlock_count)
   (if __unlock_count (setq _unlock_count __unlock_count)) _unlock_count)
  (:hw_version
   (&optional __hw_version)
   (if __hw_version (setq _hw_version __hw_version)) _hw_version)
  (:fcal_0_curve
   (&optional __fcal_0_curve)
   (if __fcal_0_curve (setq _fcal_0_curve __fcal_0_curve)) _fcal_0_curve)
  (:fcal_1_curve
   (&optional __fcal_1_curve)
   (if __fcal_1_curve (setq _fcal_1_curve __fcal_1_curve)) _fcal_1_curve)
  (:accel_dir_x
   (&optional __accel_dir_x)
   (if __accel_dir_x (setq _accel_dir_x __accel_dir_x)) _accel_dir_x)
  (:accel_dir_y
   (&optional __accel_dir_y)
   (if __accel_dir_y (setq _accel_dir_y __accel_dir_y)) _accel_dir_y)
  (:accel_dir_z
   (&optional __accel_dir_z)
   (if __accel_dir_z (setq _accel_dir_z __accel_dir_z)) _accel_dir_z)
  (:fcal_0_gibphase
   (&optional __fcal_0_gibphase)
   (if __fcal_0_gibphase (setq _fcal_0_gibphase __fcal_0_gibphase)) _fcal_0_gibphase)
  (:fcal_1_gibphase
   (&optional __fcal_1_gibphase)
   (if __fcal_1_gibphase (setq _fcal_1_gibphase __fcal_1_gibphase)) _fcal_1_gibphase)
  (:fcal_0_gibmag
   (&optional __fcal_0_gibmag)
   (if __fcal_0_gibmag (setq _fcal_0_gibmag __fcal_0_gibmag)) _fcal_0_gibmag)
  (:fcal_1_gibmag
   (&optional __fcal_1_gibmag)
   (if __fcal_1_gibmag (setq _fcal_1_gibmag __fcal_1_gibmag)) _fcal_1_gibmag)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:faults
   (&optional __faults)
   (if __faults (setq _faults __faults)) _faults)
  (:crc32
   (&optional __crc32)
   (if __crc32 (setq _crc32 __crc32)) _crc32)
  (:serialization-length
   ()
   (+
    ;; int32 _lighthouse
    4
    ;; uint16 _fw_version
    2
    ;; uint32 _ID
    4
    ;; float32 _fcal_0_phase
    4
    ;; float32 _fcal_1_phase
    4
    ;; float32 _fcal_0_tilt
    4
    ;; float32 _fcal_1_tilt
    4
    ;; uint8 _unlock_count
    1
    ;; uint8 _hw_version
    1
    ;; float32 _fcal_0_curve
    4
    ;; float32 _fcal_1_curve
    4
    ;; float32 _accel_dir_x
    4
    ;; float32 _accel_dir_y
    4
    ;; float32 _accel_dir_z
    4
    ;; float32 _fcal_0_gibphase
    4
    ;; float32 _fcal_1_gibphase
    4
    ;; float32 _fcal_0_gibmag
    4
    ;; float32 _fcal_1_gibmag
    4
    ;; uint8 _mode
    1
    ;; uint8 _faults
    1
    ;; uint32 _crc32
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _lighthouse
       (write-long _lighthouse s)
     ;; uint16 _fw_version
       (write-word _fw_version s)
     ;; uint32 _ID
       (write-long _ID s)
     ;; float32 _fcal_0_phase
       (sys::poke _fcal_0_phase (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _fcal_1_phase
       (sys::poke _fcal_1_phase (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _fcal_0_tilt
       (sys::poke _fcal_0_tilt (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _fcal_1_tilt
       (sys::poke _fcal_1_tilt (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _unlock_count
       (write-byte _unlock_count s)
     ;; uint8 _hw_version
       (write-byte _hw_version s)
     ;; float32 _fcal_0_curve
       (sys::poke _fcal_0_curve (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _fcal_1_curve
       (sys::poke _fcal_1_curve (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _accel_dir_x
       (sys::poke _accel_dir_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _accel_dir_y
       (sys::poke _accel_dir_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _accel_dir_z
       (sys::poke _accel_dir_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _fcal_0_gibphase
       (sys::poke _fcal_0_gibphase (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _fcal_1_gibphase
       (sys::poke _fcal_1_gibphase (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _fcal_0_gibmag
       (sys::poke _fcal_0_gibmag (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _fcal_1_gibmag
       (sys::poke _fcal_1_gibmag (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _mode
       (write-byte _mode s)
     ;; uint8 _faults
       (write-byte _faults s)
     ;; uint32 _crc32
       (write-long _crc32 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _lighthouse
     (setq _lighthouse (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _fw_version
     (setq _fw_version (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint32 _ID
     (setq _ID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _fcal_0_phase
     (setq _fcal_0_phase (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _fcal_1_phase
     (setq _fcal_1_phase (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _fcal_0_tilt
     (setq _fcal_0_tilt (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _fcal_1_tilt
     (setq _fcal_1_tilt (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _unlock_count
     (setq _unlock_count (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _hw_version
     (setq _hw_version (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _fcal_0_curve
     (setq _fcal_0_curve (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _fcal_1_curve
     (setq _fcal_1_curve (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _accel_dir_x
     (setq _accel_dir_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _accel_dir_y
     (setq _accel_dir_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _accel_dir_z
     (setq _accel_dir_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _fcal_0_gibphase
     (setq _fcal_0_gibphase (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _fcal_1_gibphase
     (setq _fcal_1_gibphase (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _fcal_0_gibmag
     (setq _fcal_0_gibmag (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _fcal_1_gibmag
     (setq _fcal_1_gibmag (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _faults
     (setq _faults (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _crc32
     (setq _crc32 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get roboy_communication_middleware::DarkRoomOOTX :md5sum-) "6375d27b5383e96f6ed61b6d30596a00")
(setf (get roboy_communication_middleware::DarkRoomOOTX :datatype-) "roboy_communication_middleware/DarkRoomOOTX")
(setf (get roboy_communication_middleware::DarkRoomOOTX :definition-)
      "int32 lighthouse
uint16 fw_version
uint32 ID
float32 fcal_0_phase
float32 fcal_1_phase
float32 fcal_0_tilt
float32 fcal_1_tilt
uint8 unlock_count
uint8 hw_version
float32 fcal_0_curve
float32 fcal_1_curve
float32 accel_dir_x
float32 accel_dir_y
float32 accel_dir_z
float32 fcal_0_gibphase
float32 fcal_1_gibphase
float32 fcal_0_gibmag
float32 fcal_1_gibmag
uint8 mode
uint8 faults
uint32 crc32
")



(provide :roboy_communication_middleware/DarkRoomOOTX "6375d27b5383e96f6ed61b6d30596a00")


