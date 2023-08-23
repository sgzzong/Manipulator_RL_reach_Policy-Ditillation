; Auto-generated. Do not edit!


(cl:in-package niryo_robot_sound-msg)


;//! \htmlinclude SoundList.msg.html

(cl:defclass <SoundList> (roslisp-msg-protocol:ros-message)
  ((sounds
    :reader sounds
    :initarg :sounds
    :type (cl:vector niryo_robot_sound-msg:SoundObject)
   :initform (cl:make-array 0 :element-type 'niryo_robot_sound-msg:SoundObject :initial-element (cl:make-instance 'niryo_robot_sound-msg:SoundObject))))
)

(cl:defclass SoundList (<SoundList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SoundList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SoundList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_sound-msg:<SoundList> is deprecated: use niryo_robot_sound-msg:SoundList instead.")))

(cl:ensure-generic-function 'sounds-val :lambda-list '(m))
(cl:defmethod sounds-val ((m <SoundList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_sound-msg:sounds-val is deprecated.  Use niryo_robot_sound-msg:sounds instead.")
  (sounds m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SoundList>) ostream)
  "Serializes a message object of type '<SoundList>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sounds))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'sounds))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SoundList>) istream)
  "Deserializes a message object of type '<SoundList>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'sounds) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sounds)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'niryo_robot_sound-msg:SoundObject))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SoundList>)))
  "Returns string type for a message object of type '<SoundList>"
  "niryo_robot_sound/SoundList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SoundList)))
  "Returns string type for a message object of type 'SoundList"
  "niryo_robot_sound/SoundList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SoundList>)))
  "Returns md5sum for a message object of type '<SoundList>"
  "05958294ca97e08c8d45a481537fb07d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SoundList)))
  "Returns md5sum for a message object of type 'SoundList"
  "05958294ca97e08c8d45a481537fb07d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SoundList>)))
  "Returns full string definition for message of type '<SoundList>"
  (cl:format cl:nil "niryo_robot_sound/SoundObject[] sounds~%================================================================================~%MSG: niryo_robot_sound/SoundObject~%string name~%float64 duration~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SoundList)))
  "Returns full string definition for message of type 'SoundList"
  (cl:format cl:nil "niryo_robot_sound/SoundObject[] sounds~%================================================================================~%MSG: niryo_robot_sound/SoundObject~%string name~%float64 duration~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SoundList>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sounds) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SoundList>))
  "Converts a ROS message object to a list"
  (cl:list 'SoundList
    (cl:cons ':sounds (sounds msg))
))
