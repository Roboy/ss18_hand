
(cl:in-package :asdf)

(defsystem "roboy_communication_simulation-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :roboy_communication_simulation-msg
)
  :components ((:file "_package")
    (:file "Energies" :depends-on ("_package_Energies"))
    (:file "_package_Energies" :depends-on ("_package"))
    (:file "UpdateControllerParameters" :depends-on ("_package_UpdateControllerParameters"))
    (:file "_package_UpdateControllerParameters" :depends-on ("_package"))
  ))