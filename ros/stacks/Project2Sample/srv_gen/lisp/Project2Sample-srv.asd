
(cl:in-package :asdf)

(defsystem "Project2Sample-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ClosestDistance" :depends-on ("_package_ClosestDistance"))
    (:file "_package_ClosestDistance" :depends-on ("_package"))
  ))