; Auto-generated. Do not edit!


(cl:in-package niryo_robot_database-srv)


;//! \htmlinclude AddFilePath-request.msg.html

(cl:defclass <AddFilePath-request> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (path
    :reader path
    :initarg :path
    :type cl:string
    :initform ""))
)

(cl:defclass AddFilePath-request (<AddFilePath-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddFilePath-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddFilePath-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_database-srv:<AddFilePath-request> is deprecated: use niryo_robot_database-srv:AddFilePath-request instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <AddFilePath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_database-srv:type-val is deprecated.  Use niryo_robot_database-srv:type instead.")
  (type m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <AddFilePath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_database-srv:name-val is deprecated.  Use niryo_robot_database-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <AddFilePath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_database-srv:path-val is deprecated.  Use niryo_robot_database-srv:path instead.")
  (path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddFilePath-request>) ostream)
  "Serializes a message object of type '<AddFilePath-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddFilePath-request>) istream)
  "Deserializes a message object of type '<AddFilePath-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddFilePath-request>)))
  "Returns string type for a service object of type '<AddFilePath-request>"
  "niryo_robot_database/AddFilePathRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddFilePath-request)))
  "Returns string type for a service object of type 'AddFilePath-request"
  "niryo_robot_database/AddFilePathRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddFilePath-request>)))
  "Returns md5sum for a message object of type '<AddFilePath-request>"
  "9b37d66f02e489bae639ec70c5dd2e80")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddFilePath-request)))
  "Returns md5sum for a message object of type 'AddFilePath-request"
  "9b37d66f02e489bae639ec70c5dd2e80")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddFilePath-request>)))
  "Returns full string definition for message of type '<AddFilePath-request>"
  (cl:format cl:nil "string type~%string name~%string path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddFilePath-request)))
  "Returns full string definition for message of type 'AddFilePath-request"
  (cl:format cl:nil "string type~%string name~%string path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddFilePath-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'type))
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddFilePath-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AddFilePath-request
    (cl:cons ':type (type msg))
    (cl:cons ':name (name msg))
    (cl:cons ':path (path msg))
))
;//! \htmlinclude AddFilePath-response.msg.html

(cl:defclass <AddFilePath-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass AddFilePath-response (<AddFilePath-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddFilePath-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddFilePath-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_database-srv:<AddFilePath-response> is deprecated: use niryo_robot_database-srv:AddFilePath-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <AddFilePath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_database-srv:status-val is deprecated.  Use niryo_robot_database-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <AddFilePath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_database-srv:message-val is deprecated.  Use niryo_robot_database-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddFilePath-response>) ostream)
  "Serializes a message object of type '<AddFilePath-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddFilePath-response>) istream)
  "Deserializes a message object of type '<AddFilePath-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddFilePath-response>)))
  "Returns string type for a service object of type '<AddFilePath-response>"
  "niryo_robot_database/AddFilePathResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddFilePath-response)))
  "Returns string type for a service object of type 'AddFilePath-response"
  "niryo_robot_database/AddFilePathResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddFilePath-response>)))
  "Returns md5sum for a message object of type '<AddFilePath-response>"
  "9b37d66f02e489bae639ec70c5dd2e80")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddFilePath-response)))
  "Returns md5sum for a message object of type 'AddFilePath-response"
  "9b37d66f02e489bae639ec70c5dd2e80")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddFilePath-response>)))
  "Returns full string definition for message of type '<AddFilePath-response>"
  (cl:format cl:nil "int32 status~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddFilePath-response)))
  "Returns full string definition for message of type 'AddFilePath-response"
  (cl:format cl:nil "int32 status~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddFilePath-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddFilePath-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AddFilePath-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AddFilePath)))
  'AddFilePath-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AddFilePath)))
  'AddFilePath-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddFilePath)))
  "Returns string type for a service object of type '<AddFilePath>"
  "niryo_robot_database/AddFilePath")