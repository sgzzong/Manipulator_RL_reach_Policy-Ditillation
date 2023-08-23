; Auto-generated. Do not edit!


(cl:in-package tools_interface-srv)


;//! \htmlinclude ToolCommand-request.msg.html

(cl:defclass <ToolCommand-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (position
    :reader position
    :initarg :position
    :type cl:fixnum
    :initform 0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:fixnum
    :initform 0)
   (hold_torque
    :reader hold_torque
    :initarg :hold_torque
    :type cl:fixnum
    :initform 0)
   (max_torque
    :reader max_torque
    :initarg :max_torque
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ToolCommand-request (<ToolCommand-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ToolCommand-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ToolCommand-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tools_interface-srv:<ToolCommand-request> is deprecated: use tools_interface-srv:ToolCommand-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <ToolCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tools_interface-srv:id-val is deprecated.  Use tools_interface-srv:id instead.")
  (id m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <ToolCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tools_interface-srv:position-val is deprecated.  Use tools_interface-srv:position instead.")
  (position m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <ToolCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tools_interface-srv:speed-val is deprecated.  Use tools_interface-srv:speed instead.")
  (speed m))

(cl:ensure-generic-function 'hold_torque-val :lambda-list '(m))
(cl:defmethod hold_torque-val ((m <ToolCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tools_interface-srv:hold_torque-val is deprecated.  Use tools_interface-srv:hold_torque instead.")
  (hold_torque m))

(cl:ensure-generic-function 'max_torque-val :lambda-list '(m))
(cl:defmethod max_torque-val ((m <ToolCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tools_interface-srv:max_torque-val is deprecated.  Use tools_interface-srv:max_torque instead.")
  (max_torque m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ToolCommand-request>) ostream)
  "Serializes a message object of type '<ToolCommand-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'position)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'position)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'speed)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'hold_torque)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'max_torque)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ToolCommand-request>) istream)
  "Deserializes a message object of type '<ToolCommand-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'position)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'position)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'speed)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'hold_torque) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'max_torque) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ToolCommand-request>)))
  "Returns string type for a service object of type '<ToolCommand-request>"
  "tools_interface/ToolCommandRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ToolCommand-request)))
  "Returns string type for a service object of type 'ToolCommand-request"
  "tools_interface/ToolCommandRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ToolCommand-request>)))
  "Returns md5sum for a message object of type '<ToolCommand-request>"
  "470ae100e520424cd89af3569b932d47")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ToolCommand-request)))
  "Returns md5sum for a message object of type 'ToolCommand-request"
  "470ae100e520424cd89af3569b932d47")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ToolCommand-request>)))
  "Returns full string definition for message of type '<ToolCommand-request>"
  (cl:format cl:nil "uint8 id~%~%uint16 position~%uint16 speed~%int16 hold_torque~%int16 max_torque~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ToolCommand-request)))
  "Returns full string definition for message of type 'ToolCommand-request"
  (cl:format cl:nil "uint8 id~%~%uint16 position~%uint16 speed~%int16 hold_torque~%int16 max_torque~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ToolCommand-request>))
  (cl:+ 0
     1
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ToolCommand-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ToolCommand-request
    (cl:cons ':id (id msg))
    (cl:cons ':position (position msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':hold_torque (hold_torque msg))
    (cl:cons ':max_torque (max_torque msg))
))
;//! \htmlinclude ToolCommand-response.msg.html

(cl:defclass <ToolCommand-response> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ToolCommand-response (<ToolCommand-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ToolCommand-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ToolCommand-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tools_interface-srv:<ToolCommand-response> is deprecated: use tools_interface-srv:ToolCommand-response instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <ToolCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tools_interface-srv:state-val is deprecated.  Use tools_interface-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ToolCommand-response>) ostream)
  "Serializes a message object of type '<ToolCommand-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ToolCommand-response>) istream)
  "Deserializes a message object of type '<ToolCommand-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ToolCommand-response>)))
  "Returns string type for a service object of type '<ToolCommand-response>"
  "tools_interface/ToolCommandResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ToolCommand-response)))
  "Returns string type for a service object of type 'ToolCommand-response"
  "tools_interface/ToolCommandResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ToolCommand-response>)))
  "Returns md5sum for a message object of type '<ToolCommand-response>"
  "470ae100e520424cd89af3569b932d47")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ToolCommand-response)))
  "Returns md5sum for a message object of type 'ToolCommand-response"
  "470ae100e520424cd89af3569b932d47")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ToolCommand-response>)))
  "Returns full string definition for message of type '<ToolCommand-response>"
  (cl:format cl:nil "uint8 state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ToolCommand-response)))
  "Returns full string definition for message of type 'ToolCommand-response"
  (cl:format cl:nil "uint8 state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ToolCommand-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ToolCommand-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ToolCommand-response
    (cl:cons ':state (state msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ToolCommand)))
  'ToolCommand-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ToolCommand)))
  'ToolCommand-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ToolCommand)))
  "Returns string type for a service object of type '<ToolCommand>"
  "tools_interface/ToolCommand")