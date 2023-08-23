; Auto-generated. Do not edit!


(cl:in-package niryo_robot_system_api_client-srv)


;//! \htmlinclude ManageWifi-request.msg.html

(cl:defclass <ManageWifi-request> (roslisp-msg-protocol:ros-message)
  ((cmd
    :reader cmd
    :initarg :cmd
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ManageWifi-request (<ManageWifi-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ManageWifi-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ManageWifi-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_system_api_client-srv:<ManageWifi-request> is deprecated: use niryo_robot_system_api_client-srv:ManageWifi-request instead.")))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <ManageWifi-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_system_api_client-srv:cmd-val is deprecated.  Use niryo_robot_system_api_client-srv:cmd instead.")
  (cmd m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ManageWifi-request>)))
    "Constants for message type '<ManageWifi-request>"
  '((:HOTSPOT . 0)
    (:RESTART . 1)
    (:DEACTIVATE . 2)
    (:RECONNECT . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ManageWifi-request)))
    "Constants for message type 'ManageWifi-request"
  '((:HOTSPOT . 0)
    (:RESTART . 1)
    (:DEACTIVATE . 2)
    (:RECONNECT . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ManageWifi-request>) ostream)
  "Serializes a message object of type '<ManageWifi-request>"
  (cl:let* ((signed (cl:slot-value msg 'cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ManageWifi-request>) istream)
  "Deserializes a message object of type '<ManageWifi-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ManageWifi-request>)))
  "Returns string type for a service object of type '<ManageWifi-request>"
  "niryo_robot_system_api_client/ManageWifiRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ManageWifi-request)))
  "Returns string type for a service object of type 'ManageWifi-request"
  "niryo_robot_system_api_client/ManageWifiRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ManageWifi-request>)))
  "Returns md5sum for a message object of type '<ManageWifi-request>"
  "4d5ca4afcd5a152aa9811d5aebf0b66f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ManageWifi-request)))
  "Returns md5sum for a message object of type 'ManageWifi-request"
  "4d5ca4afcd5a152aa9811d5aebf0b66f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ManageWifi-request>)))
  "Returns full string definition for message of type '<ManageWifi-request>"
  (cl:format cl:nil "int8 HOTSPOT = 0~%int8 RESTART = 1~%int8 DEACTIVATE = 2~%int8 RECONNECT = 3~%~%int8 cmd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ManageWifi-request)))
  "Returns full string definition for message of type 'ManageWifi-request"
  (cl:format cl:nil "int8 HOTSPOT = 0~%int8 RESTART = 1~%int8 DEACTIVATE = 2~%int8 RECONNECT = 3~%~%int8 cmd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ManageWifi-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ManageWifi-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ManageWifi-request
    (cl:cons ':cmd (cmd msg))
))
;//! \htmlinclude ManageWifi-response.msg.html

(cl:defclass <ManageWifi-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass ManageWifi-response (<ManageWifi-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ManageWifi-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ManageWifi-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_system_api_client-srv:<ManageWifi-response> is deprecated: use niryo_robot_system_api_client-srv:ManageWifi-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <ManageWifi-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_system_api_client-srv:status-val is deprecated.  Use niryo_robot_system_api_client-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ManageWifi-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_system_api_client-srv:message-val is deprecated.  Use niryo_robot_system_api_client-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ManageWifi-response>) ostream)
  "Serializes a message object of type '<ManageWifi-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ManageWifi-response>) istream)
  "Deserializes a message object of type '<ManageWifi-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ManageWifi-response>)))
  "Returns string type for a service object of type '<ManageWifi-response>"
  "niryo_robot_system_api_client/ManageWifiResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ManageWifi-response)))
  "Returns string type for a service object of type 'ManageWifi-response"
  "niryo_robot_system_api_client/ManageWifiResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ManageWifi-response>)))
  "Returns md5sum for a message object of type '<ManageWifi-response>"
  "4d5ca4afcd5a152aa9811d5aebf0b66f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ManageWifi-response)))
  "Returns md5sum for a message object of type 'ManageWifi-response"
  "4d5ca4afcd5a152aa9811d5aebf0b66f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ManageWifi-response>)))
  "Returns full string definition for message of type '<ManageWifi-response>"
  (cl:format cl:nil "int32 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ManageWifi-response)))
  "Returns full string definition for message of type 'ManageWifi-response"
  (cl:format cl:nil "int32 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ManageWifi-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ManageWifi-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ManageWifi-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ManageWifi)))
  'ManageWifi-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ManageWifi)))
  'ManageWifi-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ManageWifi)))
  "Returns string type for a service object of type '<ManageWifi>"
  "niryo_robot_system_api_client/ManageWifi")