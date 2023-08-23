; Auto-generated. Do not edit!


(cl:in-package niryo_robot_database-srv)


;//! \htmlinclude RmFilePath-request.msg.html

(cl:defclass <RmFilePath-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:string
    :initform ""))
)

(cl:defclass RmFilePath-request (<RmFilePath-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RmFilePath-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RmFilePath-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_database-srv:<RmFilePath-request> is deprecated: use niryo_robot_database-srv:RmFilePath-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <RmFilePath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_database-srv:id-val is deprecated.  Use niryo_robot_database-srv:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RmFilePath-request>) ostream)
  "Serializes a message object of type '<RmFilePath-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RmFilePath-request>) istream)
  "Deserializes a message object of type '<RmFilePath-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RmFilePath-request>)))
  "Returns string type for a service object of type '<RmFilePath-request>"
  "niryo_robot_database/RmFilePathRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RmFilePath-request)))
  "Returns string type for a service object of type 'RmFilePath-request"
  "niryo_robot_database/RmFilePathRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RmFilePath-request>)))
  "Returns md5sum for a message object of type '<RmFilePath-request>"
  "9c7652f8ca86117a5e2260e9a8afa960")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RmFilePath-request)))
  "Returns md5sum for a message object of type 'RmFilePath-request"
  "9c7652f8ca86117a5e2260e9a8afa960")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RmFilePath-request>)))
  "Returns full string definition for message of type '<RmFilePath-request>"
  (cl:format cl:nil "string id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RmFilePath-request)))
  "Returns full string definition for message of type 'RmFilePath-request"
  (cl:format cl:nil "string id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RmFilePath-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RmFilePath-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RmFilePath-request
    (cl:cons ':id (id msg))
))
;//! \htmlinclude RmFilePath-response.msg.html

(cl:defclass <RmFilePath-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass RmFilePath-response (<RmFilePath-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RmFilePath-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RmFilePath-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_database-srv:<RmFilePath-response> is deprecated: use niryo_robot_database-srv:RmFilePath-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <RmFilePath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_database-srv:status-val is deprecated.  Use niryo_robot_database-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <RmFilePath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_database-srv:message-val is deprecated.  Use niryo_robot_database-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RmFilePath-response>) ostream)
  "Serializes a message object of type '<RmFilePath-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RmFilePath-response>) istream)
  "Deserializes a message object of type '<RmFilePath-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RmFilePath-response>)))
  "Returns string type for a service object of type '<RmFilePath-response>"
  "niryo_robot_database/RmFilePathResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RmFilePath-response)))
  "Returns string type for a service object of type 'RmFilePath-response"
  "niryo_robot_database/RmFilePathResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RmFilePath-response>)))
  "Returns md5sum for a message object of type '<RmFilePath-response>"
  "9c7652f8ca86117a5e2260e9a8afa960")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RmFilePath-response)))
  "Returns md5sum for a message object of type 'RmFilePath-response"
  "9c7652f8ca86117a5e2260e9a8afa960")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RmFilePath-response>)))
  "Returns full string definition for message of type '<RmFilePath-response>"
  (cl:format cl:nil "int32 status~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RmFilePath-response)))
  "Returns full string definition for message of type 'RmFilePath-response"
  (cl:format cl:nil "int32 status~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RmFilePath-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RmFilePath-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RmFilePath-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RmFilePath)))
  'RmFilePath-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RmFilePath)))
  'RmFilePath-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RmFilePath)))
  "Returns string type for a service object of type '<RmFilePath>"
  "niryo_robot_database/RmFilePath")