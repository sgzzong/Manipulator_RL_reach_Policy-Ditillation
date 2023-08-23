; Auto-generated. Do not edit!


(cl:in-package niryo_robot_status-msg)


;//! \htmlinclude RobotStatus.msg.html

(cl:defclass <RobotStatus> (roslisp-msg-protocol:ros-message)
  ((robot_status
    :reader robot_status
    :initarg :robot_status
    :type cl:fixnum
    :initform 0)
   (robot_status_str
    :reader robot_status_str
    :initarg :robot_status_str
    :type cl:string
    :initform "")
   (robot_message
    :reader robot_message
    :initarg :robot_message
    :type cl:string
    :initform "")
   (logs_status
    :reader logs_status
    :initarg :logs_status
    :type cl:fixnum
    :initform 0)
   (logs_status_str
    :reader logs_status_str
    :initarg :logs_status_str
    :type cl:string
    :initform "")
   (logs_message
    :reader logs_message
    :initarg :logs_message
    :type cl:string
    :initform "")
   (out_of_bounds
    :reader out_of_bounds
    :initarg :out_of_bounds
    :type cl:boolean
    :initform cl:nil)
   (rpi_overheating
    :reader rpi_overheating
    :initarg :rpi_overheating
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RobotStatus (<RobotStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_status-msg:<RobotStatus> is deprecated: use niryo_robot_status-msg:RobotStatus instead.")))

(cl:ensure-generic-function 'robot_status-val :lambda-list '(m))
(cl:defmethod robot_status-val ((m <RobotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_status-msg:robot_status-val is deprecated.  Use niryo_robot_status-msg:robot_status instead.")
  (robot_status m))

(cl:ensure-generic-function 'robot_status_str-val :lambda-list '(m))
(cl:defmethod robot_status_str-val ((m <RobotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_status-msg:robot_status_str-val is deprecated.  Use niryo_robot_status-msg:robot_status_str instead.")
  (robot_status_str m))

(cl:ensure-generic-function 'robot_message-val :lambda-list '(m))
(cl:defmethod robot_message-val ((m <RobotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_status-msg:robot_message-val is deprecated.  Use niryo_robot_status-msg:robot_message instead.")
  (robot_message m))

(cl:ensure-generic-function 'logs_status-val :lambda-list '(m))
(cl:defmethod logs_status-val ((m <RobotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_status-msg:logs_status-val is deprecated.  Use niryo_robot_status-msg:logs_status instead.")
  (logs_status m))

(cl:ensure-generic-function 'logs_status_str-val :lambda-list '(m))
(cl:defmethod logs_status_str-val ((m <RobotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_status-msg:logs_status_str-val is deprecated.  Use niryo_robot_status-msg:logs_status_str instead.")
  (logs_status_str m))

(cl:ensure-generic-function 'logs_message-val :lambda-list '(m))
(cl:defmethod logs_message-val ((m <RobotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_status-msg:logs_message-val is deprecated.  Use niryo_robot_status-msg:logs_message instead.")
  (logs_message m))

(cl:ensure-generic-function 'out_of_bounds-val :lambda-list '(m))
(cl:defmethod out_of_bounds-val ((m <RobotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_status-msg:out_of_bounds-val is deprecated.  Use niryo_robot_status-msg:out_of_bounds instead.")
  (out_of_bounds m))

(cl:ensure-generic-function 'rpi_overheating-val :lambda-list '(m))
(cl:defmethod rpi_overheating-val ((m <RobotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_status-msg:rpi_overheating-val is deprecated.  Use niryo_robot_status-msg:rpi_overheating instead.")
  (rpi_overheating m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RobotStatus>)))
    "Constants for message type '<RobotStatus>"
  '((:UPDATE . -7)
    (:REBOOT . -6)
    (:SHUTDOWN . -5)
    (:FATAL_ERROR . -4)
    (:MOTOR_ERROR . -3)
    (:COLLISION . -2)
    (:USER_PROGRAM_ERROR . -1)
    (:UNKNOWN . 0)
    (:BOOTING . 1)
    (:REBOOT_MOTOR . 2)
    (:CALIBRATION_NEEDED . 3)
    (:CALIBRATION_IN_PROGRESS . 4)
    (:LEARNING_MODE . 5)
    (:STANDBY . 6)
    (:MOVING . 7)
    (:RUNNING_AUTONOMOUS . 8)
    (:RUNNING_DEBUG . 9)
    (:PAUSE . 10)
    (:LEARNING_MODE_AUTONOMOUS . 11)
    (:LEARNING_TRAJECTORY . 12)
    (:REBOOT_MOTOR . 13)
    (:FATAL . -3)
    (:ERROR . -2)
    (:WARN . -1)
    (:NONE . 0))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RobotStatus)))
    "Constants for message type 'RobotStatus"
  '((:UPDATE . -7)
    (:REBOOT . -6)
    (:SHUTDOWN . -5)
    (:FATAL_ERROR . -4)
    (:MOTOR_ERROR . -3)
    (:COLLISION . -2)
    (:USER_PROGRAM_ERROR . -1)
    (:UNKNOWN . 0)
    (:BOOTING . 1)
    (:REBOOT_MOTOR . 2)
    (:CALIBRATION_NEEDED . 3)
    (:CALIBRATION_IN_PROGRESS . 4)
    (:LEARNING_MODE . 5)
    (:STANDBY . 6)
    (:MOVING . 7)
    (:RUNNING_AUTONOMOUS . 8)
    (:RUNNING_DEBUG . 9)
    (:PAUSE . 10)
    (:LEARNING_MODE_AUTONOMOUS . 11)
    (:LEARNING_TRAJECTORY . 12)
    (:REBOOT_MOTOR . 13)
    (:FATAL . -3)
    (:ERROR . -2)
    (:WARN . -1)
    (:NONE . 0))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotStatus>) ostream)
  "Serializes a message object of type '<RobotStatus>"
  (cl:let* ((signed (cl:slot-value msg 'robot_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot_status_str))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot_status_str))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot_message))
  (cl:let* ((signed (cl:slot-value msg 'logs_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'logs_status_str))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'logs_status_str))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'logs_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'logs_message))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'out_of_bounds) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'rpi_overheating) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotStatus>) istream)
  "Deserializes a message object of type '<RobotStatus>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_status) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_status_str) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robot_status_str) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robot_message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'logs_status) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'logs_status_str) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'logs_status_str) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'logs_message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'logs_message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'out_of_bounds) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'rpi_overheating) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotStatus>)))
  "Returns string type for a message object of type '<RobotStatus>"
  "niryo_robot_status/RobotStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotStatus)))
  "Returns string type for a message object of type 'RobotStatus"
  "niryo_robot_status/RobotStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotStatus>)))
  "Returns md5sum for a message object of type '<RobotStatus>"
  "348f86f9a8f05f5136ecc49809ffebf2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotStatus)))
  "Returns md5sum for a message object of type 'RobotStatus"
  "348f86f9a8f05f5136ecc49809ffebf2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotStatus>)))
  "Returns full string definition for message of type '<RobotStatus>"
  (cl:format cl:nil "int8 UPDATE=-7~%int8 REBOOT=-6~%int8 SHUTDOWN=-5~%int8 FATAL_ERROR=-4     # Node crash~%int8 MOTOR_ERROR=-3     # Electrical/overload or disconnected motor error~%int8 COLLISION=-2~%int8 USER_PROGRAM_ERROR=-1~%int8 UNKNOWN=0~%int8 BOOTING=1          # Robot is booting~%int8 REBOOT_MOTOR=2~%int8 CALIBRATION_NEEDED=3~%int8 CALIBRATION_IN_PROGRESS=4~%int8 LEARNING_MODE=5~%int8 STANDBY=6          # Torque ON~%int8 MOVING=7           # Moving with NiryoStudio interface or ros topics without user program~%int8 RUNNING_AUTONOMOUS=8   # User program is running~%int8 RUNNING_DEBUG=9    # Debug program is running~%int8 PAUSE=10           # User program paused~%int8 LEARNING_MODE_AUTONOMOUS=11    # User program is running + Learning mode activated~%int8 LEARNING_TRAJECTORY = 12~%int8 REBOOT_MOTOR=13~%~%int8 robot_status~%string robot_status_str~%string robot_message~%~%int8 FATAL=-3~%int8 ERROR=-2~%int8 WARN=-1~%int8 NONE=0~%~%int8 logs_status~%string logs_status_str~%string logs_message~%~%bool out_of_bounds~%bool rpi_overheating~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotStatus)))
  "Returns full string definition for message of type 'RobotStatus"
  (cl:format cl:nil "int8 UPDATE=-7~%int8 REBOOT=-6~%int8 SHUTDOWN=-5~%int8 FATAL_ERROR=-4     # Node crash~%int8 MOTOR_ERROR=-3     # Electrical/overload or disconnected motor error~%int8 COLLISION=-2~%int8 USER_PROGRAM_ERROR=-1~%int8 UNKNOWN=0~%int8 BOOTING=1          # Robot is booting~%int8 REBOOT_MOTOR=2~%int8 CALIBRATION_NEEDED=3~%int8 CALIBRATION_IN_PROGRESS=4~%int8 LEARNING_MODE=5~%int8 STANDBY=6          # Torque ON~%int8 MOVING=7           # Moving with NiryoStudio interface or ros topics without user program~%int8 RUNNING_AUTONOMOUS=8   # User program is running~%int8 RUNNING_DEBUG=9    # Debug program is running~%int8 PAUSE=10           # User program paused~%int8 LEARNING_MODE_AUTONOMOUS=11    # User program is running + Learning mode activated~%int8 LEARNING_TRAJECTORY = 12~%int8 REBOOT_MOTOR=13~%~%int8 robot_status~%string robot_status_str~%string robot_message~%~%int8 FATAL=-3~%int8 ERROR=-2~%int8 WARN=-1~%int8 NONE=0~%~%int8 logs_status~%string logs_status_str~%string logs_message~%~%bool out_of_bounds~%bool rpi_overheating~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotStatus>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'robot_status_str))
     4 (cl:length (cl:slot-value msg 'robot_message))
     1
     4 (cl:length (cl:slot-value msg 'logs_status_str))
     4 (cl:length (cl:slot-value msg 'logs_message))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotStatus
    (cl:cons ':robot_status (robot_status msg))
    (cl:cons ':robot_status_str (robot_status_str msg))
    (cl:cons ':robot_message (robot_message msg))
    (cl:cons ':logs_status (logs_status msg))
    (cl:cons ':logs_status_str (logs_status_str msg))
    (cl:cons ':logs_message (logs_message msg))
    (cl:cons ':out_of_bounds (out_of_bounds msg))
    (cl:cons ':rpi_overheating (rpi_overheating msg))
))
