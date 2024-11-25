; Auto-generated. Do not edit!


(cl:in-package paquete_practica1-msg)


;//! \htmlinclude FloatPose.msg.html

(cl:defclass <FloatPose> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (value
    :reader value
    :initarg :value
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32)))
)

(cl:defclass FloatPose (<FloatPose>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FloatPose>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FloatPose)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name paquete_practica1-msg:<FloatPose> is deprecated: use paquete_practica1-msg:FloatPose instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <FloatPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader paquete_practica1-msg:pose-val is deprecated.  Use paquete_practica1-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <FloatPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader paquete_practica1-msg:value-val is deprecated.  Use paquete_practica1-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FloatPose>) ostream)
  "Serializes a message object of type '<FloatPose>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'value) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FloatPose>) istream)
  "Deserializes a message object of type '<FloatPose>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'value) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FloatPose>)))
  "Returns string type for a message object of type '<FloatPose>"
  "paquete_practica1/FloatPose")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FloatPose)))
  "Returns string type for a message object of type 'FloatPose"
  "paquete_practica1/FloatPose")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FloatPose>)))
  "Returns md5sum for a message object of type '<FloatPose>"
  "f694eb8ce94fe49c547f3d40955d8fdc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FloatPose)))
  "Returns md5sum for a message object of type 'FloatPose"
  "f694eb8ce94fe49c547f3d40955d8fdc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FloatPose>)))
  "Returns full string definition for message of type '<FloatPose>"
  (cl:format cl:nil "geometry_msgs/Pose pose~%std_msgs/Float32 value~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FloatPose)))
  "Returns full string definition for message of type 'FloatPose"
  (cl:format cl:nil "geometry_msgs/Pose pose~%std_msgs/Float32 value~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FloatPose>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'value))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FloatPose>))
  "Converts a ROS message object to a list"
  (cl:list 'FloatPose
    (cl:cons ':pose (pose msg))
    (cl:cons ':value (value msg))
))
