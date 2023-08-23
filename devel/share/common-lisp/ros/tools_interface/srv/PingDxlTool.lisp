; Auto-generated. Do not edit!


(cl:in-package tools_interface-srv)


;//! \htmlinclude PingDxlTool-request.msg.html

(cl:defclass <PingDxlTool-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass PingDxlTool-request (<PingDxlTool-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PingDxlTool-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PingDxlTool-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tools_interface-srv:<PingDxlTool-request> is deprecated: use tools_interface-srv:PingDxlTool-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PingDxlTool-request>) ostream)
  "Serializes a message object of type '<PingDxlTool-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PingDxlTool-request>) istream)
  "Deserializes a message object of type '<PingDxlTool-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PingDxlTool-request>)))
  "Returns string type for a service object of type '<PingDxlTool-request>"
  "tools_interface/PingDxlToolRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PingDxlTool-request)))
  "Returns string type for a service object of type 'PingDxlTool-request"
  "tools_interface/PingDxlToolRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PingDxlTool-request>)))
  "Returns md5sum for a message object of type '<PingDxlTool-request>"
  "79430720584434ee5ae66073bc65cdba")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PingDxlTool-request)))
  "Returns md5sum for a message object of type 'PingDxlTool-request"
  "79430720584434ee5ae66073bc65cdba")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PingDxlTool-request>)))
  "Returns full string definition for message of type '<PingDxlTool-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PingDxlTool-request)))
  "Returns full string definition for message of type 'PingDxlTool-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PingDxlTool-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PingDxlTool-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PingDxlTool-request
))
;//! \htmlinclude PingDxlTool-response.msg.html

(cl:defclass <PingDxlTool-response> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0)
   (tool
    :reader tool
    :initarg :tool
    :type tools_interface-msg:Tool
    :initform (cl:make-instance 'tools_interface-msg:Tool)))
)

(cl:defclass PingDxlTool-response (<PingDxlTool-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PingDxlTool-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PingDxlTool-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tools_interface-srv:<PingDxlTool-response> is deprecated: use tools_interface-srv:PingDxlTool-response instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <PingDxlTool-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tools_interface-srv:state-val is deprecated.  Use tools_interface-srv:state instead.")
  (state m))

(cl:ensure-generic-function 'tool-val :lambda-list '(m))
(cl:defmethod tool-val ((m <PingDxlTool-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tools_interface-srv:tool-val is deprecated.  Use tools_interface-srv:tool instead.")
  (tool m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PingDxlTool-response>) ostream)
  "Serializes a message object of type '<PingDxlTool-response>"
  (cl:let* ((signed (cl:slot-value msg 'state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'tool) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PingDxlTool-response>) istream)
  "Deserializes a message object of type '<PingDxlTool-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'tool) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PingDxlTool-response>)))
  "Returns string type for a service object of type '<PingDxlTool-response>"
  "tools_interface/PingDxlToolResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PingDxlTool-response)))
  "Returns string type for a service object of type 'PingDxlTool-response"
  "tools_interface/PingDxlToolResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PingDxlTool-response>)))
  "Returns md5sum for a message object of type '<PingDxlTool-response>"
  "79430720584434ee5ae66073bc65cdba")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PingDxlTool-response)))
  "Returns md5sum for a message object of type 'PingDxlTool-response"
  "79430720584434ee5ae66073bc65cdba")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PingDxlTool-response>)))
  "Returns full string definition for message of type '<PingDxlTool-response>"
  (cl:format cl:nil "int8 state~%tools_interface/Tool tool~%~%~%================================================================================~%MSG: tools_interface/Tool~%int8 id~%~%int8 NO_MOTOR = 0~%int8 STEPPER = 1~%int8 XL430 = 2~%int8 XL320 = 3~%int8 XL330 = 4~%int8 XC430 = 5~%int8 XM430 = 6~%int8 FAKE_DXL_MOTOR = 20~%~%int8 motor_type~%~%int16 position~%~%int8 TOOL_STATE_PING_OK       = 1~%int8 TOOL_STATE_PING_ERROR    = 2~%int8 TOOL_STATE_WRONG_ID      = 3~%int8 TOOL_STATE_TIMEOUT       = 4~%~%int8 GRIPPER_STATE_OPEN       = 16~%int8 GRIPPER_STATE_CLOSE      = 17~%~%int8 VACUUM_PUMP_STATE_PULLED = 32~%int8 VACUUM_PUMP_STATE_PUSHED = 33~%~%int8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PingDxlTool-response)))
  "Returns full string definition for message of type 'PingDxlTool-response"
  (cl:format cl:nil "int8 state~%tools_interface/Tool tool~%~%~%================================================================================~%MSG: tools_interface/Tool~%int8 id~%~%int8 NO_MOTOR = 0~%int8 STEPPER = 1~%int8 XL430 = 2~%int8 XL320 = 3~%int8 XL330 = 4~%int8 XC430 = 5~%int8 XM430 = 6~%int8 FAKE_DXL_MOTOR = 20~%~%int8 motor_type~%~%int16 position~%~%int8 TOOL_STATE_PING_OK       = 1~%int8 TOOL_STATE_PING_ERROR    = 2~%int8 TOOL_STATE_WRONG_ID      = 3~%int8 TOOL_STATE_TIMEOUT       = 4~%~%int8 GRIPPER_STATE_OPEN       = 16~%int8 GRIPPER_STATE_CLOSE      = 17~%~%int8 VACUUM_PUMP_STATE_PULLED = 32~%int8 VACUUM_PUMP_STATE_PUSHED = 33~%~%int8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PingDxlTool-response>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'tool))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PingDxlTool-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PingDxlTool-response
    (cl:cons ':state (state msg))
    (cl:cons ':tool (tool msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PingDxlTool)))
  'PingDxlTool-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PingDxlTool)))
  'PingDxlTool-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PingDxlTool)))
  "Returns string type for a service object of type '<PingDxlTool>"
  "tools_interface/PingDxlTool")