
(cl:in-package :asdf)

(defsystem "practica_1-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "Floor" :depends-on ("_package_Floor"))
    (:file "_package_Floor" :depends-on ("_package"))
  ))