; Auto-generated. Do not edit!


(cl:in-package niryo_robot_system_api_client-msg)


;//! \htmlinclude WifiStatus.msg.html

(cl:defclass <WifiStatus> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass WifiStatus (<WifiStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WifiStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WifiStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_system_api_client-msg:<WifiStatus> is deprecated: use niryo_robot_system_api_client-msg:WifiStatus instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <WifiStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_system_api_client-msg:status-val is deprecated.  Use niryo_robot_system_api_client-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<WifiStatus>)))
    "Constants for message type '<WifiStatus>"
  '((:UNKNOWN . 0)
    (:HOTSPOT . 1)
    (:DISABLED . 2)
    (:CONNECTED . 3)
    (:DISCONNECTED . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'WifiStatus)))
    "Constants for message type 'WifiStatus"
  '((:UNKNOWN . 0)
    (:HOTSPOT . 1)
    (:DISABLED . 2)
    (:CONNECTED . 3)
    (:DISCONNECTED . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WifiStatus>) ostream)
  "Serializes a message object of type '<WifiStatus>"
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WifiStatus>) istream)
  "Deserializes a message object of type '<WifiStatus>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WifiStatus>)))
  "Returns string type for a message object of type '<WifiStatus>"
  "niryo_robot_system_api_client/WifiStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WifiStatus)))
  "Returns string type for a message object of type 'WifiStatus"
  "niryo_robot_system_api_client/WifiStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WifiStatus>)))
  "Returns md5sum for a message object of type '<WifiStatus>"
  "bd2f5ccbbf459aac04ecaee46d455e92")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WifiStatus)))
  "Returns md5sum for a message object of type 'WifiStatus"
  "bd2f5ccbbf459aac04ecaee46d455e92")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WifiStatus>)))
  "Returns full string definition for message of type '<WifiStatus>"
  (cl:format cl:nil "int8 UNKNOWN = 0~%int8 HOTSPOT = 1~%int8 DISABLED = 2~%int8 CONNECTED = 3~%int8 DISCONNECTED = 4~%~%int8 status~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WifiStatus)))
  "Returns full string definition for message of type 'WifiStatus"
  (cl:format cl:nil "int8 UNKNOWN = 0~%int8 HOTSPOT = 1~%int8 DISABLED = 2~%int8 CONNECTED = 3~%int8 DISCONNECTED = 4~%~%int8 status~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WifiStatus>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WifiStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'WifiStatus
    (cl:cons ':status (status msg))
))
