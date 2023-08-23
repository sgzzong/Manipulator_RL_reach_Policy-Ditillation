; Auto-generated. Do not edit!


(cl:in-package niryo_robot_programs_manager-srv)


;//! \htmlinclude ManageProgram-request.msg.html

(cl:defclass <ManageProgram-request> (roslisp-msg-protocol:ros-message)
  ((cmd
    :reader cmd
    :initarg :cmd
    :type cl:fixnum
    :initform 0)
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (language
    :reader language
    :initarg :language
    :type niryo_robot_programs_manager-msg:ProgramLanguage
    :initform (cl:make-instance 'niryo_robot_programs_manager-msg:ProgramLanguage))
   (code
    :reader code
    :initarg :code
    :type cl:string
    :initform "")
   (description
    :reader description
    :initarg :description
    :type cl:string
    :initform "")
   (allow_overwrite
    :reader allow_overwrite
    :initarg :allow_overwrite
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ManageProgram-request (<ManageProgram-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ManageProgram-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ManageProgram-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_programs_manager-srv:<ManageProgram-request> is deprecated: use niryo_robot_programs_manager-srv:ManageProgram-request instead.")))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <ManageProgram-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager-srv:cmd-val is deprecated.  Use niryo_robot_programs_manager-srv:cmd instead.")
  (cmd m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <ManageProgram-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager-srv:name-val is deprecated.  Use niryo_robot_programs_manager-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'language-val :lambda-list '(m))
(cl:defmethod language-val ((m <ManageProgram-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager-srv:language-val is deprecated.  Use niryo_robot_programs_manager-srv:language instead.")
  (language m))

(cl:ensure-generic-function 'code-val :lambda-list '(m))
(cl:defmethod code-val ((m <ManageProgram-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager-srv:code-val is deprecated.  Use niryo_robot_programs_manager-srv:code instead.")
  (code m))

(cl:ensure-generic-function 'description-val :lambda-list '(m))
(cl:defmethod description-val ((m <ManageProgram-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager-srv:description-val is deprecated.  Use niryo_robot_programs_manager-srv:description instead.")
  (description m))

(cl:ensure-generic-function 'allow_overwrite-val :lambda-list '(m))
(cl:defmethod allow_overwrite-val ((m <ManageProgram-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager-srv:allow_overwrite-val is deprecated.  Use niryo_robot_programs_manager-srv:allow_overwrite instead.")
  (allow_overwrite m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ManageProgram-request>)))
    "Constants for message type '<ManageProgram-request>"
  '((:SAVE . 1)
    (:DELETE . -1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ManageProgram-request)))
    "Constants for message type 'ManageProgram-request"
  '((:SAVE . 1)
    (:DELETE . -1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ManageProgram-request>) ostream)
  "Serializes a message object of type '<ManageProgram-request>"
  (cl:let* ((signed (cl:slot-value msg 'cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'language) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'code))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'code))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'description))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'description))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'allow_overwrite) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ManageProgram-request>) istream)
  "Deserializes a message object of type '<ManageProgram-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'language) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'code) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'code) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'description) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'description) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'allow_overwrite) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ManageProgram-request>)))
  "Returns string type for a service object of type '<ManageProgram-request>"
  "niryo_robot_programs_manager/ManageProgramRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ManageProgram-request)))
  "Returns string type for a service object of type 'ManageProgram-request"
  "niryo_robot_programs_manager/ManageProgramRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ManageProgram-request>)))
  "Returns md5sum for a message object of type '<ManageProgram-request>"
  "c7b681976ba3e7a74583c11ce955db81")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ManageProgram-request)))
  "Returns md5sum for a message object of type 'ManageProgram-request"
  "c7b681976ba3e7a74583c11ce955db81")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ManageProgram-request>)))
  "Returns full string definition for message of type '<ManageProgram-request>"
  (cl:format cl:nil "# Command~%int32 SAVE = 1~%int32 DELETE = -1~%int8 cmd~%~%# Program Name~%string name~%~%# - Creation~%niryo_robot_programs_manager/ProgramLanguage language~%~%string code~%string description~%~%bool allow_overwrite~%~%================================================================================~%MSG: niryo_robot_programs_manager/ProgramLanguage~%int8 NONE = -1~%~%int8 ALL = 0~%~%# Runnable~%int8 PYTHON2 = 1~%int8 PYTHON3 = 2~%~%# Not Runnable~%int8 BLOCKLY = 66~%~%int8 used~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ManageProgram-request)))
  "Returns full string definition for message of type 'ManageProgram-request"
  (cl:format cl:nil "# Command~%int32 SAVE = 1~%int32 DELETE = -1~%int8 cmd~%~%# Program Name~%string name~%~%# - Creation~%niryo_robot_programs_manager/ProgramLanguage language~%~%string code~%string description~%~%bool allow_overwrite~%~%================================================================================~%MSG: niryo_robot_programs_manager/ProgramLanguage~%int8 NONE = -1~%~%int8 ALL = 0~%~%# Runnable~%int8 PYTHON2 = 1~%int8 PYTHON3 = 2~%~%# Not Runnable~%int8 BLOCKLY = 66~%~%int8 used~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ManageProgram-request>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'language))
     4 (cl:length (cl:slot-value msg 'code))
     4 (cl:length (cl:slot-value msg 'description))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ManageProgram-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ManageProgram-request
    (cl:cons ':cmd (cmd msg))
    (cl:cons ':name (name msg))
    (cl:cons ':language (language msg))
    (cl:cons ':code (code msg))
    (cl:cons ':description (description msg))
    (cl:cons ':allow_overwrite (allow_overwrite msg))
))
;//! \htmlinclude ManageProgram-response.msg.html

(cl:defclass <ManageProgram-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass ManageProgram-response (<ManageProgram-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ManageProgram-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ManageProgram-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_programs_manager-srv:<ManageProgram-response> is deprecated: use niryo_robot_programs_manager-srv:ManageProgram-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <ManageProgram-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager-srv:status-val is deprecated.  Use niryo_robot_programs_manager-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ManageProgram-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager-srv:message-val is deprecated.  Use niryo_robot_programs_manager-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ManageProgram-response>) ostream)
  "Serializes a message object of type '<ManageProgram-response>"
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ManageProgram-response>) istream)
  "Deserializes a message object of type '<ManageProgram-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ManageProgram-response>)))
  "Returns string type for a service object of type '<ManageProgram-response>"
  "niryo_robot_programs_manager/ManageProgramResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ManageProgram-response)))
  "Returns string type for a service object of type 'ManageProgram-response"
  "niryo_robot_programs_manager/ManageProgramResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ManageProgram-response>)))
  "Returns md5sum for a message object of type '<ManageProgram-response>"
  "c7b681976ba3e7a74583c11ce955db81")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ManageProgram-response)))
  "Returns md5sum for a message object of type 'ManageProgram-response"
  "c7b681976ba3e7a74583c11ce955db81")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ManageProgram-response>)))
  "Returns full string definition for message of type '<ManageProgram-response>"
  (cl:format cl:nil "int16 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ManageProgram-response)))
  "Returns full string definition for message of type 'ManageProgram-response"
  (cl:format cl:nil "int16 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ManageProgram-response>))
  (cl:+ 0
     2
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ManageProgram-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ManageProgram-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ManageProgram)))
  'ManageProgram-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ManageProgram)))
  'ManageProgram-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ManageProgram)))
  "Returns string type for a service object of type '<ManageProgram>"
  "niryo_robot_programs_manager/ManageProgram")