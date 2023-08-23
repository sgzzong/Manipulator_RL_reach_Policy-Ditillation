; Auto-generated. Do not edit!


(cl:in-package niryo_robot_programs_manager-msg)


;//! \htmlinclude ProgramIsRunning.msg.html

(cl:defclass <ProgramIsRunning> (roslisp-msg-protocol:ros-message)
  ((program_is_running
    :reader program_is_running
    :initarg :program_is_running
    :type cl:boolean
    :initform cl:nil)
   (last_execution_status
    :reader last_execution_status
    :initarg :last_execution_status
    :type cl:fixnum
    :initform 0)
   (last_execution_msg
    :reader last_execution_msg
    :initarg :last_execution_msg
    :type cl:string
    :initform ""))
)

(cl:defclass ProgramIsRunning (<ProgramIsRunning>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ProgramIsRunning>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ProgramIsRunning)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_programs_manager-msg:<ProgramIsRunning> is deprecated: use niryo_robot_programs_manager-msg:ProgramIsRunning instead.")))

(cl:ensure-generic-function 'program_is_running-val :lambda-list '(m))
(cl:defmethod program_is_running-val ((m <ProgramIsRunning>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager-msg:program_is_running-val is deprecated.  Use niryo_robot_programs_manager-msg:program_is_running instead.")
  (program_is_running m))

(cl:ensure-generic-function 'last_execution_status-val :lambda-list '(m))
(cl:defmethod last_execution_status-val ((m <ProgramIsRunning>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager-msg:last_execution_status-val is deprecated.  Use niryo_robot_programs_manager-msg:last_execution_status instead.")
  (last_execution_status m))

(cl:ensure-generic-function 'last_execution_msg-val :lambda-list '(m))
(cl:defmethod last_execution_msg-val ((m <ProgramIsRunning>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager-msg:last_execution_msg-val is deprecated.  Use niryo_robot_programs_manager-msg:last_execution_msg instead.")
  (last_execution_msg m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ProgramIsRunning>)))
    "Constants for message type '<ProgramIsRunning>"
  '((:EXECUTION_ERROR . -2)
    (:FILE_ERROR . -1)
    (:NONE . 0)
    (:PREEMPTED . 1)
    (:SUCCESS . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ProgramIsRunning)))
    "Constants for message type 'ProgramIsRunning"
  '((:EXECUTION_ERROR . -2)
    (:FILE_ERROR . -1)
    (:NONE . 0)
    (:PREEMPTED . 1)
    (:SUCCESS . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ProgramIsRunning>) ostream)
  "Serializes a message object of type '<ProgramIsRunning>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'program_is_running) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'last_execution_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'last_execution_msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'last_execution_msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ProgramIsRunning>) istream)
  "Deserializes a message object of type '<ProgramIsRunning>"
    (cl:setf (cl:slot-value msg 'program_is_running) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'last_execution_status) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'last_execution_msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'last_execution_msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ProgramIsRunning>)))
  "Returns string type for a message object of type '<ProgramIsRunning>"
  "niryo_robot_programs_manager/ProgramIsRunning")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ProgramIsRunning)))
  "Returns string type for a message object of type 'ProgramIsRunning"
  "niryo_robot_programs_manager/ProgramIsRunning")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ProgramIsRunning>)))
  "Returns md5sum for a message object of type '<ProgramIsRunning>"
  "66c2fadf0a0e8cb9f5b6407bff6f9fb1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ProgramIsRunning)))
  "Returns md5sum for a message object of type 'ProgramIsRunning"
  "66c2fadf0a0e8cb9f5b6407bff6f9fb1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ProgramIsRunning>)))
  "Returns full string definition for message of type '<ProgramIsRunning>"
  (cl:format cl:nil "bool program_is_running~%~%int8 EXECUTION_ERROR = -2~%int8 FILE_ERROR = -1~%int8 NONE = 0~%int8 PREEMPTED = 1~%int8 SUCCESS = 2~%~%int8 last_execution_status~%string last_execution_msg~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ProgramIsRunning)))
  "Returns full string definition for message of type 'ProgramIsRunning"
  (cl:format cl:nil "bool program_is_running~%~%int8 EXECUTION_ERROR = -2~%int8 FILE_ERROR = -1~%int8 NONE = 0~%int8 PREEMPTED = 1~%int8 SUCCESS = 2~%~%int8 last_execution_status~%string last_execution_msg~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ProgramIsRunning>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'last_execution_msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ProgramIsRunning>))
  "Converts a ROS message object to a list"
  (cl:list 'ProgramIsRunning
    (cl:cons ':program_is_running (program_is_running msg))
    (cl:cons ':last_execution_status (last_execution_status msg))
    (cl:cons ':last_execution_msg (last_execution_msg msg))
))
