; Auto-generated. Do not edit!


(cl:in-package niryo_robot_poses_handlers-srv)


;//! \htmlinclude ManageWorkspace-request.msg.html

(cl:defclass <ManageWorkspace-request> (roslisp-msg-protocol:ros-message)
  ((cmd
    :reader cmd
    :initarg :cmd
    :type cl:integer
    :initform 0)
   (workspace
    :reader workspace
    :initarg :workspace
    :type niryo_robot_poses_handlers-msg:Workspace
    :initform (cl:make-instance 'niryo_robot_poses_handlers-msg:Workspace)))
)

(cl:defclass ManageWorkspace-request (<ManageWorkspace-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ManageWorkspace-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ManageWorkspace-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_poses_handlers-srv:<ManageWorkspace-request> is deprecated: use niryo_robot_poses_handlers-srv:ManageWorkspace-request instead.")))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <ManageWorkspace-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_poses_handlers-srv:cmd-val is deprecated.  Use niryo_robot_poses_handlers-srv:cmd instead.")
  (cmd m))

(cl:ensure-generic-function 'workspace-val :lambda-list '(m))
(cl:defmethod workspace-val ((m <ManageWorkspace-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_poses_handlers-srv:workspace-val is deprecated.  Use niryo_robot_poses_handlers-srv:workspace instead.")
  (workspace m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ManageWorkspace-request>)))
    "Constants for message type '<ManageWorkspace-request>"
  '((:SAVE . 1)
    (:SAVE_WITH_POINTS . 2)
    (:DELETE . -1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ManageWorkspace-request)))
    "Constants for message type 'ManageWorkspace-request"
  '((:SAVE . 1)
    (:SAVE_WITH_POINTS . 2)
    (:DELETE . -1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ManageWorkspace-request>) ostream)
  "Serializes a message object of type '<ManageWorkspace-request>"
  (cl:let* ((signed (cl:slot-value msg 'cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'workspace) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ManageWorkspace-request>) istream)
  "Deserializes a message object of type '<ManageWorkspace-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cmd) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'workspace) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ManageWorkspace-request>)))
  "Returns string type for a service object of type '<ManageWorkspace-request>"
  "niryo_robot_poses_handlers/ManageWorkspaceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ManageWorkspace-request)))
  "Returns string type for a service object of type 'ManageWorkspace-request"
  "niryo_robot_poses_handlers/ManageWorkspaceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ManageWorkspace-request>)))
  "Returns md5sum for a message object of type '<ManageWorkspace-request>"
  "133fe29c11881f21fe8ab6e5383e730f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ManageWorkspace-request)))
  "Returns md5sum for a message object of type 'ManageWorkspace-request"
  "133fe29c11881f21fe8ab6e5383e730f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ManageWorkspace-request>)))
  "Returns full string definition for message of type '<ManageWorkspace-request>"
  (cl:format cl:nil "int32 SAVE = 1~%int32 SAVE_WITH_POINTS = 2~%int32 DELETE = -1~%~%int32 cmd~%~%niryo_robot_poses_handlers/Workspace workspace~%~%~%================================================================================~%MSG: niryo_robot_poses_handlers/Workspace~%string name # maximum lenght of workspace's name is 30 characters~%string description~%~%geometry_msgs/Point[] points~%niryo_robot_msgs/RobotState[] poses~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: niryo_robot_msgs/RobotState~%geometry_msgs/Point position~%niryo_robot_msgs/RPY rpy~%geometry_msgs/Quaternion orientation~%~%geometry_msgs/Twist twist~%float64 tcp_speed~%================================================================================~%MSG: niryo_robot_msgs/RPY~%# roll, pitch and yaw~%~%float64 roll~%float64 pitch~%float64 yaw~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ManageWorkspace-request)))
  "Returns full string definition for message of type 'ManageWorkspace-request"
  (cl:format cl:nil "int32 SAVE = 1~%int32 SAVE_WITH_POINTS = 2~%int32 DELETE = -1~%~%int32 cmd~%~%niryo_robot_poses_handlers/Workspace workspace~%~%~%================================================================================~%MSG: niryo_robot_poses_handlers/Workspace~%string name # maximum lenght of workspace's name is 30 characters~%string description~%~%geometry_msgs/Point[] points~%niryo_robot_msgs/RobotState[] poses~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: niryo_robot_msgs/RobotState~%geometry_msgs/Point position~%niryo_robot_msgs/RPY rpy~%geometry_msgs/Quaternion orientation~%~%geometry_msgs/Twist twist~%float64 tcp_speed~%================================================================================~%MSG: niryo_robot_msgs/RPY~%# roll, pitch and yaw~%~%float64 roll~%float64 pitch~%float64 yaw~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ManageWorkspace-request>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'workspace))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ManageWorkspace-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ManageWorkspace-request
    (cl:cons ':cmd (cmd msg))
    (cl:cons ':workspace (workspace msg))
))
;//! \htmlinclude ManageWorkspace-response.msg.html

(cl:defclass <ManageWorkspace-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass ManageWorkspace-response (<ManageWorkspace-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ManageWorkspace-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ManageWorkspace-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_poses_handlers-srv:<ManageWorkspace-response> is deprecated: use niryo_robot_poses_handlers-srv:ManageWorkspace-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <ManageWorkspace-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_poses_handlers-srv:status-val is deprecated.  Use niryo_robot_poses_handlers-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ManageWorkspace-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_poses_handlers-srv:message-val is deprecated.  Use niryo_robot_poses_handlers-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ManageWorkspace-response>) ostream)
  "Serializes a message object of type '<ManageWorkspace-response>"
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ManageWorkspace-response>) istream)
  "Deserializes a message object of type '<ManageWorkspace-response>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ManageWorkspace-response>)))
  "Returns string type for a service object of type '<ManageWorkspace-response>"
  "niryo_robot_poses_handlers/ManageWorkspaceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ManageWorkspace-response)))
  "Returns string type for a service object of type 'ManageWorkspace-response"
  "niryo_robot_poses_handlers/ManageWorkspaceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ManageWorkspace-response>)))
  "Returns md5sum for a message object of type '<ManageWorkspace-response>"
  "133fe29c11881f21fe8ab6e5383e730f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ManageWorkspace-response)))
  "Returns md5sum for a message object of type 'ManageWorkspace-response"
  "133fe29c11881f21fe8ab6e5383e730f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ManageWorkspace-response>)))
  "Returns full string definition for message of type '<ManageWorkspace-response>"
  (cl:format cl:nil "int32 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ManageWorkspace-response)))
  "Returns full string definition for message of type 'ManageWorkspace-response"
  (cl:format cl:nil "int32 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ManageWorkspace-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ManageWorkspace-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ManageWorkspace-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ManageWorkspace)))
  'ManageWorkspace-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ManageWorkspace)))
  'ManageWorkspace-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ManageWorkspace)))
  "Returns string type for a service object of type '<ManageWorkspace>"
  "niryo_robot_poses_handlers/ManageWorkspace")