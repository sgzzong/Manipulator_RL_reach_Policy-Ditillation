; Auto-generated. Do not edit!


(cl:in-package niryo_robot_poses_handlers-srv)


;//! \htmlinclude GetWorkspaceRobotPoses-request.msg.html

(cl:defclass <GetWorkspaceRobotPoses-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass GetWorkspaceRobotPoses-request (<GetWorkspaceRobotPoses-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetWorkspaceRobotPoses-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetWorkspaceRobotPoses-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_poses_handlers-srv:<GetWorkspaceRobotPoses-request> is deprecated: use niryo_robot_poses_handlers-srv:GetWorkspaceRobotPoses-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <GetWorkspaceRobotPoses-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_poses_handlers-srv:name-val is deprecated.  Use niryo_robot_poses_handlers-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetWorkspaceRobotPoses-request>) ostream)
  "Serializes a message object of type '<GetWorkspaceRobotPoses-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetWorkspaceRobotPoses-request>) istream)
  "Deserializes a message object of type '<GetWorkspaceRobotPoses-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetWorkspaceRobotPoses-request>)))
  "Returns string type for a service object of type '<GetWorkspaceRobotPoses-request>"
  "niryo_robot_poses_handlers/GetWorkspaceRobotPosesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetWorkspaceRobotPoses-request)))
  "Returns string type for a service object of type 'GetWorkspaceRobotPoses-request"
  "niryo_robot_poses_handlers/GetWorkspaceRobotPosesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetWorkspaceRobotPoses-request>)))
  "Returns md5sum for a message object of type '<GetWorkspaceRobotPoses-request>"
  "1ceacac04279b711025c0dca9155a376")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetWorkspaceRobotPoses-request)))
  "Returns md5sum for a message object of type 'GetWorkspaceRobotPoses-request"
  "1ceacac04279b711025c0dca9155a376")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetWorkspaceRobotPoses-request>)))
  "Returns full string definition for message of type '<GetWorkspaceRobotPoses-request>"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetWorkspaceRobotPoses-request)))
  "Returns full string definition for message of type 'GetWorkspaceRobotPoses-request"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetWorkspaceRobotPoses-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetWorkspaceRobotPoses-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetWorkspaceRobotPoses-request
    (cl:cons ':name (name msg))
))
;//! \htmlinclude GetWorkspaceRobotPoses-response.msg.html

(cl:defclass <GetWorkspaceRobotPoses-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform "")
   (poses
    :reader poses
    :initarg :poses
    :type (cl:vector niryo_robot_msgs-msg:RobotState)
   :initform (cl:make-array 0 :element-type 'niryo_robot_msgs-msg:RobotState :initial-element (cl:make-instance 'niryo_robot_msgs-msg:RobotState))))
)

(cl:defclass GetWorkspaceRobotPoses-response (<GetWorkspaceRobotPoses-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetWorkspaceRobotPoses-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetWorkspaceRobotPoses-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_poses_handlers-srv:<GetWorkspaceRobotPoses-response> is deprecated: use niryo_robot_poses_handlers-srv:GetWorkspaceRobotPoses-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <GetWorkspaceRobotPoses-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_poses_handlers-srv:status-val is deprecated.  Use niryo_robot_poses_handlers-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetWorkspaceRobotPoses-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_poses_handlers-srv:message-val is deprecated.  Use niryo_robot_poses_handlers-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'poses-val :lambda-list '(m))
(cl:defmethod poses-val ((m <GetWorkspaceRobotPoses-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_poses_handlers-srv:poses-val is deprecated.  Use niryo_robot_poses_handlers-srv:poses instead.")
  (poses m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetWorkspaceRobotPoses-response>) ostream)
  "Serializes a message object of type '<GetWorkspaceRobotPoses-response>"
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'poses))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'poses))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetWorkspaceRobotPoses-response>) istream)
  "Deserializes a message object of type '<GetWorkspaceRobotPoses-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'poses) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'poses)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'niryo_robot_msgs-msg:RobotState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetWorkspaceRobotPoses-response>)))
  "Returns string type for a service object of type '<GetWorkspaceRobotPoses-response>"
  "niryo_robot_poses_handlers/GetWorkspaceRobotPosesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetWorkspaceRobotPoses-response)))
  "Returns string type for a service object of type 'GetWorkspaceRobotPoses-response"
  "niryo_robot_poses_handlers/GetWorkspaceRobotPosesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetWorkspaceRobotPoses-response>)))
  "Returns md5sum for a message object of type '<GetWorkspaceRobotPoses-response>"
  "1ceacac04279b711025c0dca9155a376")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetWorkspaceRobotPoses-response)))
  "Returns md5sum for a message object of type 'GetWorkspaceRobotPoses-response"
  "1ceacac04279b711025c0dca9155a376")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetWorkspaceRobotPoses-response>)))
  "Returns full string definition for message of type '<GetWorkspaceRobotPoses-response>"
  (cl:format cl:nil "int32 status~%string message~%niryo_robot_msgs/RobotState[] poses~%~%~%================================================================================~%MSG: niryo_robot_msgs/RobotState~%geometry_msgs/Point position~%niryo_robot_msgs/RPY rpy~%geometry_msgs/Quaternion orientation~%~%geometry_msgs/Twist twist~%float64 tcp_speed~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: niryo_robot_msgs/RPY~%# roll, pitch and yaw~%~%float64 roll~%float64 pitch~%float64 yaw~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetWorkspaceRobotPoses-response)))
  "Returns full string definition for message of type 'GetWorkspaceRobotPoses-response"
  (cl:format cl:nil "int32 status~%string message~%niryo_robot_msgs/RobotState[] poses~%~%~%================================================================================~%MSG: niryo_robot_msgs/RobotState~%geometry_msgs/Point position~%niryo_robot_msgs/RPY rpy~%geometry_msgs/Quaternion orientation~%~%geometry_msgs/Twist twist~%float64 tcp_speed~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: niryo_robot_msgs/RPY~%# roll, pitch and yaw~%~%float64 roll~%float64 pitch~%float64 yaw~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetWorkspaceRobotPoses-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'poses) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetWorkspaceRobotPoses-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetWorkspaceRobotPoses-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
    (cl:cons ':poses (poses msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetWorkspaceRobotPoses)))
  'GetWorkspaceRobotPoses-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetWorkspaceRobotPoses)))
  'GetWorkspaceRobotPoses-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetWorkspaceRobotPoses)))
  "Returns string type for a service object of type '<GetWorkspaceRobotPoses>"
  "niryo_robot_poses_handlers/GetWorkspaceRobotPoses")