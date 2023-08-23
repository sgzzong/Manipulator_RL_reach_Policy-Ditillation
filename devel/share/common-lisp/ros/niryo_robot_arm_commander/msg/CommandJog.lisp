; Auto-generated. Do not edit!


(cl:in-package niryo_robot_arm_commander-msg)


;//! \htmlinclude CommandJog.msg.html

(cl:defclass <CommandJog> (roslisp-msg-protocol:ros-message)
  ((cmd
    :reader cmd
    :initarg :cmd
    :type cl:integer
    :initform 0)
   (shift_values
    :reader shift_values
    :initarg :shift_values
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass CommandJog (<CommandJog>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommandJog>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommandJog)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_arm_commander-msg:<CommandJog> is deprecated: use niryo_robot_arm_commander-msg:CommandJog instead.")))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <CommandJog>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_arm_commander-msg:cmd-val is deprecated.  Use niryo_robot_arm_commander-msg:cmd instead.")
  (cmd m))

(cl:ensure-generic-function 'shift_values-val :lambda-list '(m))
(cl:defmethod shift_values-val ((m <CommandJog>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_arm_commander-msg:shift_values-val is deprecated.  Use niryo_robot_arm_commander-msg:shift_values instead.")
  (shift_values m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CommandJog>)))
    "Constants for message type '<CommandJog>"
  '((:JOINTS_SHIFT . 1)
    (:POSE_SHIFT . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CommandJog)))
    "Constants for message type 'CommandJog"
  '((:JOINTS_SHIFT . 1)
    (:POSE_SHIFT . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommandJog>) ostream)
  "Serializes a message object of type '<CommandJog>"
  (cl:let* ((signed (cl:slot-value msg 'cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'shift_values))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'shift_values))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommandJog>) istream)
  "Deserializes a message object of type '<CommandJog>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cmd) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'shift_values) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'shift_values)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommandJog>)))
  "Returns string type for a message object of type '<CommandJog>"
  "niryo_robot_arm_commander/CommandJog")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommandJog)))
  "Returns string type for a message object of type 'CommandJog"
  "niryo_robot_arm_commander/CommandJog")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommandJog>)))
  "Returns md5sum for a message object of type '<CommandJog>"
  "982e671b205d513ea5a6ebe02f6d0ba8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommandJog)))
  "Returns md5sum for a message object of type 'CommandJog"
  "982e671b205d513ea5a6ebe02f6d0ba8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommandJog>)))
  "Returns full string definition for message of type '<CommandJog>"
  (cl:format cl:nil "int32 JOINTS_SHIFT = 1~%int32 POSE_SHIFT = 2~%~%int32 cmd~%~%float32[] shift_values~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommandJog)))
  "Returns full string definition for message of type 'CommandJog"
  (cl:format cl:nil "int32 JOINTS_SHIFT = 1~%int32 POSE_SHIFT = 2~%~%int32 cmd~%~%float32[] shift_values~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommandJog>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'shift_values) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommandJog>))
  "Converts a ROS message object to a list"
  (cl:list 'CommandJog
    (cl:cons ':cmd (cmd msg))
    (cl:cons ':shift_values (shift_values msg))
))
