; Auto-generated. Do not edit!


(cl:in-package tools_interface-msg)


;//! \htmlinclude Tool.msg.html

(cl:defclass <Tool> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (motor_type
    :reader motor_type
    :initarg :motor_type
    :type cl:fixnum
    :initform 0)
   (position
    :reader position
    :initarg :position
    :type cl:fixnum
    :initform 0)
   (state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Tool (<Tool>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Tool>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Tool)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tools_interface-msg:<Tool> is deprecated: use tools_interface-msg:Tool instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <Tool>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tools_interface-msg:id-val is deprecated.  Use tools_interface-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'motor_type-val :lambda-list '(m))
(cl:defmethod motor_type-val ((m <Tool>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tools_interface-msg:motor_type-val is deprecated.  Use tools_interface-msg:motor_type instead.")
  (motor_type m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <Tool>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tools_interface-msg:position-val is deprecated.  Use tools_interface-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <Tool>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tools_interface-msg:state-val is deprecated.  Use tools_interface-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Tool>)))
    "Constants for message type '<Tool>"
  '((:NO_MOTOR . 0)
    (:STEPPER . 1)
    (:XL430 . 2)
    (:XL320 . 3)
    (:XL330 . 4)
    (:XC430 . 5)
    (:XM430 . 6)
    (:FAKE_DXL_MOTOR . 20)
    (:TOOL_STATE_PING_OK . 1)
    (:TOOL_STATE_PING_ERROR . 2)
    (:TOOL_STATE_WRONG_ID . 3)
    (:TOOL_STATE_TIMEOUT . 4)
    (:GRIPPER_STATE_OPEN . 16)
    (:GRIPPER_STATE_CLOSE . 17)
    (:VACUUM_PUMP_STATE_PULLED . 32)
    (:VACUUM_PUMP_STATE_PUSHED . 33))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Tool)))
    "Constants for message type 'Tool"
  '((:NO_MOTOR . 0)
    (:STEPPER . 1)
    (:XL430 . 2)
    (:XL320 . 3)
    (:XL330 . 4)
    (:XC430 . 5)
    (:XM430 . 6)
    (:FAKE_DXL_MOTOR . 20)
    (:TOOL_STATE_PING_OK . 1)
    (:TOOL_STATE_PING_ERROR . 2)
    (:TOOL_STATE_WRONG_ID . 3)
    (:TOOL_STATE_TIMEOUT . 4)
    (:GRIPPER_STATE_OPEN . 16)
    (:GRIPPER_STATE_CLOSE . 17)
    (:VACUUM_PUMP_STATE_PULLED . 32)
    (:VACUUM_PUMP_STATE_PUSHED . 33))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Tool>) ostream)
  "Serializes a message object of type '<Tool>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'motor_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'position)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Tool>) istream)
  "Deserializes a message object of type '<Tool>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motor_type) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'position) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Tool>)))
  "Returns string type for a message object of type '<Tool>"
  "tools_interface/Tool")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Tool)))
  "Returns string type for a message object of type 'Tool"
  "tools_interface/Tool")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Tool>)))
  "Returns md5sum for a message object of type '<Tool>"
  "830c50232809d26b16dfe357c84d738a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Tool)))
  "Returns md5sum for a message object of type 'Tool"
  "830c50232809d26b16dfe357c84d738a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Tool>)))
  "Returns full string definition for message of type '<Tool>"
  (cl:format cl:nil "int8 id~%~%int8 NO_MOTOR = 0~%int8 STEPPER = 1~%int8 XL430 = 2~%int8 XL320 = 3~%int8 XL330 = 4~%int8 XC430 = 5~%int8 XM430 = 6~%int8 FAKE_DXL_MOTOR = 20~%~%int8 motor_type~%~%int16 position~%~%int8 TOOL_STATE_PING_OK       = 1~%int8 TOOL_STATE_PING_ERROR    = 2~%int8 TOOL_STATE_WRONG_ID      = 3~%int8 TOOL_STATE_TIMEOUT       = 4~%~%int8 GRIPPER_STATE_OPEN       = 16~%int8 GRIPPER_STATE_CLOSE      = 17~%~%int8 VACUUM_PUMP_STATE_PULLED = 32~%int8 VACUUM_PUMP_STATE_PUSHED = 33~%~%int8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Tool)))
  "Returns full string definition for message of type 'Tool"
  (cl:format cl:nil "int8 id~%~%int8 NO_MOTOR = 0~%int8 STEPPER = 1~%int8 XL430 = 2~%int8 XL320 = 3~%int8 XL330 = 4~%int8 XC430 = 5~%int8 XM430 = 6~%int8 FAKE_DXL_MOTOR = 20~%~%int8 motor_type~%~%int16 position~%~%int8 TOOL_STATE_PING_OK       = 1~%int8 TOOL_STATE_PING_ERROR    = 2~%int8 TOOL_STATE_WRONG_ID      = 3~%int8 TOOL_STATE_TIMEOUT       = 4~%~%int8 GRIPPER_STATE_OPEN       = 16~%int8 GRIPPER_STATE_CLOSE      = 17~%~%int8 VACUUM_PUMP_STATE_PULLED = 32~%int8 VACUUM_PUMP_STATE_PUSHED = 33~%~%int8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Tool>))
  (cl:+ 0
     1
     1
     2
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Tool>))
  "Converts a ROS message object to a list"
  (cl:list 'Tool
    (cl:cons ':id (id msg))
    (cl:cons ':motor_type (motor_type msg))
    (cl:cons ':position (position msg))
    (cl:cons ':state (state msg))
))
