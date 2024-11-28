;; Auto-generated. Do not edit!


(when (boundp 'paquete_practica1::FloatPose)
  (if (not (find-package "PAQUETE_PRACTICA1"))
    (make-package "PAQUETE_PRACTICA1"))
  (shadow 'FloatPose (find-package "PAQUETE_PRACTICA1")))
(unless (find-package "PAQUETE_PRACTICA1::FLOATPOSE")
  (make-package "PAQUETE_PRACTICA1::FLOATPOSE"))

(in-package "ROS")
;;//! \htmlinclude FloatPose.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass paquete_practica1::FloatPose
  :super ros::object
  :slots (_pose _value ))

(defmethod paquete_practica1::FloatPose
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:value __value) (instance std_msgs::Float32 :init))
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _value __value)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:value
   (&rest __value)
   (if (keywordp (car __value))
       (send* _value __value)
     (progn
       (if __value (setq _value (car __value)))
       _value)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; std_msgs/Float32 _value
    (send _value :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; std_msgs/Float32 _value
       (send _value :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; std_msgs/Float32 _value
     (send _value :deserialize buf ptr-) (incf ptr- (send _value :serialization-length))
   ;;
   self)
  )

(setf (get paquete_practica1::FloatPose :md5sum-) "f694eb8ce94fe49c547f3d40955d8fdc")
(setf (get paquete_practica1::FloatPose :datatype-) "paquete_practica1/FloatPose")
(setf (get paquete_practica1::FloatPose :definition-)
      "geometry_msgs/Pose pose
std_msgs/Float32 value
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: std_msgs/Float32
float32 data
")



(provide :paquete_practica1/FloatPose "f694eb8ce94fe49c547f3d40955d8fdc")


