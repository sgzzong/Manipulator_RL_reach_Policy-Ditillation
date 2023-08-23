; Auto-generated. Do not edit!


(cl:in-package end_effector_interface-msg)


;//! \htmlinclude EEIOState.msg.html

(cl:defclass <EEIOState> (roslisp-msg-protocol:ros-message)
  ((digital_input
    :reader digital_input
    :initarg :digital_input
    :type cl:boolean
    :initform cl:nil)
   (digital_output
    :reader digital_output
    :initarg :digital_output
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass EEIOState (<EEIOState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EEIOState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EEIOState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name end_effector_interface-msg:<EEIOState> is deprecated: use end_effector_interface-msg:EEIOState instead.")))

(cl:ensure-generic-function 'digital_input-val :lambda-list '(m))
(cl:defmethod digital_input-val ((m <EEIOState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader end_effector_interface-msg:digital_input-val is deprecated.  Use end_effector_interface-msg:digital_input instead.")
  (digital_input m))

(cl:ensure-generic-function 'digital_output-val :lambda-list '(m))
(cl:defmethod digital_output-val ((m <EEIOState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader end_effector_interface-msg:digital_output-val is deprecated.  Use end_effector_interface-msg:digital_output instead.")
  (digital_output m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EEIOState>) ostream)
  "Serializes a message object of type '<EEIOState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'digital_input) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'digital_output) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EEIOState>) istream)
  "Deserializes a message object of type '<EEIOState>"
    (cl:setf (cl:slot-value msg 'digital_input) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'digital_output) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EEIOState>)))
  "Returns string type for a message object of type '<EEIOState>"
  "end_effector_interface/EEIOState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EEIOState)))
  "Returns string type for a message object of type 'EEIOState"
  "end_effector_interface/EEIOState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EEIOState>)))
  "Returns md5sum for a message object of type '<EEIOState>"
  "809bceb7a033605762abfa0c8d28d0ad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EEIOState)))
  "Returns md5sum for a message object of type 'EEIOState"
  "809bceb7a033605762abfa0c8d28d0ad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EEIOState>)))
  "Returns full string definition for message of type '<EEIOState>"
  (cl:format cl:nil "bool digital_input~%bool digital_output~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EEIOState)))
  "Returns full string definition for message of type 'EEIOState"
  (cl:format cl:nil "bool digital_input~%bool digital_output~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EEIOState>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EEIOState>))
  "Converts a ROS message object to a list"
  (cl:list 'EEIOState
    (cl:cons ':digital_input (digital_input msg))
    (cl:cons ':digital_output (digital_output msg))
))
