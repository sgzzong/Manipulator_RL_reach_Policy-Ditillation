; Auto-generated. Do not edit!


(cl:in-package niryo_robot_poses_handlers-srv)


;//! \htmlinclude ManagePose-request.msg.html

(cl:defclass <ManagePose-request> (roslisp-msg-protocol:ros-message)
  ((cmd
    :reader cmd
    :initarg :cmd
    :type cl:integer
    :initform 0)
   (pose
    :reader pose
    :initarg :pose
    :type niryo_robot_poses_handlers-msg:NiryoPose
    :initform (cl:make-instance 'niryo_robot_poses_handlers-msg:NiryoPose)))
)

(cl:defclass ManagePose-request (<ManagePose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ManagePose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ManagePose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_poses_handlers-srv:<ManagePose-request> is deprecated: use niryo_robot_poses_handlers-srv:ManagePose-request instead.")))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <ManagePose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_poses_handlers-srv:cmd-val is deprecated.  Use niryo_robot_poses_handlers-srv:cmd instead.")
  (cmd m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <ManagePose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_poses_handlers-srv:pose-val is deprecated.  Use niryo_robot_poses_handlers-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ManagePose-request>)))
    "Constants for message type '<ManagePose-request>"
  '((:SAVE . 1)
    (:DELETE . -1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ManagePose-request)))
    "Constants for message type 'ManagePose-request"
  '((:SAVE . 1)
    (:DELETE . -1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ManagePose-request>) ostream)
  "Serializes a message object of type '<ManagePose-request>"
  (cl:let* ((signed (cl:slot-value msg 'cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ManagePose-request>) istream)
  "Deserializes a message object of type '<ManagePose-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cmd) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ManagePose-request>)))
  "Returns string type for a service object of type '<ManagePose-request>"
  "niryo_robot_poses_handlers/ManagePoseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ManagePose-request)))
  "Returns string type for a service object of type 'ManagePose-request"
  "niryo_robot_poses_handlers/ManagePoseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ManagePose-request>)))
  "Returns md5sum for a message object of type '<ManagePose-request>"
  "e31af33c10c3b42aaa567ace2b43c222")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ManagePose-request)))
  "Returns md5sum for a message object of type 'ManagePose-request"
  "e31af33c10c3b42aaa567ace2b43c222")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ManagePose-request>)))
  "Returns full string definition for message of type '<ManagePose-request>"
  (cl:format cl:nil "int32 cmd~%int32 SAVE = 1~%int32 DELETE = -1~%~%niryo_robot_poses_handlers/NiryoPose pose~%~%================================================================================~%MSG: niryo_robot_poses_handlers/NiryoPose~%string name~%string description~%~%float64[] joints ~%geometry_msgs/Point position~%niryo_robot_msgs/RPY rpy~%geometry_msgs/Quaternion orientation~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: niryo_robot_msgs/RPY~%# roll, pitch and yaw~%~%float64 roll~%float64 pitch~%float64 yaw~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ManagePose-request)))
  "Returns full string definition for message of type 'ManagePose-request"
  (cl:format cl:nil "int32 cmd~%int32 SAVE = 1~%int32 DELETE = -1~%~%niryo_robot_poses_handlers/NiryoPose pose~%~%================================================================================~%MSG: niryo_robot_poses_handlers/NiryoPose~%string name~%string description~%~%float64[] joints ~%geometry_msgs/Point position~%niryo_robot_msgs/RPY rpy~%geometry_msgs/Quaternion orientation~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: niryo_robot_msgs/RPY~%# roll, pitch and yaw~%~%float64 roll~%float64 pitch~%float64 yaw~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ManagePose-request>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ManagePose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ManagePose-request
    (cl:cons ':cmd (cmd msg))
    (cl:cons ':pose (pose msg))
))
;//! \htmlinclude ManagePose-response.msg.html

(cl:defclass <ManagePose-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass ManagePose-response (<ManagePose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ManagePose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ManagePose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_poses_handlers-srv:<ManagePose-response> is deprecated: use niryo_robot_poses_handlers-srv:ManagePose-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <ManagePose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_poses_handlers-srv:status-val is deprecated.  Use niryo_robot_poses_handlers-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ManagePose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_poses_handlers-srv:message-val is deprecated.  Use niryo_robot_poses_handlers-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ManagePose-response>) ostream)
  "Serializes a message object of type '<ManagePose-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ManagePose-response>) istream)
  "Deserializes a message object of type '<ManagePose-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ManagePose-response>)))
  "Returns string type for a service object of type '<ManagePose-response>"
  "niryo_robot_poses_handlers/ManagePoseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ManagePose-response)))
  "Returns string type for a service object of type 'ManagePose-response"
  "niryo_robot_poses_handlers/ManagePoseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ManagePose-response>)))
  "Returns md5sum for a message object of type '<ManagePose-response>"
  "e31af33c10c3b42aaa567ace2b43c222")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ManagePose-response)))
  "Returns md5sum for a message object of type 'ManagePose-response"
  "e31af33c10c3b42aaa567ace2b43c222")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ManagePose-response>)))
  "Returns full string definition for message of type '<ManagePose-response>"
  (cl:format cl:nil "int32 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ManagePose-response)))
  "Returns full string definition for message of type 'ManagePose-response"
  (cl:format cl:nil "int32 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ManagePose-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ManagePose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ManagePose-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ManagePose)))
  'ManagePose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ManagePose)))
  'ManagePose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ManagePose)))
  "Returns string type for a service object of type '<ManagePose>"
  "niryo_robot_poses_handlers/ManagePose")