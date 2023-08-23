; Auto-generated. Do not edit!


(cl:in-package niryo_robot_tools_commander-srv)


;//! \htmlinclude SetTCP-request.msg.html

(cl:defclass <SetTCP-request> (roslisp-msg-protocol:ros-message)
  ((position
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

(cl:defclass SetTCP-request (<SetTCP-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetTCP-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetTCP-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_tools_commander-srv:<SetTCP-request> is deprecated: use niryo_robot_tools_commander-srv:SetTCP-request instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <SetTCP-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_tools_commander-srv:position-val is deprecated.  Use niryo_robot_tools_commander-srv:position instead.")
  (position m))

(cl:ensure-generic-function 'rpy-val :lambda-list '(m))
(cl:defmethod rpy-val ((m <SetTCP-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_tools_commander-srv:rpy-val is deprecated.  Use niryo_robot_tools_commander-srv:rpy instead.")
  (rpy m))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <SetTCP-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_tools_commander-srv:orientation-val is deprecated.  Use niryo_robot_tools_commander-srv:orientation instead.")
  (orientation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetTCP-request>) ostream)
  "Serializes a message object of type '<SetTCP-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rpy) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'orientation) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetTCP-request>) istream)
  "Deserializes a message object of type '<SetTCP-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rpy) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'orientation) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetTCP-request>)))
  "Returns string type for a service object of type '<SetTCP-request>"
  "niryo_robot_tools_commander/SetTCPRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTCP-request)))
  "Returns string type for a service object of type 'SetTCP-request"
  "niryo_robot_tools_commander/SetTCPRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetTCP-request>)))
  "Returns md5sum for a message object of type '<SetTCP-request>"
  "7e7b3d8cc25cf3ee8617fe16c36dee57")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetTCP-request)))
  "Returns md5sum for a message object of type 'SetTCP-request"
  "7e7b3d8cc25cf3ee8617fe16c36dee57")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetTCP-request>)))
  "Returns full string definition for message of type '<SetTCP-request>"
  (cl:format cl:nil "geometry_msgs/Point position~%~%#Only one of the two is required.~%#If both are filled, the quaternion will be chosen by default~%niryo_robot_msgs/RPY rpy~%geometry_msgs/Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: niryo_robot_msgs/RPY~%# roll, pitch and yaw~%~%float64 roll~%float64 pitch~%float64 yaw~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetTCP-request)))
  "Returns full string definition for message of type 'SetTCP-request"
  (cl:format cl:nil "geometry_msgs/Point position~%~%#Only one of the two is required.~%#If both are filled, the quaternion will be chosen by default~%niryo_robot_msgs/RPY rpy~%geometry_msgs/Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: niryo_robot_msgs/RPY~%# roll, pitch and yaw~%~%float64 roll~%float64 pitch~%float64 yaw~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetTCP-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rpy))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'orientation))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetTCP-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetTCP-request
    (cl:cons ':position (position msg))
    (cl:cons ':rpy (rpy msg))
    (cl:cons ':orientation (orientation msg))
))
;//! \htmlinclude SetTCP-response.msg.html

(cl:defclass <SetTCP-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetTCP-response (<SetTCP-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetTCP-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetTCP-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_tools_commander-srv:<SetTCP-response> is deprecated: use niryo_robot_tools_commander-srv:SetTCP-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <SetTCP-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_tools_commander-srv:status-val is deprecated.  Use niryo_robot_tools_commander-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetTCP-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_tools_commander-srv:message-val is deprecated.  Use niryo_robot_tools_commander-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetTCP-response>) ostream)
  "Serializes a message object of type '<SetTCP-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetTCP-response>) istream)
  "Deserializes a message object of type '<SetTCP-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetTCP-response>)))
  "Returns string type for a service object of type '<SetTCP-response>"
  "niryo_robot_tools_commander/SetTCPResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTCP-response)))
  "Returns string type for a service object of type 'SetTCP-response"
  "niryo_robot_tools_commander/SetTCPResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetTCP-response>)))
  "Returns md5sum for a message object of type '<SetTCP-response>"
  "7e7b3d8cc25cf3ee8617fe16c36dee57")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetTCP-response)))
  "Returns md5sum for a message object of type 'SetTCP-response"
  "7e7b3d8cc25cf3ee8617fe16c36dee57")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetTCP-response>)))
  "Returns full string definition for message of type '<SetTCP-response>"
  (cl:format cl:nil "int32 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetTCP-response)))
  "Returns full string definition for message of type 'SetTCP-response"
  (cl:format cl:nil "int32 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetTCP-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetTCP-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetTCP-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetTCP)))
  'SetTCP-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetTCP)))
  'SetTCP-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTCP)))
  "Returns string type for a service object of type '<SetTCP>"
  "niryo_robot_tools_commander/SetTCP")