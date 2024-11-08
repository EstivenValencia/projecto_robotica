; Auto-generated. Do not edit!


(cl:in-package practica_1-msg)


;//! \htmlinclude Floor.msg.html

(cl:defclass <Floor> (roslisp-msg-protocol:ros-message)
  ((pose_caja
    :reader pose_caja
    :initarg :pose_caja
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (tamaño
    :reader tamaño
    :initarg :tamaño
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Floor (<Floor>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Floor>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Floor)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name practica_1-msg:<Floor> is deprecated: use practica_1-msg:Floor instead.")))

(cl:ensure-generic-function 'pose_caja-val :lambda-list '(m))
(cl:defmethod pose_caja-val ((m <Floor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader practica_1-msg:pose_caja-val is deprecated.  Use practica_1-msg:pose_caja instead.")
  (pose_caja m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Floor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader practica_1-msg:name-val is deprecated.  Use practica_1-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'tamaño-val :lambda-list '(m))
(cl:defmethod tamaño-val ((m <Floor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader practica_1-msg:tamaño-val is deprecated.  Use practica_1-msg:tamaño instead.")
  (tamaño m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Floor>) ostream)
  "Serializes a message object of type '<Floor>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose_caja) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tamaño))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'tamaño))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Floor>) istream)
  "Deserializes a message object of type '<Floor>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose_caja) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'tamaño) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'tamaño)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Floor>)))
  "Returns string type for a message object of type '<Floor>"
  "practica_1/Floor")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Floor)))
  "Returns string type for a message object of type 'Floor"
  "practica_1/Floor")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Floor>)))
  "Returns md5sum for a message object of type '<Floor>"
  "a6d6ac6783852c70a735b1df3828bbfa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Floor)))
  "Returns md5sum for a message object of type 'Floor"
  "a6d6ac6783852c70a735b1df3828bbfa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Floor>)))
  "Returns full string definition for message of type '<Floor>"
  (cl:format cl:nil "geometry_msgs/Pose pose_caja~%string name~%float64[] tamaño~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Floor)))
  "Returns full string definition for message of type 'Floor"
  (cl:format cl:nil "geometry_msgs/Pose pose_caja~%string name~%float64[] tamaño~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Floor>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose_caja))
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tamaño) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Floor>))
  "Converts a ROS message object to a list"
  (cl:list 'Floor
    (cl:cons ':pose_caja (pose_caja msg))
    (cl:cons ':name (name msg))
    (cl:cons ':tamaño (tamaño msg))
))
