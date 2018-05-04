;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_simulation::ControllerParameters)
  (if (not (find-package "ROBOY_COMMUNICATION_SIMULATION"))
    (make-package "ROBOY_COMMUNICATION_SIMULATION"))
  (shadow 'ControllerParameters (find-package "ROBOY_COMMUNICATION_SIMULATION")))
(unless (find-package "ROBOY_COMMUNICATION_SIMULATION::CONTROLLERPARAMETERS")
  (make-package "ROBOY_COMMUNICATION_SIMULATION::CONTROLLERPARAMETERS"))

(in-package "ROS")
;;//! \htmlinclude ControllerParameters.msg.html


(defclass roboy_communication_simulation::ControllerParameters
  :super ros::object
  :slots (_roboyID _F_contact _d_lift _d_prep _F_max _psi_heading _omega_heading _v_forward _v_COM _k_v _k_h _k_p_theta_left _k_p_theta_right _k_d_theta_left _k_d_theta_right _k_p_phi _k_d_phi _k_V _k_P _k_Q _k_omega _k_M_Fplus _c_hip_lift _c_knee_lift _c_stance_lift _c_swing_prep _theta_groin_0 _phi_groin_0 _theta_trunk_0 _phi_trunk_0 _theta_knee _theta_ankle _d_s _d_c _v_s _v_c _sim_time ))

(defmethod roboy_communication_simulation::ControllerParameters
  (:init
   (&key
    ((:roboyID __roboyID) 0)
    ((:F_contact __F_contact) 0.0)
    ((:d_lift __d_lift) 0.0)
    ((:d_prep __d_prep) 0.0)
    ((:F_max __F_max) 0.0)
    ((:psi_heading __psi_heading) 0.0)
    ((:omega_heading __omega_heading) 0.0)
    ((:v_forward __v_forward) 0.0)
    ((:v_COM __v_COM) 0.0)
    ((:k_v __k_v) 0.0)
    ((:k_h __k_h) 0.0)
    ((:k_p_theta_left __k_p_theta_left) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:k_p_theta_right __k_p_theta_right) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:k_d_theta_left __k_d_theta_left) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:k_d_theta_right __k_d_theta_right) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:k_p_phi __k_p_phi) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:k_d_phi __k_d_phi) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:k_V __k_V) 0.0)
    ((:k_P __k_P) 0.0)
    ((:k_Q __k_Q) 0.0)
    ((:k_omega __k_omega) 0.0)
    ((:k_M_Fplus __k_M_Fplus) 0.0)
    ((:c_hip_lift __c_hip_lift) 0.0)
    ((:c_knee_lift __c_knee_lift) 0.0)
    ((:c_stance_lift __c_stance_lift) 0.0)
    ((:c_swing_prep __c_swing_prep) 0.0)
    ((:theta_groin_0 __theta_groin_0) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:phi_groin_0 __phi_groin_0) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:theta_trunk_0 __theta_trunk_0) 0.0)
    ((:phi_trunk_0 __phi_trunk_0) 0.0)
    ((:theta_knee __theta_knee) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:theta_ankle __theta_ankle) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:d_s __d_s) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:d_c __d_c) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:v_s __v_s) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:v_c __v_c) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:sim_time __sim_time) 0.0)
    )
   (send-super :init)
   (setq _roboyID (round __roboyID))
   (setq _F_contact (float __F_contact))
   (setq _d_lift (float __d_lift))
   (setq _d_prep (float __d_prep))
   (setq _F_max (float __F_max))
   (setq _psi_heading (float __psi_heading))
   (setq _omega_heading (float __omega_heading))
   (setq _v_forward (float __v_forward))
   (setq _v_COM (float __v_COM))
   (setq _k_v (float __k_v))
   (setq _k_h (float __k_h))
   (setq _k_p_theta_left __k_p_theta_left)
   (setq _k_p_theta_right __k_p_theta_right)
   (setq _k_d_theta_left __k_d_theta_left)
   (setq _k_d_theta_right __k_d_theta_right)
   (setq _k_p_phi __k_p_phi)
   (setq _k_d_phi __k_d_phi)
   (setq _k_V (float __k_V))
   (setq _k_P (float __k_P))
   (setq _k_Q (float __k_Q))
   (setq _k_omega (float __k_omega))
   (setq _k_M_Fplus (float __k_M_Fplus))
   (setq _c_hip_lift (float __c_hip_lift))
   (setq _c_knee_lift (float __c_knee_lift))
   (setq _c_stance_lift (float __c_stance_lift))
   (setq _c_swing_prep (float __c_swing_prep))
   (setq _theta_groin_0 __theta_groin_0)
   (setq _phi_groin_0 __phi_groin_0)
   (setq _theta_trunk_0 (float __theta_trunk_0))
   (setq _phi_trunk_0 (float __phi_trunk_0))
   (setq _theta_knee __theta_knee)
   (setq _theta_ankle __theta_ankle)
   (setq _d_s __d_s)
   (setq _d_c __d_c)
   (setq _v_s __v_s)
   (setq _v_c __v_c)
   (setq _sim_time (float __sim_time))
   self)
  (:roboyID
   (&optional __roboyID)
   (if __roboyID (setq _roboyID __roboyID)) _roboyID)
  (:F_contact
   (&optional __F_contact)
   (if __F_contact (setq _F_contact __F_contact)) _F_contact)
  (:d_lift
   (&optional __d_lift)
   (if __d_lift (setq _d_lift __d_lift)) _d_lift)
  (:d_prep
   (&optional __d_prep)
   (if __d_prep (setq _d_prep __d_prep)) _d_prep)
  (:F_max
   (&optional __F_max)
   (if __F_max (setq _F_max __F_max)) _F_max)
  (:psi_heading
   (&optional __psi_heading)
   (if __psi_heading (setq _psi_heading __psi_heading)) _psi_heading)
  (:omega_heading
   (&optional __omega_heading)
   (if __omega_heading (setq _omega_heading __omega_heading)) _omega_heading)
  (:v_forward
   (&optional __v_forward)
   (if __v_forward (setq _v_forward __v_forward)) _v_forward)
  (:v_COM
   (&optional __v_COM)
   (if __v_COM (setq _v_COM __v_COM)) _v_COM)
  (:k_v
   (&optional __k_v)
   (if __k_v (setq _k_v __k_v)) _k_v)
  (:k_h
   (&optional __k_h)
   (if __k_h (setq _k_h __k_h)) _k_h)
  (:k_p_theta_left
   (&optional __k_p_theta_left)
   (if __k_p_theta_left (setq _k_p_theta_left __k_p_theta_left)) _k_p_theta_left)
  (:k_p_theta_right
   (&optional __k_p_theta_right)
   (if __k_p_theta_right (setq _k_p_theta_right __k_p_theta_right)) _k_p_theta_right)
  (:k_d_theta_left
   (&optional __k_d_theta_left)
   (if __k_d_theta_left (setq _k_d_theta_left __k_d_theta_left)) _k_d_theta_left)
  (:k_d_theta_right
   (&optional __k_d_theta_right)
   (if __k_d_theta_right (setq _k_d_theta_right __k_d_theta_right)) _k_d_theta_right)
  (:k_p_phi
   (&optional __k_p_phi)
   (if __k_p_phi (setq _k_p_phi __k_p_phi)) _k_p_phi)
  (:k_d_phi
   (&optional __k_d_phi)
   (if __k_d_phi (setq _k_d_phi __k_d_phi)) _k_d_phi)
  (:k_V
   (&optional __k_V)
   (if __k_V (setq _k_V __k_V)) _k_V)
  (:k_P
   (&optional __k_P)
   (if __k_P (setq _k_P __k_P)) _k_P)
  (:k_Q
   (&optional __k_Q)
   (if __k_Q (setq _k_Q __k_Q)) _k_Q)
  (:k_omega
   (&optional __k_omega)
   (if __k_omega (setq _k_omega __k_omega)) _k_omega)
  (:k_M_Fplus
   (&optional __k_M_Fplus)
   (if __k_M_Fplus (setq _k_M_Fplus __k_M_Fplus)) _k_M_Fplus)
  (:c_hip_lift
   (&optional __c_hip_lift)
   (if __c_hip_lift (setq _c_hip_lift __c_hip_lift)) _c_hip_lift)
  (:c_knee_lift
   (&optional __c_knee_lift)
   (if __c_knee_lift (setq _c_knee_lift __c_knee_lift)) _c_knee_lift)
  (:c_stance_lift
   (&optional __c_stance_lift)
   (if __c_stance_lift (setq _c_stance_lift __c_stance_lift)) _c_stance_lift)
  (:c_swing_prep
   (&optional __c_swing_prep)
   (if __c_swing_prep (setq _c_swing_prep __c_swing_prep)) _c_swing_prep)
  (:theta_groin_0
   (&optional __theta_groin_0)
   (if __theta_groin_0 (setq _theta_groin_0 __theta_groin_0)) _theta_groin_0)
  (:phi_groin_0
   (&optional __phi_groin_0)
   (if __phi_groin_0 (setq _phi_groin_0 __phi_groin_0)) _phi_groin_0)
  (:theta_trunk_0
   (&optional __theta_trunk_0)
   (if __theta_trunk_0 (setq _theta_trunk_0 __theta_trunk_0)) _theta_trunk_0)
  (:phi_trunk_0
   (&optional __phi_trunk_0)
   (if __phi_trunk_0 (setq _phi_trunk_0 __phi_trunk_0)) _phi_trunk_0)
  (:theta_knee
   (&optional __theta_knee)
   (if __theta_knee (setq _theta_knee __theta_knee)) _theta_knee)
  (:theta_ankle
   (&optional __theta_ankle)
   (if __theta_ankle (setq _theta_ankle __theta_ankle)) _theta_ankle)
  (:d_s
   (&optional __d_s)
   (if __d_s (setq _d_s __d_s)) _d_s)
  (:d_c
   (&optional __d_c)
   (if __d_c (setq _d_c __d_c)) _d_c)
  (:v_s
   (&optional __v_s)
   (if __v_s (setq _v_s __v_s)) _v_s)
  (:v_c
   (&optional __v_c)
   (if __v_c (setq _v_c __v_c)) _v_c)
  (:sim_time
   (&optional __sim_time)
   (if __sim_time (setq _sim_time __sim_time)) _sim_time)
  (:serialization-length
   ()
   (+
    ;; int32 _roboyID
    4
    ;; float64 _F_contact
    8
    ;; float64 _d_lift
    8
    ;; float64 _d_prep
    8
    ;; float64 _F_max
    8
    ;; float64 _psi_heading
    8
    ;; float64 _omega_heading
    8
    ;; float64 _v_forward
    8
    ;; float64 _v_COM
    8
    ;; float64 _k_v
    8
    ;; float64 _k_h
    8
    ;; float64[] _k_p_theta_left
    (* 8    (length _k_p_theta_left)) 4
    ;; float64[] _k_p_theta_right
    (* 8    (length _k_p_theta_right)) 4
    ;; float64[] _k_d_theta_left
    (* 8    (length _k_d_theta_left)) 4
    ;; float64[] _k_d_theta_right
    (* 8    (length _k_d_theta_right)) 4
    ;; float64[] _k_p_phi
    (* 8    (length _k_p_phi)) 4
    ;; float64[] _k_d_phi
    (* 8    (length _k_d_phi)) 4
    ;; float64 _k_V
    8
    ;; float64 _k_P
    8
    ;; float64 _k_Q
    8
    ;; float64 _k_omega
    8
    ;; float64 _k_M_Fplus
    8
    ;; float64 _c_hip_lift
    8
    ;; float64 _c_knee_lift
    8
    ;; float64 _c_stance_lift
    8
    ;; float64 _c_swing_prep
    8
    ;; float64[] _theta_groin_0
    (* 8    (length _theta_groin_0)) 4
    ;; float64[] _phi_groin_0
    (* 8    (length _phi_groin_0)) 4
    ;; float64 _theta_trunk_0
    8
    ;; float64 _phi_trunk_0
    8
    ;; float64[] _theta_knee
    (* 8    (length _theta_knee)) 4
    ;; float64[] _theta_ankle
    (* 8    (length _theta_ankle)) 4
    ;; float64[] _d_s
    (* 8    (length _d_s)) 4
    ;; float64[] _d_c
    (* 8    (length _d_c)) 4
    ;; float64[] _v_s
    (* 8    (length _v_s)) 4
    ;; float64[] _v_c
    (* 8    (length _v_c)) 4
    ;; float32 _sim_time
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _roboyID
       (write-long _roboyID s)
     ;; float64 _F_contact
       (sys::poke _F_contact (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _d_lift
       (sys::poke _d_lift (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _d_prep
       (sys::poke _d_prep (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _F_max
       (sys::poke _F_max (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _psi_heading
       (sys::poke _psi_heading (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _omega_heading
       (sys::poke _omega_heading (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _v_forward
       (sys::poke _v_forward (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _v_COM
       (sys::poke _v_COM (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _k_v
       (sys::poke _k_v (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _k_h
       (sys::poke _k_h (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[] _k_p_theta_left
     (write-long (length _k_p_theta_left) s)
     (dotimes (i (length _k_p_theta_left))
       (sys::poke (elt _k_p_theta_left i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _k_p_theta_right
     (write-long (length _k_p_theta_right) s)
     (dotimes (i (length _k_p_theta_right))
       (sys::poke (elt _k_p_theta_right i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _k_d_theta_left
     (write-long (length _k_d_theta_left) s)
     (dotimes (i (length _k_d_theta_left))
       (sys::poke (elt _k_d_theta_left i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _k_d_theta_right
     (write-long (length _k_d_theta_right) s)
     (dotimes (i (length _k_d_theta_right))
       (sys::poke (elt _k_d_theta_right i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _k_p_phi
     (write-long (length _k_p_phi) s)
     (dotimes (i (length _k_p_phi))
       (sys::poke (elt _k_p_phi i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _k_d_phi
     (write-long (length _k_d_phi) s)
     (dotimes (i (length _k_d_phi))
       (sys::poke (elt _k_d_phi i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _k_V
       (sys::poke _k_V (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _k_P
       (sys::poke _k_P (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _k_Q
       (sys::poke _k_Q (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _k_omega
       (sys::poke _k_omega (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _k_M_Fplus
       (sys::poke _k_M_Fplus (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _c_hip_lift
       (sys::poke _c_hip_lift (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _c_knee_lift
       (sys::poke _c_knee_lift (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _c_stance_lift
       (sys::poke _c_stance_lift (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _c_swing_prep
       (sys::poke _c_swing_prep (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[] _theta_groin_0
     (write-long (length _theta_groin_0) s)
     (dotimes (i (length _theta_groin_0))
       (sys::poke (elt _theta_groin_0 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _phi_groin_0
     (write-long (length _phi_groin_0) s)
     (dotimes (i (length _phi_groin_0))
       (sys::poke (elt _phi_groin_0 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _theta_trunk_0
       (sys::poke _theta_trunk_0 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _phi_trunk_0
       (sys::poke _phi_trunk_0 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[] _theta_knee
     (write-long (length _theta_knee) s)
     (dotimes (i (length _theta_knee))
       (sys::poke (elt _theta_knee i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _theta_ankle
     (write-long (length _theta_ankle) s)
     (dotimes (i (length _theta_ankle))
       (sys::poke (elt _theta_ankle i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _d_s
     (write-long (length _d_s) s)
     (dotimes (i (length _d_s))
       (sys::poke (elt _d_s i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _d_c
     (write-long (length _d_c) s)
     (dotimes (i (length _d_c))
       (sys::poke (elt _d_c i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _v_s
     (write-long (length _v_s) s)
     (dotimes (i (length _v_s))
       (sys::poke (elt _v_s i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _v_c
     (write-long (length _v_c) s)
     (dotimes (i (length _v_c))
       (sys::poke (elt _v_c i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float32 _sim_time
       (sys::poke _sim_time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _roboyID
     (setq _roboyID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _F_contact
     (setq _F_contact (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _d_lift
     (setq _d_lift (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _d_prep
     (setq _d_prep (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _F_max
     (setq _F_max (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _psi_heading
     (setq _psi_heading (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _omega_heading
     (setq _omega_heading (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _v_forward
     (setq _v_forward (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _v_COM
     (setq _v_COM (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _k_v
     (setq _k_v (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _k_h
     (setq _k_h (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[] _k_p_theta_left
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _k_p_theta_left (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _k_p_theta_left i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _k_p_theta_right
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _k_p_theta_right (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _k_p_theta_right i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _k_d_theta_left
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _k_d_theta_left (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _k_d_theta_left i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _k_d_theta_right
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _k_d_theta_right (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _k_d_theta_right i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _k_p_phi
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _k_p_phi (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _k_p_phi i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _k_d_phi
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _k_d_phi (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _k_d_phi i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64 _k_V
     (setq _k_V (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _k_P
     (setq _k_P (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _k_Q
     (setq _k_Q (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _k_omega
     (setq _k_omega (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _k_M_Fplus
     (setq _k_M_Fplus (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _c_hip_lift
     (setq _c_hip_lift (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _c_knee_lift
     (setq _c_knee_lift (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _c_stance_lift
     (setq _c_stance_lift (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _c_swing_prep
     (setq _c_swing_prep (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[] _theta_groin_0
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _theta_groin_0 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _theta_groin_0 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _phi_groin_0
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _phi_groin_0 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _phi_groin_0 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64 _theta_trunk_0
     (setq _theta_trunk_0 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _phi_trunk_0
     (setq _phi_trunk_0 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[] _theta_knee
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _theta_knee (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _theta_knee i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _theta_ankle
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _theta_ankle (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _theta_ankle i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _d_s
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _d_s (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _d_s i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _d_c
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _d_c (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _d_c i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _v_s
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _v_s (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _v_s i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _v_c
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _v_c (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _v_c i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float32 _sim_time
     (setq _sim_time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get roboy_communication_simulation::ControllerParameters :md5sum-) "8d876cb1f4a80d09d45e86f5cbdeda08")
(setf (get roboy_communication_simulation::ControllerParameters :datatype-) "roboy_communication_simulation/ControllerParameters")
(setf (get roboy_communication_simulation::ControllerParameters :definition-)
      "int32 roboyID
float64 F_contact
float64 d_lift
float64 d_prep
float64 F_max
float64 psi_heading
float64 omega_heading
float64 v_forward
float64 v_COM
float64 k_v
float64 k_h
float64[] k_p_theta_left
float64[] k_p_theta_right
float64[] k_d_theta_left
float64[] k_d_theta_right
float64[] k_p_phi
float64[] k_d_phi
float64 k_V
float64 k_P
float64 k_Q
float64 k_omega
float64 k_M_Fplus
float64 c_hip_lift
float64 c_knee_lift
float64 c_stance_lift
float64 c_swing_prep
float64[] theta_groin_0
float64[] phi_groin_0
float64 theta_trunk_0
float64 phi_trunk_0
float64[] theta_knee
float64[] theta_ankle
float64[] d_s
float64[] d_c
float64[] v_s
float64[] v_c
float32 sim_time
")



(provide :roboy_communication_simulation/ControllerParameters "8d876cb1f4a80d09d45e86f5cbdeda08")


