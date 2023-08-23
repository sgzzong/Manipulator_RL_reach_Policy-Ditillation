; Auto-generated. Do not edit!


(cl:in-package niryo_robot_msgs-srv)


;//! \htmlinclude Trigger-request.msg.html

(cl:defclass <Trigger-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Trigger-request (<Trigger-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Trigger-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Trigger-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_msgs-srv:<Trigger-request> is deprecated: use niryo_robot_msgs-srv:Trigger-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Trigger-request>) ostream)
  "Serializes a message object of type '<Trigger-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Trigger-request>) istream)
  "Deserializes a message object of type '<Trigger-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Trigger-request>)))
  "Returns string type for a service object of type '<Trigger-request>"
  "niryo_robot_msgs/TriggerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Trigger-request)))
  "Returns string type for a service object of type 'Trigger-request"
  "niryo_robot_msgs/TriggerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Trigger-request>)))
  "Returns md5sum for a message object of type '<Trigger-request>"
  "2c1d00fb8b4e78420f43d93d5292a429")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Trigger-request)))
  "Returns md5sum for a message object of type 'Trigger-request"
  "2c1d00fb8b4e78420f43d93d5292a429")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Trigger-request>)))
  "Returns full string definition for message of type '<Trigger-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Trigger-request)))
  "Returns full string definition for message of type 'Trigger-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Trigger-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Trigger-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Trigger-request
))
;//! \htmlinclude Trigger-response.msg.html

(cl:defclass <Trigger-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass Trigger-response (<Trigger-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Trigger-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Trigger-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_msgs-srv:<Trigger-response> is deprecated: use niryo_robot_msgs-srv:Trigger-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <Trigger-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_msgs-srv:status-val is deprecated.  Use niryo_robot_msgs-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <Trigger-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_msgs-srv:message-val is deprecated.  Use niryo_robot_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Trigger-response>) ostream)
  "Serializes a message object of type '<Trigger-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Trigger-response>) istream)
  "Deserializes a message object of type '<Trigger-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Trigger-response>)))
  "Returns string type for a service object of type '<Trigger-response>"
  "niryo_robot_msgs/TriggerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Trigger-response)))
  "Returns string type for a service object of type 'Trigger-response"
  "niryo_robot_msgs/TriggerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Trigger-response>)))
  "Returns md5sum for a message object of type '<Trigger-response>"
  "2c1d00fb8b4e78420f43d93d5292a429")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Trigger-response)))
  "Returns md5sum for a message object of type 'Trigger-response"
  "2c1d00fb8b4e78420f43d93d5292a429")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Trigger-response>)))
  "Returns full string definition for message of type '<Trigger-response>"
  (cl:format cl:nil "int32 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Trigger-response)))
  "Returns full string definition for message of type 'Trigger-response"
  (cl:format cl:nil "int32 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Trigger-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Trigger-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Trigger-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Trigger)))
  'Trigger-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Trigger)))
  'Trigger-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Trigger)))
  "Returns string type for a service object of type '<Trigger>"
  "niryo_robot_msgs/Trigger")