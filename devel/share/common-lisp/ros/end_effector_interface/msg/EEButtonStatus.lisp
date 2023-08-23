; Auto-generated. Do not edit!


(cl:in-package end_effector_interface-msg)


;//! \htmlinclude EEButtonStatus.msg.html

(cl:defclass <EEButtonStatus> (roslisp-msg-protocol:ros-message)
  ((action
    :reader action
    :initarg :action
    :type cl:fixnum
    :initform 0))
)

(cl:defclass EEButtonStatus (<EEButtonStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EEButtonStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EEButtonStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name end_effector_interface-msg:<EEButtonStatus> is deprecated: use end_effector_interface-msg:EEButtonStatus instead.")))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <EEButtonStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader end_effector_interface-msg:action-val is deprecated.  Use end_effector_interface-msg:action instead.")
  (action m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<EEButtonStatus>)))
    "Constants for message type '<EEButtonStatus>"
  '((:HANDLE_HELD_ACTION . 0)
    (:LONG_PUSH_ACTION . 1)
    (:SINGLE_PUSH_ACTION . 2)
    (:DOUBLE_PUSH_ACTION . 3)
    (:NO_ACTION . 100))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'EEButtonStatus)))
    "Constants for message type 'EEButtonStatus"
  '((:HANDLE_HELD_ACTION . 0)
    (:LONG_PUSH_ACTION . 1)
    (:SINGLE_PUSH_ACTION . 2)
    (:DOUBLE_PUSH_ACTION . 3)
    (:NO_ACTION . 100))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EEButtonStatus>) ostream)
  "Serializes a message object of type '<EEButtonStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EEButtonStatus>) istream)
  "Deserializes a message object of type '<EEButtonStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EEButtonStatus>)))
  "Returns string type for a message object of type '<EEButtonStatus>"
  "end_effector_interface/EEButtonStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EEButtonStatus)))
  "Returns string type for a message object of type 'EEButtonStatus"
  "end_effector_interface/EEButtonStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EEButtonStatus>)))
  "Returns md5sum for a message object of type '<EEButtonStatus>"
  "253c0270ed9bd9ba0d603239e8a42447")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EEButtonStatus)))
  "Returns md5sum for a message object of type 'EEButtonStatus"
  "253c0270ed9bd9ba0d603239e8a42447")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EEButtonStatus>)))
  "Returns full string definition for message of type '<EEButtonStatus>"
  (cl:format cl:nil "uint8 HANDLE_HELD_ACTION=0~%uint8 LONG_PUSH_ACTION=1~%uint8 SINGLE_PUSH_ACTION=2~%uint8 DOUBLE_PUSH_ACTION=3~%uint8 NO_ACTION=100~%~%uint8 action~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EEButtonStatus)))
  "Returns full string definition for message of type 'EEButtonStatus"
  (cl:format cl:nil "uint8 HANDLE_HELD_ACTION=0~%uint8 LONG_PUSH_ACTION=1~%uint8 SINGLE_PUSH_ACTION=2~%uint8 DOUBLE_PUSH_ACTION=3~%uint8 NO_ACTION=100~%~%uint8 action~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EEButtonStatus>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EEButtonStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'EEButtonStatus
    (cl:cons ':action (action msg))
))
