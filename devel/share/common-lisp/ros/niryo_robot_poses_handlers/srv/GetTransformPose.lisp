; Auto-generated. Do not edit!


(cl:in-package niryo_robot_poses_handlers-srv)


;//! \htmlinclude GetTransformPose-request.msg.html

(cl:defclass <GetTransformPose-request> (roslisp-msg-protocol:ros-message)
  ((source_frame
    :reader source_frame
    :initarg :source_frame
    :type cl:string
    :initform "")
   (local_frame
    :reader local_frame
    :initarg :local_frame
    :type cl:string
    :initform "")
   (position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (rpy
    :reader rpy
    :initarg :rpy
    :type niryo_robot_msgs-msg:RPY
    :initform (cl:make-instance 'niryo_robot_msgs-msg:RPY)))
)

(cl:defclass GetTransformPose-request (<GetTransformPose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTransformPose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTransformPose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_poses_handlers-srv:<GetTransformPose-request> is deprecated: use niryo_robot_poses_handlers-srv:GetTransformPose-request instead.")))

(cl:ensure-generic-function 'source_frame-val :lambda-list '(m))
(cl:defmethod source_frame-val ((m <GetTransformPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_poses_handlers-srv:source_frame-val is deprecated.  Use niryo_robot_poses_handlers-srv:source_frame instead.")
  (source_frame m))

(cl:ensure-generic-function 'local_frame-val :lambda-list '(m))
(cl:defmethod local_frame-val ((m <GetTransformPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_poses_handlers-srv:local_frame-val is deprecated.  Use niryo_robot_poses_handlers-srv:local_frame instead.")
  (local_frame m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <GetTransformPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_poses_handlers-srv:position-val is deprecated.  Use niryo_robot_poses_handlers-srv:position instead.")
  (position m))

(cl:ensure-generic-function 'rpy-val :lambda-list '(m))
(cl:defmethod rpy-val ((m <GetTransformPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_poses_handlers-srv:rpy-val is deprecated.  Use niryo_robot_poses_handlers-srv:rpy instead.")
  (rpy m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTransformPose-request>) ostream)
  "Serializes a message object of type '<GetTransformPose-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'source_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'source_frame))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'local_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'local_frame))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rpy) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTransformPose-request>) istream)
  "Deserializes a message object of type '<GetTransformPose-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'source_frame) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'source_frame) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'local_frame) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'local_frame) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rpy) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTransformPose-request>)))
  "Returns string type for a service object of type '<GetTransformPose-request>"
  "niryo_robot_poses_handlers/GetTransformPoseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTransformPose-request)))
  "Returns string type for a service object of type 'GetTransformPose-request"
  "niryo_robot_poses_handlers/GetTransformPoseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTransformPose-request>)))
  "Returns md5sum for a message object of type '<GetTransformPose-request>"
  "65fe6112339c0f055bdcec45f6729881")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTransformPose-request)))
  "Returns md5sum for a message object of type 'GetTransformPose-request"
  "65fe6112339c0f055bdcec45f6729881")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTransformPose-request>)))
  "Returns full string definition for message of type '<GetTransformPose-request>"
  (cl:format cl:nil "string source_frame~%string local_frame~%~%geometry_msgs/Point position~%niryo_robot_msgs/RPY rpy~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: niryo_robot_msgs/RPY~%# roll, pitch and yaw~%~%float64 roll~%float64 pitch~%float64 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTransformPose-request)))
  "Returns full string definition for message of type 'GetTransformPose-request"
  (cl:format cl:nil "string source_frame~%string local_frame~%~%geometry_msgs/Point position~%niryo_robot_msgs/RPY rpy~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: niryo_robot_msgs/RPY~%# roll, pitch and yaw~%~%float64 roll~%float64 pitch~%float64 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTransformPose-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'source_frame))
     4 (cl:length (cl:slot-value msg 'local_frame))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rpy))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTransformPose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTransformPose-request
    (cl:cons ':source_frame (source_frame msg))
    (cl:cons ':local_frame (local_frame msg))
    (cl:cons ':position (position msg))
    (cl:cons ':rpy (rpy msg))
))
;//! \htmlinclude GetTransformPose-response.msg.html

(cl:defclass <GetTransformPose-response> (roslisp-msg-protocol:ros-message)
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
   (position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (rpy
    :reader rpy
    :initarg :rpy
    :type niryo_robot_msgs-msg:RPY
    :initform (cl:make-instance 'niryo_robot_msgs-msg:RPY)))
)

(cl:defclass GetTransformPose-response (<GetTransformPose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTransformPose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTransformPose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_poses_handlers-srv:<GetTransformPose-response> is deprecated: use niryo_robot_poses_handlers-srv:GetTransformPose-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <GetTransformPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_poses_handlers-srv:status-val is deprecated.  Use niryo_robot_poses_handlers-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetTransformPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_poses_handlers-srv:message-val is deprecated.  Use niryo_robot_poses_handlers-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <GetTransformPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_poses_handlers-srv:position-val is deprecated.  Use niryo_robot_poses_handlers-srv:position instead.")
  (position m))

(cl:ensure-generic-function 'rpy-val :lambda-list '(m))
(cl:defmethod rpy-val ((m <GetTransformPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_poses_handlers-srv:rpy-val is deprecated.  Use niryo_robot_poses_handlers-srv:rpy instead.")
  (rpy m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTransformPose-response>) ostream)
  "Serializes a message object of type '<GetTransformPose-response>"
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
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rpy) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTransformPose-response>) istream)
  "Deserializes a message object of type '<GetTransformPose-response>"
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rpy) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTransformPose-response>)))
  "Returns string type for a service object of type '<GetTransformPose-response>"
  "niryo_robot_poses_handlers/GetTransformPoseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTransformPose-response)))
  "Returns string type for a service object of type 'GetTransformPose-response"
  "niryo_robot_poses_handlers/GetTransformPoseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTransformPose-response>)))
  "Returns md5sum for a message object of type '<GetTransformPose-response>"
  "65fe6112339c0f055bdcec45f6729881")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTransformPose-response)))
  "Returns md5sum for a message object of type 'GetTransformPose-response"
  "65fe6112339c0f055bdcec45f6729881")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTransformPose-response>)))
  "Returns full string definition for message of type '<GetTransformPose-response>"
  (cl:format cl:nil "int32 status~%string message~%geometry_msgs/Point position~%niryo_robot_msgs/RPY rpy~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: niryo_robot_msgs/RPY~%# roll, pitch and yaw~%~%float64 roll~%float64 pitch~%float64 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTransformPose-response)))
  "Returns full string definition for message of type 'GetTransformPose-response"
  (cl:format cl:nil "int32 status~%string message~%geometry_msgs/Point position~%niryo_robot_msgs/RPY rpy~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: niryo_robot_msgs/RPY~%# roll, pitch and yaw~%~%float64 roll~%float64 pitch~%float64 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTransformPose-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rpy))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTransformPose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTransformPose-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
    (cl:cons ':position (position msg))
    (cl:cons ':rpy (rpy msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetTransformPose)))
  'GetTransformPose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetTransformPose)))
  'GetTransformPose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTransformPose)))
  "Returns string type for a service object of type '<GetTransformPose>"
  "niryo_robot_poses_handlers/GetTransformPose")