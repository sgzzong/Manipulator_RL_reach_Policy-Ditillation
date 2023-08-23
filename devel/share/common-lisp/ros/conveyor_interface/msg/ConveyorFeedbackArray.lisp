; Auto-generated. Do not edit!


(cl:in-package conveyor_interface-msg)


;//! \htmlinclude ConveyorFeedbackArray.msg.html

(cl:defclass <ConveyorFeedbackArray> (roslisp-msg-protocol:ros-message)
  ((conveyors
    :reader conveyors
    :initarg :conveyors
    :type (cl:vector conveyor_interface-msg:ConveyorFeedback)
   :initform (cl:make-array 0 :element-type 'conveyor_interface-msg:ConveyorFeedback :initial-element (cl:make-instance 'conveyor_interface-msg:ConveyorFeedback))))
)

(cl:defclass ConveyorFeedbackArray (<ConveyorFeedbackArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConveyorFeedbackArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConveyorFeedbackArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name conveyor_interface-msg:<ConveyorFeedbackArray> is deprecated: use conveyor_interface-msg:ConveyorFeedbackArray instead.")))

(cl:ensure-generic-function 'conveyors-val :lambda-list '(m))
(cl:defmethod conveyors-val ((m <ConveyorFeedbackArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader conveyor_interface-msg:conveyors-val is deprecated.  Use conveyor_interface-msg:conveyors instead.")
  (conveyors m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConveyorFeedbackArray>) ostream)
  "Serializes a message object of type '<ConveyorFeedbackArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'conveyors))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'conveyors))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConveyorFeedbackArray>) istream)
  "Deserializes a message object of type '<ConveyorFeedbackArray>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'conveyors) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'conveyors)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'conveyor_interface-msg:ConveyorFeedback))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConveyorFeedbackArray>)))
  "Returns string type for a message object of type '<ConveyorFeedbackArray>"
  "conveyor_interface/ConveyorFeedbackArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConveyorFeedbackArray)))
  "Returns string type for a message object of type 'ConveyorFeedbackArray"
  "conveyor_interface/ConveyorFeedbackArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConveyorFeedbackArray>)))
  "Returns md5sum for a message object of type '<ConveyorFeedbackArray>"
  "40390fad55d7b855b36296e05b77db14")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConveyorFeedbackArray)))
  "Returns md5sum for a message object of type 'ConveyorFeedbackArray"
  "40390fad55d7b855b36296e05b77db14")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConveyorFeedbackArray>)))
  "Returns full string definition for message of type '<ConveyorFeedbackArray>"
  (cl:format cl:nil "conveyor_interface/ConveyorFeedback[] conveyors~%================================================================================~%MSG: conveyor_interface/ConveyorFeedback~%~%#Conveyor id ( either 12 or 18)~%uint8 conveyor_id~%#Conveyor Connection state ( if it is enabled) ~%bool connection_state~%# Conveyor Controls state : ON or OFF~%bool running~%# Conveyor Speed ( 1-> 100 %)~%int16 speed~%# Conveyor direction ( backward or forward)~%int8 direction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConveyorFeedbackArray)))
  "Returns full string definition for message of type 'ConveyorFeedbackArray"
  (cl:format cl:nil "conveyor_interface/ConveyorFeedback[] conveyors~%================================================================================~%MSG: conveyor_interface/ConveyorFeedback~%~%#Conveyor id ( either 12 or 18)~%uint8 conveyor_id~%#Conveyor Connection state ( if it is enabled) ~%bool connection_state~%# Conveyor Controls state : ON or OFF~%bool running~%# Conveyor Speed ( 1-> 100 %)~%int16 speed~%# Conveyor direction ( backward or forward)~%int8 direction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConveyorFeedbackArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'conveyors) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConveyorFeedbackArray>))
  "Converts a ROS message object to a list"
  (cl:list 'ConveyorFeedbackArray
    (cl:cons ':conveyors (conveyors msg))
))
