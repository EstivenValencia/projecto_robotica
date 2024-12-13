;; Auto-generated. Do not edit!


(when (boundp 'actividad_1::Floor)
  (if (not (find-package "ACTIVIDAD_1"))
    (make-package "ACTIVIDAD_1"))
  (shadow 'Floor (find-package "ACTIVIDAD_1")))
(unless (find-package "ACTIVIDAD_1::FLOOR")
  (make-package "ACTIVIDAD_1::FLOOR"))

(in-package "ROS")
;;//! \htmlinclude Floor.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass actividad_1::Floor
  :super ros::object
  :slots (_pose_caja _name _tamaño ))

(defmethod actividad_1::Floor
  (:init
   (&key
    ((:pose_caja __pose_caja) (instance geometry_msgs::Pose :init))
    ((:name __name) "")
    ((:tamaño __tamaño) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _pose_caja __pose_caja)
   (setq _name (string __name))
   (setq _tamaño __tamaño)
   self)
  (:pose_caja
   (&rest __pose_caja)
   (if (keywordp (car __pose_caja))
       (send* _pose_caja __pose_caja)
     (progn
       (if __pose_caja (setq _pose_caja (car __pose_caja)))
       _pose_caja)))
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:tamaño
   (&optional __tamaño)
   (if __tamaño (setq _tamaño __tamaño)) _tamaño)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _pose_caja
    (send _pose_caja :serialization-length)
    ;; string _name
    4 (length _name)
    ;; float64[] _tamaño
    (* 8    (length _tamaño)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _pose_caja
       (send _pose_caja :serialize s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float64[] _tamaño
     (write-long (length _tamaño) s)
     (dotimes (i (length _tamaño))
       (sys::poke (elt _tamaño i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _pose_caja
     (send _pose_caja :deserialize buf ptr-) (incf ptr- (send _pose_caja :serialization-length))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64[] _tamaño
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tamaño (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _tamaño i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get actividad_1::Floor :md5sum-) "a6d6ac6783852c70a735b1df3828bbfa")
(setf (get actividad_1::Floor :datatype-) "actividad_1/Floor")
(setf (get actividad_1::Floor :definition-)
      "geometry_msgs/Pose pose_caja
string name
float64[] tamaño
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

")



(provide :actividad_1/Floor "a6d6ac6783852c70a735b1df3828bbfa")


