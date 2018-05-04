;; Auto-generated. Do not edit!


(when (boundp 'roboy_communication_control::ListItems)
  (if (not (find-package "ROBOY_COMMUNICATION_CONTROL"))
    (make-package "ROBOY_COMMUNICATION_CONTROL"))
  (shadow 'ListItems (find-package "ROBOY_COMMUNICATION_CONTROL")))
(unless (find-package "ROBOY_COMMUNICATION_CONTROL::LISTITEMS")
  (make-package "ROBOY_COMMUNICATION_CONTROL::LISTITEMS"))
(unless (find-package "ROBOY_COMMUNICATION_CONTROL::LISTITEMSREQUEST")
  (make-package "ROBOY_COMMUNICATION_CONTROL::LISTITEMSREQUEST"))
(unless (find-package "ROBOY_COMMUNICATION_CONTROL::LISTITEMSRESPONSE")
  (make-package "ROBOY_COMMUNICATION_CONTROL::LISTITEMSRESPONSE"))

(in-package "ROS")





(defclass roboy_communication_control::ListItemsRequest
  :super ros::object
  :slots (_name ))

(defmethod roboy_communication_control::ListItemsRequest
  (:init
   (&key
    ((:name __name) "")
    )
   (send-super :init)
   (setq _name (string __name))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass roboy_communication_control::ListItemsResponse
  :super ros::object
  :slots (_items ))

(defmethod roboy_communication_control::ListItemsResponse
  (:init
   (&key
    ((:items __items) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _items __items)
   self)
  (:items
   (&optional __items)
   (if __items (setq _items __items)) _items)
  (:serialization-length
   ()
   (+
    ;; string[] _items
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _items)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _items
     (write-long (length _items) s)
     (dolist (elem _items)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _items
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _items (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _items i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass roboy_communication_control::ListItems
  :super ros::object
  :slots ())

(setf (get roboy_communication_control::ListItems :md5sum-) "f59feb99c2158f8692d1c10f10534d0b")
(setf (get roboy_communication_control::ListItems :datatype-) "roboy_communication_control/ListItems")
(setf (get roboy_communication_control::ListItems :request) roboy_communication_control::ListItemsRequest)
(setf (get roboy_communication_control::ListItems :response) roboy_communication_control::ListItemsResponse)

(defmethod roboy_communication_control::ListItemsRequest
  (:response () (instance roboy_communication_control::ListItemsResponse :init)))

(setf (get roboy_communication_control::ListItemsRequest :md5sum-) "f59feb99c2158f8692d1c10f10534d0b")
(setf (get roboy_communication_control::ListItemsRequest :datatype-) "roboy_communication_control/ListItemsRequest")
(setf (get roboy_communication_control::ListItemsRequest :definition-)
      "string name
---
string[] items
")

(setf (get roboy_communication_control::ListItemsResponse :md5sum-) "f59feb99c2158f8692d1c10f10534d0b")
(setf (get roboy_communication_control::ListItemsResponse :datatype-) "roboy_communication_control/ListItemsResponse")
(setf (get roboy_communication_control::ListItemsResponse :definition-)
      "string name
---
string[] items
")



(provide :roboy_communication_control/ListItems "f59feb99c2158f8692d1c10f10534d0b")


