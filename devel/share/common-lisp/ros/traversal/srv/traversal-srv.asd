
(cl:in-package :asdf)

(defsystem "traversal-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "move" :depends-on ("_package_move"))
    (:file "_package_move" :depends-on ("_package"))
    (:file "rotate" :depends-on ("_package_rotate"))
    (:file "_package_rotate" :depends-on ("_package"))
    (:file "user_input" :depends-on ("_package_user_input"))
    (:file "_package_user_input" :depends-on ("_package"))
  ))