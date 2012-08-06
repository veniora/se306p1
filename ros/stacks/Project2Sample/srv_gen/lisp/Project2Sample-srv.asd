
(cl:in-package :asdf)

(defsystem "Project2Sample-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "returnPosition" :depends-on ("_package_returnPosition"))
    (:file "_package_returnPosition" :depends-on ("_package"))
  ))