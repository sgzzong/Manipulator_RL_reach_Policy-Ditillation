; Auto-generated. Do not edit!


(cl:in-package niryo_robot_sound-srv)


;//! \htmlinclude ManageSound-request.msg.html

(cl:defclass <ManageSound-request> (roslisp-msg-protocol:ros-message)
  ((sound_name
    :reader sound_name
    :initarg :sound_name
    :type cl:string
    :initform "")
   (action
    :reader action
    :initarg :action
    :type cl:fixnum
    :initform 0)
   (sound_data
    :reader sound_data
    :initarg :sound_data
    :type cl:string
    :initform ""))
)

(cl:defclass ManageSound-request (<ManageSound-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ManageSound-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ManageSound-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_sound-srv:<ManageSound-request> is deprecated: use niryo_robot_sound-srv:ManageSound-request instead.")))

(cl:ensure-generic-function 'sound_name-val :lambda-list '(m))
(cl:defmethod sound_name-val ((m <ManageSound-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_sound-srv:sound_name-val is deprecated.  Use niryo_robot_sound-srv:sound_name instead.")
  (sound_name m))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <ManageSound-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_sound-srv:action-val is deprecated.  Use niryo_robot_sound-srv:action instead.")
  (action m))

(cl:ensure-generic-function 'sound_data-val :lambda-list '(m))
(cl:defmethod sound_data-val ((m <ManageSound-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_sound-srv:sound_data-val is deprecated.  Use niryo_robot_sound-srv:sound_data instead.")
  (sound_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ManageSound-request>)))
    "Constants for message type '<ManageSound-request>"
  '((:ADD . 1)
    (:DELETE . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ManageSound-request)))
    "Constants for message type 'ManageSound-request"
  '((:ADD . 1)
    (:DELETE . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ManageSound-request>) ostream)
  "Serializes a message object of type '<ManageSound-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'sound_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'sound_name))
  (cl:let* ((signed (cl:slot-value msg 'action)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'sound_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'sound_data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ManageSound-request>) istream)
  "Deserializes a message object of type '<ManageSound-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sound_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'sound_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sound_data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'sound_data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ManageSound-request>)))
  "Returns string type for a service object of type '<ManageSound-request>"
  "niryo_robot_sound/ManageSoundRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ManageSound-request)))
  "Returns string type for a service object of type 'ManageSound-request"
  "niryo_robot_sound/ManageSoundRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ManageSound-request>)))
  "Returns md5sum for a message object of type '<ManageSound-request>"
  "4c96f2b7c9ccc8fcd4a9cc729611626b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ManageSound-request)))
  "Returns md5sum for a message object of type 'ManageSound-request"
  "4c96f2b7c9ccc8fcd4a9cc729611626b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ManageSound-request>)))
  "Returns full string definition for message of type '<ManageSound-request>"
  (cl:format cl:nil "string sound_name~%~%int8 ADD = 1~%int8 DELETE = 2~%int8 action~%~%# Data to add a new sound~%string sound_data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ManageSound-request)))
  "Returns full string definition for message of type 'ManageSound-request"
  (cl:format cl:nil "string sound_name~%~%int8 ADD = 1~%int8 DELETE = 2~%int8 action~%~%# Data to add a new sound~%string sound_data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ManageSound-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'sound_name))
     1
     4 (cl:length (cl:slot-value msg 'sound_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ManageSound-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ManageSound-request
    (cl:cons ':sound_name (sound_name msg))
    (cl:cons ':action (action msg))
    (cl:cons ':sound_data (sound_data msg))
))
;//! \htmlinclude ManageSound-response.msg.html

(cl:defclass <ManageSound-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass ManageSound-response (<ManageSound-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ManageSound-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ManageSound-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_sound-srv:<ManageSound-response> is deprecated: use niryo_robot_sound-srv:ManageSound-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <ManageSound-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_sound-srv:status-val is deprecated.  Use niryo_robot_sound-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ManageSound-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_sound-srv:message-val is deprecated.  Use niryo_robot_sound-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ManageSound-response>) ostream)
  "Serializes a message object of type '<ManageSound-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ManageSound-response>) istream)
  "Deserializes a message object of type '<ManageSound-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ManageSound-response>)))
  "Returns string type for a service object of type '<ManageSound-response>"
  "niryo_robot_sound/ManageSoundResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ManageSound-response)))
  "Returns string type for a service object of type 'ManageSound-response"
  "niryo_robot_sound/ManageSoundResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ManageSound-response>)))
  "Returns md5sum for a message object of type '<ManageSound-response>"
  "4c96f2b7c9ccc8fcd4a9cc729611626b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ManageSound-response)))
  "Returns md5sum for a message object of type 'ManageSound-response"
  "4c96f2b7c9ccc8fcd4a9cc729611626b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ManageSound-response>)))
  "Returns full string definition for message of type '<ManageSound-response>"
  (cl:format cl:nil "int32 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ManageSound-response)))
  "Returns full string definition for message of type 'ManageSound-response"
  (cl:format cl:nil "int32 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ManageSound-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ManageSound-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ManageSound-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ManageSound)))
  'ManageSound-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ManageSound)))
  'ManageSound-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ManageSound)))
  "Returns string type for a service object of type '<ManageSound>"
  "niryo_robot_sound/ManageSound")