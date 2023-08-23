; Auto-generated. Do not edit!


(cl:in-package niryo_robot_arm_commander-msg)


;//! \htmlinclude PausePlanExecution.msg.html

(cl:defclass <PausePlanExecution> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PausePlanExecution (<PausePlanExecution>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PausePlanExecution>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PausePlanExecution)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_arm_commander-msg:<PausePlanExecution> is deprecated: use niryo_robot_arm_commander-msg:PausePlanExecution instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <PausePlanExecution>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_arm_commander-msg:state-val is deprecated.  Use niryo_robot_arm_commander-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PausePlanExecution>)))
    "Constants for message type '<PausePlanExecution>"
  '((:STANDBY . 0)
    (:PLAY . 1)
    (:PAUSE . 2)
    (:RESUME . 3)
    (:CANCEL . 4)
    (:PAUSE_TIMEOUT . 30.0))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PausePlanExecution)))
    "Constants for message type 'PausePlanExecution"
  '((:STANDBY . 0)
    (:PLAY . 1)
    (:PAUSE . 2)
    (:RESUME . 3)
    (:CANCEL . 4)
    (:PAUSE_TIMEOUT . 30.0))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PausePlanExecution>) ostream)
  "Serializes a message object of type '<PausePlanExecution>"
  (cl:let* ((signed (cl:slot-value msg 'state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PausePlanExecution>) istream)
  "Deserializes a message object of type '<PausePlanExecution>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PausePlanExecution>)))
  "Returns string type for a message object of type '<PausePlanExecution>"
  "niryo_robot_arm_commander/PausePlanExecution")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PausePlanExecution)))
  "Returns string type for a message object of type 'PausePlanExecution"
  "niryo_robot_arm_commander/PausePlanExecution")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PausePlanExecution>)))
  "Returns md5sum for a message object of type '<PausePlanExecution>"
  "f975633a84efe7236e13f4ac21d873f4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PausePlanExecution)))
  "Returns md5sum for a message object of type 'PausePlanExecution"
  "f975633a84efe7236e13f4ac21d873f4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PausePlanExecution>)))
  "Returns full string definition for message of type '<PausePlanExecution>"
  (cl:format cl:nil "int8 STANDBY = 0~%int8 PLAY = 1~%int8 PAUSE = 2~%int8 RESUME = 3~%int8 CANCEL = 4~%~%float64 PAUSE_TIMEOUT = 30.0~%~%int8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PausePlanExecution)))
  "Returns full string definition for message of type 'PausePlanExecution"
  (cl:format cl:nil "int8 STANDBY = 0~%int8 PLAY = 1~%int8 PAUSE = 2~%int8 RESUME = 3~%int8 CANCEL = 4~%~%float64 PAUSE_TIMEOUT = 30.0~%~%int8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PausePlanExecution>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PausePlanExecution>))
  "Converts a ROS message object to a list"
  (cl:list 'PausePlanExecution
    (cl:cons ':state (state msg))
))
