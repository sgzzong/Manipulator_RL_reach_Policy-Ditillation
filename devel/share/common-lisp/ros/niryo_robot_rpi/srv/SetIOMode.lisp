; Auto-generated. Do not edit!


(cl:in-package niryo_robot_rpi-srv)


;//! \htmlinclude SetIOMode-request.msg.html

(cl:defclass <SetIOMode-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetIOMode-request (<SetIOMode-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetIOMode-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetIOMode-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_rpi-srv:<SetIOMode-request> is deprecated: use niryo_robot_rpi-srv:SetIOMode-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <SetIOMode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_rpi-srv:name-val is deprecated.  Use niryo_robot_rpi-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <SetIOMode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_rpi-srv:mode-val is deprecated.  Use niryo_robot_rpi-srv:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SetIOMode-request>)))
    "Constants for message type '<SetIOMode-request>"
  '((:OUTPUT . 0)
    (:INPUT . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SetIOMode-request)))
    "Constants for message type 'SetIOMode-request"
  '((:OUTPUT . 0)
    (:INPUT . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetIOMode-request>) ostream)
  "Serializes a message object of type '<SetIOMode-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let* ((signed (cl:slot-value msg 'mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetIOMode-request>) istream)
  "Deserializes a message object of type '<SetIOMode-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetIOMode-request>)))
  "Returns string type for a service object of type '<SetIOMode-request>"
  "niryo_robot_rpi/SetIOModeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetIOMode-request)))
  "Returns string type for a service object of type 'SetIOMode-request"
  "niryo_robot_rpi/SetIOModeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetIOMode-request>)))
  "Returns md5sum for a message object of type '<SetIOMode-request>"
  "e64256c5a519b664f12a6733e4ed6478")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetIOMode-request)))
  "Returns md5sum for a message object of type 'SetIOMode-request"
  "e64256c5a519b664f12a6733e4ed6478")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetIOMode-request>)))
  "Returns full string definition for message of type '<SetIOMode-request>"
  (cl:format cl:nil "string name~%~%int8 OUTPUT = 0~%int8 INPUT = 1~%int8 mode~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetIOMode-request)))
  "Returns full string definition for message of type 'SetIOMode-request"
  (cl:format cl:nil "string name~%~%int8 OUTPUT = 0~%int8 INPUT = 1~%int8 mode~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetIOMode-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetIOMode-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetIOMode-request
    (cl:cons ':name (name msg))
    (cl:cons ':mode (mode msg))
))
;//! \htmlinclude SetIOMode-response.msg.html

(cl:defclass <SetIOMode-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetIOMode-response (<SetIOMode-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetIOMode-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetIOMode-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_rpi-srv:<SetIOMode-response> is deprecated: use niryo_robot_rpi-srv:SetIOMode-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <SetIOMode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_rpi-srv:status-val is deprecated.  Use niryo_robot_rpi-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetIOMode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_rpi-srv:message-val is deprecated.  Use niryo_robot_rpi-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetIOMode-response>) ostream)
  "Serializes a message object of type '<SetIOMode-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetIOMode-response>) istream)
  "Deserializes a message object of type '<SetIOMode-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetIOMode-response>)))
  "Returns string type for a service object of type '<SetIOMode-response>"
  "niryo_robot_rpi/SetIOModeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetIOMode-response)))
  "Returns string type for a service object of type 'SetIOMode-response"
  "niryo_robot_rpi/SetIOModeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetIOMode-response>)))
  "Returns md5sum for a message object of type '<SetIOMode-response>"
  "e64256c5a519b664f12a6733e4ed6478")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetIOMode-response)))
  "Returns md5sum for a message object of type 'SetIOMode-response"
  "e64256c5a519b664f12a6733e4ed6478")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetIOMode-response>)))
  "Returns full string definition for message of type '<SetIOMode-response>"
  (cl:format cl:nil "int32 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetIOMode-response)))
  "Returns full string definition for message of type 'SetIOMode-response"
  (cl:format cl:nil "int32 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetIOMode-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetIOMode-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetIOMode-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetIOMode)))
  'SetIOMode-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetIOMode)))
  'SetIOMode-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetIOMode)))
  "Returns string type for a service object of type '<SetIOMode>"
  "niryo_robot_rpi/SetIOMode")