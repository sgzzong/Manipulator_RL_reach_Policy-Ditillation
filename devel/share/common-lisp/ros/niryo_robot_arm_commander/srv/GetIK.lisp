; Auto-generated. Do not edit!


(cl:in-package niryo_robot_arm_commander-srv)


;//! \htmlinclude GetIK-request.msg.html

(cl:defclass <GetIK-request> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type niryo_robot_msgs-msg:RobotState
    :initform (cl:make-instance 'niryo_robot_msgs-msg:RobotState)))
)

(cl:defclass GetIK-request (<GetIK-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetIK-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetIK-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_arm_commander-srv:<GetIK-request> is deprecated: use niryo_robot_arm_commander-srv:GetIK-request instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <GetIK-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_arm_commander-srv:pose-val is deprecated.  Use niryo_robot_arm_commander-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetIK-request>) ostream)
  "Serializes a message object of type '<GetIK-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetIK-request>) istream)
  "Deserializes a message object of type '<GetIK-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetIK-request>)))
  "Returns string type for a service object of type '<GetIK-request>"
  "niryo_robot_arm_commander/GetIKRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetIK-request)))
  "Returns string type for a service object of type 'GetIK-request"
  "niryo_robot_arm_commander/GetIKRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetIK-request>)))
  "Returns md5sum for a message object of type '<GetIK-request>"
  "45576484cd6aed54d3d440c48b4c229e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetIK-request)))
  "Returns md5sum for a message object of type 'GetIK-request"
  "45576484cd6aed54d3d440c48b4c229e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetIK-request>)))
  "Returns full string definition for message of type '<GetIK-request>"
  (cl:format cl:nil "niryo_robot_msgs/RobotState pose~%~%================================================================================~%MSG: niryo_robot_msgs/RobotState~%geometry_msgs/Point position~%niryo_robot_msgs/RPY rpy~%geometry_msgs/Quaternion orientation~%~%geometry_msgs/Twist twist~%float64 tcp_speed~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: niryo_robot_msgs/RPY~%# roll, pitch and yaw~%~%float64 roll~%float64 pitch~%float64 yaw~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetIK-request)))
  "Returns full string definition for message of type 'GetIK-request"
  (cl:format cl:nil "niryo_robot_msgs/RobotState pose~%~%================================================================================~%MSG: niryo_robot_msgs/RobotState~%geometry_msgs/Point position~%niryo_robot_msgs/RPY rpy~%geometry_msgs/Quaternion orientation~%~%geometry_msgs/Twist twist~%float64 tcp_speed~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: niryo_robot_msgs/RPY~%# roll, pitch and yaw~%~%float64 roll~%float64 pitch~%float64 yaw~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetIK-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetIK-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetIK-request
    (cl:cons ':pose (pose msg))
))
;//! \htmlinclude GetIK-response.msg.html

(cl:defclass <GetIK-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (joints
    :reader joints
    :initarg :joints
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass GetIK-response (<GetIK-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetIK-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetIK-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_arm_commander-srv:<GetIK-response> is deprecated: use niryo_robot_arm_commander-srv:GetIK-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetIK-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_arm_commander-srv:success-val is deprecated.  Use niryo_robot_arm_commander-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'joints-val :lambda-list '(m))
(cl:defmethod joints-val ((m <GetIK-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_arm_commander-srv:joints-val is deprecated.  Use niryo_robot_arm_commander-srv:joints instead.")
  (joints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetIK-response>) ostream)
  "Serializes a message object of type '<GetIK-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'joints))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetIK-response>) istream)
  "Deserializes a message object of type '<GetIK-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetIK-response>)))
  "Returns string type for a service object of type '<GetIK-response>"
  "niryo_robot_arm_commander/GetIKResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetIK-response)))
  "Returns string type for a service object of type 'GetIK-response"
  "niryo_robot_arm_commander/GetIKResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetIK-response>)))
  "Returns md5sum for a message object of type '<GetIK-response>"
  "45576484cd6aed54d3d440c48b4c229e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetIK-response)))
  "Returns md5sum for a message object of type 'GetIK-response"
  "45576484cd6aed54d3d440c48b4c229e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetIK-response>)))
  "Returns full string definition for message of type '<GetIK-response>"
  (cl:format cl:nil "bool success~%float32[] joints~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetIK-response)))
  "Returns full string definition for message of type 'GetIK-response"
  (cl:format cl:nil "bool success~%float32[] joints~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetIK-response>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetIK-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetIK-response
    (cl:cons ':success (success msg))
    (cl:cons ':joints (joints msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetIK)))
  'GetIK-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetIK)))
  'GetIK-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetIK)))
  "Returns string type for a service object of type '<GetIK>"
  "niryo_robot_arm_commander/GetIK")