
(cl:in-package :asdf)

(defsystem "traversal-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "WheelRpm" :depends-on ("_package_WheelRpm"))
    (:file "_package_WheelRpm" :depends-on ("_package"))
  ))