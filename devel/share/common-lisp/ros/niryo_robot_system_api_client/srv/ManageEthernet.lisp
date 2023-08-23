; Auto-generated. Do not edit!


(cl:in-package niryo_robot_system_api_client-srv)


;//! \htmlinclude ManageEthernet-request.msg.html

(cl:defclass <ManageEthernet-request> (roslisp-msg-protocol:ros-message)
  ((profile
    :reader profile
    :initarg :profile
    :type cl:fixnum
    :initform 0)
   (ip
    :reader ip
    :initarg :ip
    :type cl:string
    :initform "")
   (mask
    :reader mask
    :initarg :mask
    :type cl:string
    :initform "")
   (gateway
    :reader gateway
    :initarg :gateway
    :type cl:string
    :initform "")
   (dns
    :reader dns
    :initarg :dns
    :type cl:string
    :initform ""))
)

(cl:defclass ManageEthernet-request (<ManageEthernet-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ManageEthernet-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ManageEthernet-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_system_api_client-srv:<ManageEthernet-request> is deprecated: use niryo_robot_system_api_client-srv:ManageEthernet-request instead.")))

(cl:ensure-generic-function 'profile-val :lambda-list '(m))
(cl:defmethod profile-val ((m <ManageEthernet-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_system_api_client-srv:profile-val is deprecated.  Use niryo_robot_system_api_client-srv:profile instead.")
  (profile m))

(cl:ensure-generic-function 'ip-val :lambda-list '(m))
(cl:defmethod ip-val ((m <ManageEthernet-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_system_api_client-srv:ip-val is deprecated.  Use niryo_robot_system_api_client-srv:ip instead.")
  (ip m))

(cl:ensure-generic-function 'mask-val :lambda-list '(m))
(cl:defmethod mask-val ((m <ManageEthernet-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_system_api_client-srv:mask-val is deprecated.  Use niryo_robot_system_api_client-srv:mask instead.")
  (mask m))

(cl:ensure-generic-function 'gateway-val :lambda-list '(m))
(cl:defmethod gateway-val ((m <ManageEthernet-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_system_api_client-srv:gateway-val is deprecated.  Use niryo_robot_system_api_client-srv:gateway instead.")
  (gateway m))

(cl:ensure-generic-function 'dns-val :lambda-list '(m))
(cl:defmethod dns-val ((m <ManageEthernet-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_system_api_client-srv:dns-val is deprecated.  Use niryo_robot_system_api_client-srv:dns instead.")
  (dns m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ManageEthernet-request>)))
    "Constants for message type '<ManageEthernet-request>"
  '((:STATIC . 1)
    (:AUTO . 2)
    (:CUSTOM . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ManageEthernet-request)))
    "Constants for message type 'ManageEthernet-request"
  '((:STATIC . 1)
    (:AUTO . 2)
    (:CUSTOM . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ManageEthernet-request>) ostream)
  "Serializes a message object of type '<ManageEthernet-request>"
  (cl:let* ((signed (cl:slot-value msg 'profile)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ip))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ip))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mask))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mask))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'gateway))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'gateway))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'dns))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'dns))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ManageEthernet-request>) istream)
  "Deserializes a message object of type '<ManageEthernet-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'profile) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ip) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ip) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mask) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mask) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gateway) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'gateway) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dns) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'dns) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ManageEthernet-request>)))
  "Returns string type for a service object of type '<ManageEthernet-request>"
  "niryo_robot_system_api_client/ManageEthernetRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ManageEthernet-request)))
  "Returns string type for a service object of type 'ManageEthernet-request"
  "niryo_robot_system_api_client/ManageEthernetRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ManageEthernet-request>)))
  "Returns md5sum for a message object of type '<ManageEthernet-request>"
  "0a76b4b10cb91c7af82dd73375850740")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ManageEthernet-request)))
  "Returns md5sum for a message object of type 'ManageEthernet-request"
  "0a76b4b10cb91c7af82dd73375850740")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ManageEthernet-request>)))
  "Returns full string definition for message of type '<ManageEthernet-request>"
  (cl:format cl:nil "int8 STATIC = 1~%int8 AUTO = 2~%int8 CUSTOM = 3~%~%int8 profile~%~%# Only for the custom profile~%string ip       # ex: '192.168.1.73'~%string mask     # ex: '255.255.255.0'~%string gateway  # ex: '192.168.1.1'~%# Optional~%string dns      # ex: '8.8.8.8 4.4.4.4' separated by spaces~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ManageEthernet-request)))
  "Returns full string definition for message of type 'ManageEthernet-request"
  (cl:format cl:nil "int8 STATIC = 1~%int8 AUTO = 2~%int8 CUSTOM = 3~%~%int8 profile~%~%# Only for the custom profile~%string ip       # ex: '192.168.1.73'~%string mask     # ex: '255.255.255.0'~%string gateway  # ex: '192.168.1.1'~%# Optional~%string dns      # ex: '8.8.8.8 4.4.4.4' separated by spaces~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ManageEthernet-request>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'ip))
     4 (cl:length (cl:slot-value msg 'mask))
     4 (cl:length (cl:slot-value msg 'gateway))
     4 (cl:length (cl:slot-value msg 'dns))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ManageEthernet-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ManageEthernet-request
    (cl:cons ':profile (profile msg))
    (cl:cons ':ip (ip msg))
    (cl:cons ':mask (mask msg))
    (cl:cons ':gateway (gateway msg))
    (cl:cons ':dns (dns msg))
))
;//! \htmlinclude ManageEthernet-response.msg.html

(cl:defclass <ManageEthernet-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass ManageEthernet-response (<ManageEthernet-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ManageEthernet-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ManageEthernet-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_system_api_client-srv:<ManageEthernet-response> is deprecated: use niryo_robot_system_api_client-srv:ManageEthernet-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <ManageEthernet-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_system_api_client-srv:status-val is deprecated.  Use niryo_robot_system_api_client-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ManageEthernet-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_system_api_client-srv:message-val is deprecated.  Use niryo_robot_system_api_client-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ManageEthernet-response>) ostream)
  "Serializes a message object of type '<ManageEthernet-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ManageEthernet-response>) istream)
  "Deserializes a message object of type '<ManageEthernet-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ManageEthernet-response>)))
  "Returns string type for a service object of type '<ManageEthernet-response>"
  "niryo_robot_system_api_client/ManageEthernetResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ManageEthernet-response)))
  "Returns string type for a service object of type 'ManageEthernet-response"
  "niryo_robot_system_api_client/ManageEthernetResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ManageEthernet-response>)))
  "Returns md5sum for a message object of type '<ManageEthernet-response>"
  "0a76b4b10cb91c7af82dd73375850740")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ManageEthernet-response)))
  "Returns md5sum for a message object of type 'ManageEthernet-response"
  "0a76b4b10cb91c7af82dd73375850740")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ManageEthernet-response>)))
  "Returns full string definition for message of type '<ManageEthernet-response>"
  (cl:format cl:nil "int32 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ManageEthernet-response)))
  "Returns full string definition for message of type 'ManageEthernet-response"
  (cl:format cl:nil "int32 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ManageEthernet-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ManageEthernet-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ManageEthernet-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ManageEthernet)))
  'ManageEthernet-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ManageEthernet)))
  'ManageEthernet-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ManageEthernet)))
  "Returns string type for a service object of type '<ManageEthernet>"
  "niryo_robot_system_api_client/ManageEthernet")