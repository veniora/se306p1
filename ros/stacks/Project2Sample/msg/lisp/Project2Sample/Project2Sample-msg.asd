
(in-package :asdf)

(defsystem "Project2Sample-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils)
  :components ((:file "_package")
    (:file "R_ID" :depends-on ("_package"))
    (:file "_package_R_ID" :depends-on ("_package"))
    ))
