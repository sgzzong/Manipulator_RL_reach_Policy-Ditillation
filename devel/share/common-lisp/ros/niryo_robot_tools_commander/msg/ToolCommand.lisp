; Auto-generated. Do not edit!


(cl:in-package niryo_robot_tools_commander-msg)


;//! \htmlinclude ToolCommand.msg.html

(cl:defclass <ToolCommand> (roslisp-msg-protocol:ros-message)
  ((cmd_type
    :reader cmd_type
    :initarg :cmd_type
    :type cl:fixnum
    :initform 0)
   (tool_id
    :reader tool_id
    :initarg :tool_id
    :type cl:fixnum
    :initform 0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:fixnum
    :initform 0)
   (max_torque_percentage
    :reader max_torque_percentage
    :initarg :max_torque_percentage
    :type cl:fixnum
    :initform 0)
   (hold_torque_percentage
    :reader hold_torque_percentage
    :initarg :hold_torque_percentage
    :type cl:fixnum
    :initform 0)
   (activate
    :reader activate
    :initarg :activate
    :type cl:boolean
    :initform cl:nil)
   (gpio
    :reader gpio
    :initarg :gpio
    :type cl:string
    :initform ""))
)

(cl:defclass ToolCommand (<ToolCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ToolCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ToolCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_tools_commander-msg:<ToolCommand> is deprecated: use niryo_robot_tools_commander-msg:ToolCommand instead.")))

(cl:ensure-generic-function 'cmd_type-val :lambda-list '(m))
(cl:defmethod cmd_type-val ((m <ToolCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_tools_commander-msg:cmd_type-val is deprecated.  Use niryo_robot_tools_commander-msg:cmd_type instead.")
  (cmd_type m))

(cl:ensure-generic-function 'tool_id-val :lambda-list '(m))
(cl:defmethod tool_id-val ((m <ToolCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_tools_commander-msg:tool_id-val is deprecated.  Use niryo_robot_tools_commander-msg:tool_id instead.")
  (tool_id m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <ToolCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_tools_commander-msg:speed-val is deprecated.  Use niryo_robot_tools_commander-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'max_torque_percentage-val :lambda-list '(m))
(cl:defmethod max_torque_percentage-val ((m <ToolCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_tools_commander-msg:max_torque_percentage-val is deprecated.  Use niryo_robot_tools_commander-msg:max_torque_percentage instead.")
  (max_torque_percentage m))

(cl:ensure-generic-function 'hold_torque_percentage-val :lambda-list '(m))
(cl:defmethod hold_torque_percentage-val ((m <ToolCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_tools_commander-msg:hold_torque_percentage-val is deprecated.  Use niryo_robot_tools_commander-msg:hold_torque_percentage instead.")
  (hold_torque_percentage m))

(cl:ensure-generic-function 'activate-val :lambda-list '(m))
(cl:defmethod activate-val ((m <ToolCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_tools_commander-msg:activate-val is deprecated.  Use niryo_robot_tools_commander-msg:activate instead.")
  (activate m))

(cl:ensure-generic-function 'gpio-val :lambda-list '(m))
(cl:defmethod gpio-val ((m <ToolCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_tools_commander-msg:gpio-val is deprecated.  Use niryo_robot_tools_commander-msg:gpio instead.")
  (gpio m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ToolCommand>)))
    "Constants for message type '<ToolCommand>"
  '((:OPEN_GRIPPER . 1)
    (:CLOSE_GRIPPER . 2)
    (:PULL_AIR_VACUUM_PUMP . 10)
    (:PUSH_AIR_VACUUM_PUMP . 11)
    (:SETUP_DIGITAL_IO . 20)
    (:ACTIVATE_DIGITAL_IO . 21)
    (:DEACTIVATE_DIGITAL_IO . 22))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ToolCommand)))
    "Constants for message type 'ToolCommand"
  '((:OPEN_GRIPPER . 1)
    (:CLOSE_GRIPPER . 2)
    (:PULL_AIR_VACUUM_PUMP . 10)
    (:PUSH_AIR_VACUUM_PUMP . 11)
    (:SETUP_DIGITAL_IO . 20)
    (:ACTIVATE_DIGITAL_IO . 21)
    (:DEACTIVATE_DIGITAL_IO . 22))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ToolCommand>) ostream)
  "Serializes a message object of type '<ToolCommand>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_type)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'tool_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'speed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'max_torque_percentage)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hold_torque_percentage)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'activate) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'gpio))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'gpio))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ToolCommand>) istream)
  "Deserializes a message object of type '<ToolCommand>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_type)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tool_id) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'speed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'max_torque_percentage)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hold_torque_percentage)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'activate) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gpio) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'gpio) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ToolCommand>)))
  "Returns string type for a message object of type '<ToolCommand>"
  "niryo_robot_tools_commander/ToolCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ToolCommand)))
  "Returns string type for a message object of type 'ToolCommand"
  "niryo_robot_tools_commander/ToolCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ToolCommand>)))
  "Returns md5sum for a message object of type '<ToolCommand>"
  "e9d67503aca2a9d01b00faeb26e2fad7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ToolCommand)))
  "Returns md5sum for a message object of type 'ToolCommand"
  "e9d67503aca2a9d01b00faeb26e2fad7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ToolCommand>)))
  "Returns full string definition for message of type '<ToolCommand>"
  (cl:format cl:nil "# Gripper~%int8 OPEN_GRIPPER = 1~%int8 CLOSE_GRIPPER = 2~%~%# Vacuump pump~%int8 PULL_AIR_VACUUM_PUMP = 10~%int8 PUSH_AIR_VACUUM_PUMP = 11~%~%# Tools controlled by digital I/Os~%int8 SETUP_DIGITAL_IO = 20~%int8 ACTIVATE_DIGITAL_IO = 21~%int8 DEACTIVATE_DIGITAL_IO = 22~%~%uint8 cmd_type~%~%# Gripper1= 11, Gripper2=12, Gripper3=13, VaccuumPump=31, Electromagnet=30~%int8 tool_id~%~%# if gripper Ned1/One~%uint16 speed~%~%# if gripper Ned2~%uint8 max_torque_percentage~%uint8 hold_torque_percentage~%~%# if vacuum pump or electromagnet grove~%bool activate~%~%# if tool is set by digital outputs (electromagnet)~%string gpio~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ToolCommand)))
  "Returns full string definition for message of type 'ToolCommand"
  (cl:format cl:nil "# Gripper~%int8 OPEN_GRIPPER = 1~%int8 CLOSE_GRIPPER = 2~%~%# Vacuump pump~%int8 PULL_AIR_VACUUM_PUMP = 10~%int8 PUSH_AIR_VACUUM_PUMP = 11~%~%# Tools controlled by digital I/Os~%int8 SETUP_DIGITAL_IO = 20~%int8 ACTIVATE_DIGITAL_IO = 21~%int8 DEACTIVATE_DIGITAL_IO = 22~%~%uint8 cmd_type~%~%# Gripper1= 11, Gripper2=12, Gripper3=13, VaccuumPump=31, Electromagnet=30~%int8 tool_id~%~%# if gripper Ned1/One~%uint16 speed~%~%# if gripper Ned2~%uint8 max_torque_percentage~%uint8 hold_torque_percentage~%~%# if vacuum pump or electromagnet grove~%bool activate~%~%# if tool is set by digital outputs (electromagnet)~%string gpio~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ToolCommand>))
  (cl:+ 0
     1
     1
     2
     1
     1
     1
     4 (cl:length (cl:slot-value msg 'gpio))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ToolCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'ToolCommand
    (cl:cons ':cmd_type (cmd_type msg))
    (cl:cons ':tool_id (tool_id msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':max_torque_percentage (max_torque_percentage msg))
    (cl:cons ':hold_torque_percentage (hold_torque_percentage msg))
    (cl:cons ':activate (activate msg))
    (cl:cons ':gpio (gpio msg))
))
