
(cl:in-package :asdf)

(defsystem "paquete_practica1-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "FloatPose" :depends-on ("_package_FloatPose"))
    (:file "_package_FloatPose" :depends-on ("_package"))
  ))