; Auto-generated. Do not edit!


(cl:in-package niryo_robot_tools_commander-msg)


;//! \htmlinclude TCP.msg.html

(cl:defclass <TCP> (roslisp-msg-protocol:ros-message)
  ((enabled
    :reader enabled
    :initarg :enabled
    :type cl:boolean
    :initform cl:nil)
   (position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (rpy
    :reader rpy
    :initarg :rpy
    :type niryo_robot_msgs-msg:RPY
    :initform (cl:make-instance 'niryo_robot_msgs-msg:RPY))
   (orientation
    :reader orientation
    :initarg :orientation
    :type geometry_msgs-msg:Quaternion
    :initform (cl:make-instance 'geometry_msgs-msg:Quaternion)))
)

(cl:defclass TCP (<TCP>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TCP>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TCP)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_tools_commander-msg:<TCP> is deprecated: use niryo_robot_tools_commander-msg:TCP instead.")))

(cl:ensure-generic-function 'enabled-val :lambda-list '(m))
(cl:defmethod enabled-val ((m <TCP>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_tools_commander-msg:enabled-val is deprecated.  Use niryo_robot_tools_commander-msg:enabled instead.")
  (enabled m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <TCP>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_tools_commander-msg:position-val is deprecated.  Use niryo_robot_tools_commander-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'rpy-val :lambda-list '(m))
(cl:defmethod rpy-val ((m <TCP>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_tools_commander-msg:rpy-val is deprecated.  Use niryo_robot_tools_commander-msg:rpy instead.")
  (rpy m))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <TCP>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_tools_commander-msg:orientation-val is deprecated.  Use niryo_robot_tools_commander-msg:orientation instead.")
  (orientation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TCP>) ostream)
  "Serializes a message object of type '<TCP>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enabled) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rpy) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'orientation) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TCP>) istream)
  "Deserializes a message object of type '<TCP>"
    (cl:setf (cl:slot-value msg 'enabled) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rpy) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'orientation) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TCP>)))
  "Returns string type for a message object of type '<TCP>"
  "niryo_robot_tools_commander/TCP")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TCP)))
  "Returns string type for a message object of type 'TCP"
  "niryo_robot_tools_commander/TCP")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TCP>)))
  "Returns md5sum for a message object of type '<TCP>"
  "7d931fce0b5b3aea000ef2cf21430552")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TCP)))
  "Returns md5sum for a message object of type 'TCP"
  "7d931fce0b5b3aea000ef2cf21430552")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TCP>)))
  "Returns full string definition for message of type '<TCP>"
  (cl:format cl:nil "bool enabled~%~%geometry_msgs/Point position~%niryo_robot_msgs/RPY rpy~%geometry_msgs/Quaternion orientation~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: niryo_robot_msgs/RPY~%# roll, pitch and yaw~%~%float64 roll~%float64 pitch~%float64 yaw~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TCP)))
  "Returns full string definition for message of type 'TCP"
  (cl:format cl:nil "bool enabled~%~%geometry_msgs/Point position~%niryo_robot_msgs/RPY rpy~%geometry_msgs/Quaternion orientation~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: niryo_robot_msgs/RPY~%# roll, pitch and yaw~%~%float64 roll~%float64 pitch~%float64 yaw~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TCP>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rpy))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'orientation))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TCP>))
  "Converts a ROS message object to a list"
  (cl:list 'TCP
    (cl:cons ':enabled (enabled msg))
    (cl:cons ':position (position msg))
    (cl:cons ':rpy (rpy msg))
    (cl:cons ':orientation (orientation msg))
))
