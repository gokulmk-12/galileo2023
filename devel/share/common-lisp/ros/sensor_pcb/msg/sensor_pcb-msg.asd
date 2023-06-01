
(cl:in-package :asdf)

(defsystem "sensor_pcb-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "sense" :depends-on ("_package_sense"))
    (:file "_package_sense" :depends-on ("_package"))
  ))