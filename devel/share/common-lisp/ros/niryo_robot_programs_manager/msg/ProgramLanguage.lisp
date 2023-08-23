; Auto-generated. Do not edit!


(cl:in-package niryo_robot_programs_manager-msg)


;//! \htmlinclude ProgramLanguage.msg.html

(cl:defclass <ProgramLanguage> (roslisp-msg-protocol:ros-message)
  ((used
    :reader used
    :initarg :used
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ProgramLanguage (<ProgramLanguage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ProgramLanguage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ProgramLanguage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_programs_manager-msg:<ProgramLanguage> is deprecated: use niryo_robot_programs_manager-msg:ProgramLanguage instead.")))

(cl:ensure-generic-function 'used-val :lambda-list '(m))
(cl:defmethod used-val ((m <ProgramLanguage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager-msg:used-val is deprecated.  Use niryo_robot_programs_manager-msg:used instead.")
  (used m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ProgramLanguage>)))
    "Constants for message type '<ProgramLanguage>"
  '((:NONE . -1)
    (:ALL . 0)
    (:PYTHON2 . 1)
    (:PYTHON3 . 2)
    (:BLOCKLY . 66))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ProgramLanguage)))
    "Constants for message type 'ProgramLanguage"
  '((:NONE . -1)
    (:ALL . 0)
    (:PYTHON2 . 1)
    (:PYTHON3 . 2)
    (:BLOCKLY . 66))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ProgramLanguage>) ostream)
  "Serializes a message object of type '<ProgramLanguage>"
  (cl:let* ((signed (cl:slot-value msg 'used)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ProgramLanguage>) istream)
  "Deserializes a message object of type '<ProgramLanguage>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'used) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ProgramLanguage>)))
  "Returns string type for a message object of type '<ProgramLanguage>"
  "niryo_robot_programs_manager/ProgramLanguage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ProgramLanguage)))
  "Returns string type for a message object of type 'ProgramLanguage"
  "niryo_robot_programs_manager/ProgramLanguage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ProgramLanguage>)))
  "Returns md5sum for a message object of type '<ProgramLanguage>"
  "33b17f834c69f7d704c6f12913f8ef1a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ProgramLanguage)))
  "Returns md5sum for a message object of type 'ProgramLanguage"
  "33b17f834c69f7d704c6f12913f8ef1a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ProgramLanguage>)))
  "Returns full string definition for message of type '<ProgramLanguage>"
  (cl:format cl:nil "int8 NONE = -1~%~%int8 ALL = 0~%~%# Runnable~%int8 PYTHON2 = 1~%int8 PYTHON3 = 2~%~%# Not Runnable~%int8 BLOCKLY = 66~%~%int8 used~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ProgramLanguage)))
  "Returns full string definition for message of type 'ProgramLanguage"
  (cl:format cl:nil "int8 NONE = -1~%~%int8 ALL = 0~%~%# Runnable~%int8 PYTHON2 = 1~%int8 PYTHON3 = 2~%~%# Not Runnable~%int8 BLOCKLY = 66~%~%int8 used~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ProgramLanguage>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ProgramLanguage>))
  "Converts a ROS message object to a list"
  (cl:list 'ProgramLanguage
    (cl:cons ':used (used msg))
))
