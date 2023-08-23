; Auto-generated. Do not edit!


(cl:in-package niryo_robot_rpi-srv)


;//! \htmlinclude SetPullup-request.msg.html

(cl:defclass <SetPullup-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (enable
    :reader enable
    :initarg :enable
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetPullup-request (<SetPullup-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPullup-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPullup-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_rpi-srv:<SetPullup-request> is deprecated: use niryo_robot_rpi-srv:SetPullup-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <SetPullup-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_rpi-srv:name-val is deprecated.  Use niryo_robot_rpi-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'enable-val :lambda-list '(m))
(cl:defmethod enable-val ((m <SetPullup-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_rpi-srv:enable-val is deprecated.  Use niryo_robot_rpi-srv:enable instead.")
  (enable m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPullup-request>) ostream)
  "Serializes a message object of type '<SetPullup-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPullup-request>) istream)
  "Deserializes a message object of type '<SetPullup-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'enable) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPullup-request>)))
  "Returns string type for a service object of type '<SetPullup-request>"
  "niryo_robot_rpi/SetPullupRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPullup-request)))
  "Returns string type for a service object of type 'SetPullup-request"
  "niryo_robot_rpi/SetPullupRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPullup-request>)))
  "Returns md5sum for a message object of type '<SetPullup-request>"
  "d13517c619d7e12dd61126d0d18d4c6b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPullup-request)))
  "Returns md5sum for a message object of type 'SetPullup-request"
  "d13517c619d7e12dd61126d0d18d4c6b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPullup-request>)))
  "Returns full string definition for message of type '<SetPullup-request>"
  (cl:format cl:nil "string name~%bool enable~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPullup-request)))
  "Returns full string definition for message of type 'SetPullup-request"
  (cl:format cl:nil "string name~%bool enable~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPullup-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPullup-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPullup-request
    (cl:cons ':name (name msg))
    (cl:cons ':enable (enable msg))
))
;//! \htmlinclude SetPullup-response.msg.html

(cl:defclass <SetPullup-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetPullup-response (<SetPullup-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPullup-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPullup-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_rpi-srv:<SetPullup-response> is deprecated: use niryo_robot_rpi-srv:SetPullup-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <SetPullup-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_rpi-srv:status-val is deprecated.  Use niryo_robot_rpi-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetPullup-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_rpi-srv:message-val is deprecated.  Use niryo_robot_rpi-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPullup-response>) ostream)
  "Serializes a message object of type '<SetPullup-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPullup-response>) istream)
  "Deserializes a message object of type '<SetPullup-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPullup-response>)))
  "Returns string type for a service object of type '<SetPullup-response>"
  "niryo_robot_rpi/SetPullupResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPullup-response)))
  "Returns string type for a service object of type 'SetPullup-response"
  "niryo_robot_rpi/SetPullupResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPullup-response>)))
  "Returns md5sum for a message object of type '<SetPullup-response>"
  "d13517c619d7e12dd61126d0d18d4c6b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPullup-response)))
  "Returns md5sum for a message object of type 'SetPullup-response"
  "d13517c619d7e12dd61126d0d18d4c6b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPullup-response>)))
  "Returns full string definition for message of type '<SetPullup-response>"
  (cl:format cl:nil "int32 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPullup-response)))
  "Returns full string definition for message of type 'SetPullup-response"
  (cl:format cl:nil "int32 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPullup-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPullup-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPullup-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetPullup)))
  'SetPullup-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetPullup)))
  'SetPullup-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPullup)))
  "Returns string type for a service object of type '<SetPullup>"
  "niryo_robot_rpi/SetPullup")