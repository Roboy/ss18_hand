
(cl:in-package :asdf)

(defsystem "roboy_communication_control-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ListItems" :depends-on ("_package_ListItems"))
    (:file "_package_ListItems" :depends-on ("_package"))
    (:file "MoveYaw" :depends-on ("_package_MoveYaw"))
    (:file "_package_MoveYaw" :depends-on ("_package"))
    (:file "PerformActions" :depends-on ("_package_PerformActions"))
    (:file "_package_PerformActions" :depends-on ("_package"))
    (:file "PerformBehavior" :depends-on ("_package_PerformBehavior"))
    (:file "_package_PerformBehavior" :depends-on ("_package"))
    (:file "SetMode" :depends-on ("_package_SetMode"))
    (:file "_package_SetMode" :depends-on ("_package"))
    (:file "ShowEmotion" :depends-on ("_package_ShowEmotion"))
    (:file "_package_ShowEmotion" :depends-on ("_package"))
  ))