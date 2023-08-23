; Auto-generated. Do not edit!


(cl:in-package niryo_robot_rpi-srv)


;//! \htmlinclude GetDigitalIO-request.msg.html

(cl:defclass <GetDigitalIO-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass GetDigitalIO-request (<GetDigitalIO-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetDigitalIO-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetDigitalIO-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_rpi-srv:<GetDigitalIO-request> is deprecated: use niryo_robot_rpi-srv:GetDigitalIO-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <GetDigitalIO-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_rpi-srv:name-val is deprecated.  Use niryo_robot_rpi-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetDigitalIO-request>) ostream)
  "Serializes a message object of type '<GetDigitalIO-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetDigitalIO-request>) istream)
  "Deserializes a message object of type '<GetDigitalIO-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetDigitalIO-request>)))
  "Returns string type for a service object of type '<GetDigitalIO-request>"
  "niryo_robot_rpi/GetDigitalIORequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDigitalIO-request)))
  "Returns string type for a service object of type 'GetDigitalIO-request"
  "niryo_robot_rpi/GetDigitalIORequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetDigitalIO-request>)))
  "Returns md5sum for a message object of type '<GetDigitalIO-request>"
  "ed94c4d2f8ee880bde6769a73e97a41e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetDigitalIO-request)))
  "Returns md5sum for a message object of type 'GetDigitalIO-request"
  "ed94c4d2f8ee880bde6769a73e97a41e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetDigitalIO-request>)))
  "Returns full string definition for message of type '<GetDigitalIO-request>"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetDigitalIO-request)))
  "Returns full string definition for message of type 'GetDigitalIO-request"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetDigitalIO-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetDigitalIO-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetDigitalIO-request
    (cl:cons ':name (name msg))
))
;//! \htmlinclude GetDigitalIO-response.msg.html

(cl:defclass <GetDigitalIO-response> (roslisp-msg-protocol:ros-message)
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
   (value
    :reader value
    :initarg :value
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GetDigitalIO-response (<GetDigitalIO-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetDigitalIO-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetDigitalIO-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_rpi-srv:<GetDigitalIO-response> is deprecated: use niryo_robot_rpi-srv:GetDigitalIO-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <GetDigitalIO-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_rpi-srv:status-val is deprecated.  Use niryo_robot_rpi-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetDigitalIO-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_rpi-srv:message-val is deprecated.  Use niryo_robot_rpi-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <GetDigitalIO-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_rpi-srv:value-val is deprecated.  Use niryo_robot_rpi-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetDigitalIO-response>) ostream)
  "Serializes a message object of type '<GetDigitalIO-response>"
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'value) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetDigitalIO-response>) istream)
  "Deserializes a message object of type '<GetDigitalIO-response>"
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
    (cl:setf (cl:slot-value msg 'value) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetDigitalIO-response>)))
  "Returns string type for a service object of type '<GetDigitalIO-response>"
  "niryo_robot_rpi/GetDigitalIOResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDigitalIO-response)))
  "Returns string type for a service object of type 'GetDigitalIO-response"
  "niryo_robot_rpi/GetDigitalIOResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetDigitalIO-response>)))
  "Returns md5sum for a message object of type '<GetDigitalIO-response>"
  "ed94c4d2f8ee880bde6769a73e97a41e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetDigitalIO-response)))
  "Returns md5sum for a message object of type 'GetDigitalIO-response"
  "ed94c4d2f8ee880bde6769a73e97a41e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetDigitalIO-response>)))
  "Returns full string definition for message of type '<GetDigitalIO-response>"
  (cl:format cl:nil "int32 status~%string message~%~%bool value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetDigitalIO-response)))
  "Returns full string definition for message of type 'GetDigitalIO-response"
  (cl:format cl:nil "int32 status~%string message~%~%bool value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetDigitalIO-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetDigitalIO-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetDigitalIO-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
    (cl:cons ':value (value msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetDigitalIO)))
  'GetDigitalIO-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetDigitalIO)))
  'GetDigitalIO-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDigitalIO)))
  "Returns string type for a service object of type '<GetDigitalIO>"
  "niryo_robot_rpi/GetDigitalIO")