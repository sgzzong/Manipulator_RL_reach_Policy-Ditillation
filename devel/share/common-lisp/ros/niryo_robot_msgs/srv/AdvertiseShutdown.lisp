; Auto-generated. Do not edit!


(cl:in-package niryo_robot_msgs-srv)


;//! \htmlinclude AdvertiseShutdown-request.msg.html

(cl:defclass <AdvertiseShutdown-request> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass AdvertiseShutdown-request (<AdvertiseShutdown-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AdvertiseShutdown-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AdvertiseShutdown-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_msgs-srv:<AdvertiseShutdown-request> is deprecated: use niryo_robot_msgs-srv:AdvertiseShutdown-request instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <AdvertiseShutdown-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_msgs-srv:value-val is deprecated.  Use niryo_robot_msgs-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AdvertiseShutdown-request>)))
    "Constants for message type '<AdvertiseShutdown-request>"
  '((:SHUTDOWN . 1)
    (:REBOOT . 2)
    (:UPDATE . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AdvertiseShutdown-request)))
    "Constants for message type 'AdvertiseShutdown-request"
  '((:SHUTDOWN . 1)
    (:REBOOT . 2)
    (:UPDATE . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AdvertiseShutdown-request>) ostream)
  "Serializes a message object of type '<AdvertiseShutdown-request>"
  (cl:let* ((signed (cl:slot-value msg 'value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AdvertiseShutdown-request>) istream)
  "Deserializes a message object of type '<AdvertiseShutdown-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AdvertiseShutdown-request>)))
  "Returns string type for a service object of type '<AdvertiseShutdown-request>"
  "niryo_robot_msgs/AdvertiseShutdownRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AdvertiseShutdown-request)))
  "Returns string type for a service object of type 'AdvertiseShutdown-request"
  "niryo_robot_msgs/AdvertiseShutdownRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AdvertiseShutdown-request>)))
  "Returns md5sum for a message object of type '<AdvertiseShutdown-request>"
  "db3082007b6af7d47710cdb951c124e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AdvertiseShutdown-request)))
  "Returns md5sum for a message object of type 'AdvertiseShutdown-request"
  "db3082007b6af7d47710cdb951c124e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AdvertiseShutdown-request>)))
  "Returns full string definition for message of type '<AdvertiseShutdown-request>"
  (cl:format cl:nil "int8 SHUTDOWN=1~%int8 REBOOT=2~%int8 UPDATE=3~%~%int8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AdvertiseShutdown-request)))
  "Returns full string definition for message of type 'AdvertiseShutdown-request"
  (cl:format cl:nil "int8 SHUTDOWN=1~%int8 REBOOT=2~%int8 UPDATE=3~%~%int8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AdvertiseShutdown-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AdvertiseShutdown-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AdvertiseShutdown-request
    (cl:cons ':value (value msg))
))
;//! \htmlinclude AdvertiseShutdown-response.msg.html

(cl:defclass <AdvertiseShutdown-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass AdvertiseShutdown-response (<AdvertiseShutdown-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AdvertiseShutdown-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AdvertiseShutdown-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_msgs-srv:<AdvertiseShutdown-response> is deprecated: use niryo_robot_msgs-srv:AdvertiseShutdown-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <AdvertiseShutdown-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_msgs-srv:status-val is deprecated.  Use niryo_robot_msgs-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <AdvertiseShutdown-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_msgs-srv:message-val is deprecated.  Use niryo_robot_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AdvertiseShutdown-response>) ostream)
  "Serializes a message object of type '<AdvertiseShutdown-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AdvertiseShutdown-response>) istream)
  "Deserializes a message object of type '<AdvertiseShutdown-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AdvertiseShutdown-response>)))
  "Returns string type for a service object of type '<AdvertiseShutdown-response>"
  "niryo_robot_msgs/AdvertiseShutdownResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AdvertiseShutdown-response)))
  "Returns string type for a service object of type 'AdvertiseShutdown-response"
  "niryo_robot_msgs/AdvertiseShutdownResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AdvertiseShutdown-response>)))
  "Returns md5sum for a message object of type '<AdvertiseShutdown-response>"
  "db3082007b6af7d47710cdb951c124e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AdvertiseShutdown-response)))
  "Returns md5sum for a message object of type 'AdvertiseShutdown-response"
  "db3082007b6af7d47710cdb951c124e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AdvertiseShutdown-response>)))
  "Returns full string definition for message of type '<AdvertiseShutdown-response>"
  (cl:format cl:nil "int32 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AdvertiseShutdown-response)))
  "Returns full string definition for message of type 'AdvertiseShutdown-response"
  (cl:format cl:nil "int32 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AdvertiseShutdown-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AdvertiseShutdown-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AdvertiseShutdown-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AdvertiseShutdown)))
  'AdvertiseShutdown-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AdvertiseShutdown)))
  'AdvertiseShutdown-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AdvertiseShutdown)))
  "Returns string type for a service object of type '<AdvertiseShutdown>"
  "niryo_robot_msgs/AdvertiseShutdown")