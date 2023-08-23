; Auto-generated. Do not edit!


(cl:in-package niryo_robot_poses_handlers-srv)


;//! \htmlinclude GetWorkspaceMatrixPoses-request.msg.html

(cl:defclass <GetWorkspaceMatrixPoses-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass GetWorkspaceMatrixPoses-request (<GetWorkspaceMatrixPoses-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetWorkspaceMatrixPoses-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetWorkspaceMatrixPoses-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_poses_handlers-srv:<GetWorkspaceMatrixPoses-request> is deprecated: use niryo_robot_poses_handlers-srv:GetWorkspaceMatrixPoses-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <GetWorkspaceMatrixPoses-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_poses_handlers-srv:name-val is deprecated.  Use niryo_robot_poses_handlers-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetWorkspaceMatrixPoses-request>) ostream)
  "Serializes a message object of type '<GetWorkspaceMatrixPoses-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetWorkspaceMatrixPoses-request>) istream)
  "Deserializes a message object of type '<GetWorkspaceMatrixPoses-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetWorkspaceMatrixPoses-request>)))
  "Returns string type for a service object of type '<GetWorkspaceMatrixPoses-request>"
  "niryo_robot_poses_handlers/GetWorkspaceMatrixPosesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetWorkspaceMatrixPoses-request)))
  "Returns string type for a service object of type 'GetWorkspaceMatrixPoses-request"
  "niryo_robot_poses_handlers/GetWorkspaceMatrixPosesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetWorkspaceMatrixPoses-request>)))
  "Returns md5sum for a message object of type '<GetWorkspaceMatrixPoses-request>"
  "de911ebce11ce8c8baf76b4fe50746b0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetWorkspaceMatrixPoses-request)))
  "Returns md5sum for a message object of type 'GetWorkspaceMatrixPoses-request"
  "de911ebce11ce8c8baf76b4fe50746b0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetWorkspaceMatrixPoses-request>)))
  "Returns full string definition for message of type '<GetWorkspaceMatrixPoses-request>"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetWorkspaceMatrixPoses-request)))
  "Returns full string definition for message of type 'GetWorkspaceMatrixPoses-request"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetWorkspaceMatrixPoses-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetWorkspaceMatrixPoses-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetWorkspaceMatrixPoses-request
    (cl:cons ':name (name msg))
))
;//! \htmlinclude GetWorkspaceMatrixPoses-response.msg.html

(cl:defclass <GetWorkspaceMatrixPoses-response> (roslisp-msg-protocol:ros-message)
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
   (matrix_position
    :reader matrix_position
    :initarg :matrix_position
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (matrix_orientation
    :reader matrix_orientation
    :initarg :matrix_orientation
    :type (cl:vector geometry_msgs-msg:Quaternion)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Quaternion :initial-element (cl:make-instance 'geometry_msgs-msg:Quaternion))))
)

(cl:defclass GetWorkspaceMatrixPoses-response (<GetWorkspaceMatrixPoses-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetWorkspaceMatrixPoses-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetWorkspaceMatrixPoses-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_poses_handlers-srv:<GetWorkspaceMatrixPoses-response> is deprecated: use niryo_robot_poses_handlers-srv:GetWorkspaceMatrixPoses-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <GetWorkspaceMatrixPoses-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_poses_handlers-srv:status-val is deprecated.  Use niryo_robot_poses_handlers-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetWorkspaceMatrixPoses-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_poses_handlers-srv:message-val is deprecated.  Use niryo_robot_poses_handlers-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'matrix_position-val :lambda-list '(m))
(cl:defmethod matrix_position-val ((m <GetWorkspaceMatrixPoses-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_poses_handlers-srv:matrix_position-val is deprecated.  Use niryo_robot_poses_handlers-srv:matrix_position instead.")
  (matrix_position m))

(cl:ensure-generic-function 'matrix_orientation-val :lambda-list '(m))
(cl:defmethod matrix_orientation-val ((m <GetWorkspaceMatrixPoses-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_poses_handlers-srv:matrix_orientation-val is deprecated.  Use niryo_robot_poses_handlers-srv:matrix_orientation instead.")
  (matrix_orientation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetWorkspaceMatrixPoses-response>) ostream)
  "Serializes a message object of type '<GetWorkspaceMatrixPoses-response>"
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
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'matrix_position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'matrix_position))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'matrix_orientation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'matrix_orientation))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetWorkspaceMatrixPoses-response>) istream)
  "Deserializes a message object of type '<GetWorkspaceMatrixPoses-response>"
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
  (cl:setf (cl:slot-value msg 'matrix_position) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'matrix_position)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'matrix_orientation) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'matrix_orientation)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Quaternion))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetWorkspaceMatrixPoses-response>)))
  "Returns string type for a service object of type '<GetWorkspaceMatrixPoses-response>"
  "niryo_robot_poses_handlers/GetWorkspaceMatrixPosesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetWorkspaceMatrixPoses-response)))
  "Returns string type for a service object of type 'GetWorkspaceMatrixPoses-response"
  "niryo_robot_poses_handlers/GetWorkspaceMatrixPosesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetWorkspaceMatrixPoses-response>)))
  "Returns md5sum for a message object of type '<GetWorkspaceMatrixPoses-response>"
  "de911ebce11ce8c8baf76b4fe50746b0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetWorkspaceMatrixPoses-response)))
  "Returns md5sum for a message object of type 'GetWorkspaceMatrixPoses-response"
  "de911ebce11ce8c8baf76b4fe50746b0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetWorkspaceMatrixPoses-response>)))
  "Returns full string definition for message of type '<GetWorkspaceMatrixPoses-response>"
  (cl:format cl:nil "int32 status~%string message~%geometry_msgs/Point[] matrix_position~%geometry_msgs/Quaternion[] matrix_orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetWorkspaceMatrixPoses-response)))
  "Returns full string definition for message of type 'GetWorkspaceMatrixPoses-response"
  (cl:format cl:nil "int32 status~%string message~%geometry_msgs/Point[] matrix_position~%geometry_msgs/Quaternion[] matrix_orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetWorkspaceMatrixPoses-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'matrix_position) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'matrix_orientation) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetWorkspaceMatrixPoses-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetWorkspaceMatrixPoses-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
    (cl:cons ':matrix_position (matrix_position msg))
    (cl:cons ':matrix_orientation (matrix_orientation msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetWorkspaceMatrixPoses)))
  'GetWorkspaceMatrixPoses-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetWorkspaceMatrixPoses)))
  'GetWorkspaceMatrixPoses-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetWorkspaceMatrixPoses)))
  "Returns string type for a service object of type '<GetWorkspaceMatrixPoses>"
  "niryo_robot_poses_handlers/GetWorkspaceMatrixPoses")