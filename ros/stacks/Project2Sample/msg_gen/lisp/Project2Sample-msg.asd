
(cl:in-package :asdf)

(defsystem "Project2Sample-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "VelocityInstructions" :depends-on ("_package_VelocityInstructions"))
    (:file "_package_VelocityInstructions" :depends-on ("_package"))
    (:file "R_ID" :depends-on ("_package_R_ID"))
    (:file "_package_R_ID" :depends-on ("_package"))
    (:file "R_ID_Follow" :depends-on ("_package_R_ID_Follow"))
    (:file "_package_R_ID_Follow" :depends-on ("_package"))
    (:file "Rotation" :depends-on ("_package_Rotation"))
    (:file "_package_Rotation" :depends-on ("_package"))
  ))