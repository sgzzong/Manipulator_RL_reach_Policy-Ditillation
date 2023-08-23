; Auto-generated. Do not edit!


(cl:in-package niryo_robot_programs_manager-srv)


;//! \htmlinclude ExecuteProgram-request.msg.html

(cl:defclass <ExecuteProgram-request> (roslisp-msg-protocol:ros-message)
  ((execute_from_string
    :reader execute_from_string
    :initarg :execute_from_string
    :type cl:boolean
    :initform cl:nil)
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (code_string
    :reader code_string
    :initarg :code_string
    :type cl:string
    :initform "")
   (language
    :reader language
    :initarg :language
    :type niryo_robot_programs_manager-msg:ProgramLanguage
    :initform (cl:make-instance 'niryo_robot_programs_manager-msg:ProgramLanguage)))
)

(cl:defclass ExecuteProgram-request (<ExecuteProgram-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExecuteProgram-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExecuteProgram-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_programs_manager-srv:<ExecuteProgram-request> is deprecated: use niryo_robot_programs_manager-srv:ExecuteProgram-request instead.")))

(cl:ensure-generic-function 'execute_from_string-val :lambda-list '(m))
(cl:defmethod execute_from_string-val ((m <ExecuteProgram-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager-srv:execute_from_string-val is deprecated.  Use niryo_robot_programs_manager-srv:execute_from_string instead.")
  (execute_from_string m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <ExecuteProgram-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager-srv:name-val is deprecated.  Use niryo_robot_programs_manager-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'code_string-val :lambda-list '(m))
(cl:defmethod code_string-val ((m <ExecuteProgram-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager-srv:code_string-val is deprecated.  Use niryo_robot_programs_manager-srv:code_string instead.")
  (code_string m))

(cl:ensure-generic-function 'language-val :lambda-list '(m))
(cl:defmethod language-val ((m <ExecuteProgram-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager-srv:language-val is deprecated.  Use niryo_robot_programs_manager-srv:language instead.")
  (language m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExecuteProgram-request>) ostream)
  "Serializes a message object of type '<ExecuteProgram-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'execute_from_string) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'code_string))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'code_string))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'language) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExecuteProgram-request>) istream)
  "Deserializes a message object of type '<ExecuteProgram-request>"
    (cl:setf (cl:slot-value msg 'execute_from_string) (cl:not (cl:zerop (cl:read-byte istream))))
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
      (cl:setf (cl:slot-value msg 'code_string) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'code_string) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'language) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExecuteProgram-request>)))
  "Returns string type for a service object of type '<ExecuteProgram-request>"
  "niryo_robot_programs_manager/ExecuteProgramRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExecuteProgram-request)))
  "Returns string type for a service object of type 'ExecuteProgram-request"
  "niryo_robot_programs_manager/ExecuteProgramRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExecuteProgram-request>)))
  "Returns md5sum for a message object of type '<ExecuteProgram-request>"
  "a2c95eeee3b570399cd34c19756851e1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExecuteProgram-request)))
  "Returns md5sum for a message object of type 'ExecuteProgram-request"
  "a2c95eeee3b570399cd34c19756851e1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExecuteProgram-request>)))
  "Returns full string definition for message of type '<ExecuteProgram-request>"
  (cl:format cl:nil "bool execute_from_string~%~%string name~%string code_string~%~%niryo_robot_programs_manager/ProgramLanguage language~%~%================================================================================~%MSG: niryo_robot_programs_manager/ProgramLanguage~%int8 NONE = -1~%~%int8 ALL = 0~%~%# Runnable~%int8 PYTHON2 = 1~%int8 PYTHON3 = 2~%~%# Not Runnable~%int8 BLOCKLY = 66~%~%int8 used~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExecuteProgram-request)))
  "Returns full string definition for message of type 'ExecuteProgram-request"
  (cl:format cl:nil "bool execute_from_string~%~%string name~%string code_string~%~%niryo_robot_programs_manager/ProgramLanguage language~%~%================================================================================~%MSG: niryo_robot_programs_manager/ProgramLanguage~%int8 NONE = -1~%~%int8 ALL = 0~%~%# Runnable~%int8 PYTHON2 = 1~%int8 PYTHON3 = 2~%~%# Not Runnable~%int8 BLOCKLY = 66~%~%int8 used~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExecuteProgram-request>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'code_string))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'language))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExecuteProgram-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ExecuteProgram-request
    (cl:cons ':execute_from_string (execute_from_string msg))
    (cl:cons ':name (name msg))
    (cl:cons ':code_string (code_string msg))
    (cl:cons ':language (language msg))
))
;//! \htmlinclude ExecuteProgram-response.msg.html

(cl:defclass <ExecuteProgram-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform "")
   (output
    :reader output
    :initarg :output
    :type cl:string
    :initform ""))
)

(cl:defclass ExecuteProgram-response (<ExecuteProgram-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExecuteProgram-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExecuteProgram-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_programs_manager-srv:<ExecuteProgram-response> is deprecated: use niryo_robot_programs_manager-srv:ExecuteProgram-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <ExecuteProgram-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager-srv:status-val is deprecated.  Use niryo_robot_programs_manager-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ExecuteProgram-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager-srv:message-val is deprecated.  Use niryo_robot_programs_manager-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'output-val :lambda-list '(m))
(cl:defmethod output-val ((m <ExecuteProgram-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager-srv:output-val is deprecated.  Use niryo_robot_programs_manager-srv:output instead.")
  (output m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExecuteProgram-response>) ostream)
  "Serializes a message object of type '<ExecuteProgram-response>"
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'output))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'output))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExecuteProgram-response>) istream)
  "Deserializes a message object of type '<ExecuteProgram-response>"
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
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'output) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'output) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExecuteProgram-response>)))
  "Returns string type for a service object of type '<ExecuteProgram-response>"
  "niryo_robot_programs_manager/ExecuteProgramResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExecuteProgram-response)))
  "Returns string type for a service object of type 'ExecuteProgram-response"
  "niryo_robot_programs_manager/ExecuteProgramResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExecuteProgram-response>)))
  "Returns md5sum for a message object of type '<ExecuteProgram-response>"
  "a2c95eeee3b570399cd34c19756851e1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExecuteProgram-response)))
  "Returns md5sum for a message object of type 'ExecuteProgram-response"
  "a2c95eeee3b570399cd34c19756851e1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExecuteProgram-response>)))
  "Returns full string definition for message of type '<ExecuteProgram-response>"
  (cl:format cl:nil "int16 status~%string message~%string output~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExecuteProgram-response)))
  "Returns full string definition for message of type 'ExecuteProgram-response"
  (cl:format cl:nil "int16 status~%string message~%string output~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExecuteProgram-response>))
  (cl:+ 0
     2
     4 (cl:length (cl:slot-value msg 'message))
     4 (cl:length (cl:slot-value msg 'output))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExecuteProgram-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ExecuteProgram-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
    (cl:cons ':output (output msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ExecuteProgram)))
  'ExecuteProgram-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ExecuteProgram)))
  'ExecuteProgram-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExecuteProgram)))
  "Returns string type for a service object of type '<ExecuteProgram>"
  "niryo_robot_programs_manager/ExecuteProgram")