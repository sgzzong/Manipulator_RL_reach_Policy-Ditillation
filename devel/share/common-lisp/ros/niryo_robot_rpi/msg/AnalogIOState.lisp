; Auto-generated. Do not edit!


(cl:in-package niryo_robot_rpi-msg)


;//! \htmlinclude AnalogIOState.msg.html

(cl:defclass <AnalogIOState> (roslisp-msg-protocol:ros-message)
  ((analog_inputs
    :reader analog_inputs
    :initarg :analog_inputs
    :type (cl:vector niryo_robot_rpi-msg:AnalogIO)
   :initform (cl:make-array 0 :element-type 'niryo_robot_rpi-msg:AnalogIO :initial-element (cl:make-instance 'niryo_robot_rpi-msg:AnalogIO)))
   (analog_outputs
    :reader analog_outputs
    :initarg :analog_outputs
    :type (cl:vector niryo_robot_rpi-msg:AnalogIO)
   :initform (cl:make-array 0 :element-type 'niryo_robot_rpi-msg:AnalogIO :initial-element (cl:make-instance 'niryo_robot_rpi-msg:AnalogIO))))
)

(cl:defclass AnalogIOState (<AnalogIOState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AnalogIOState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AnalogIOState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_rpi-msg:<AnalogIOState> is deprecated: use niryo_robot_rpi-msg:AnalogIOState instead.")))

(cl:ensure-generic-function 'analog_inputs-val :lambda-list '(m))
(cl:defmethod analog_inputs-val ((m <AnalogIOState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_rpi-msg:analog_inputs-val is deprecated.  Use niryo_robot_rpi-msg:analog_inputs instead.")
  (analog_inputs m))

(cl:ensure-generic-function 'analog_outputs-val :lambda-list '(m))
(cl:defmethod analog_outputs-val ((m <AnalogIOState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_rpi-msg:analog_outputs-val is deprecated.  Use niryo_robot_rpi-msg:analog_outputs instead.")
  (analog_outputs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AnalogIOState>) ostream)
  "Serializes a message object of type '<AnalogIOState>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'analog_inputs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'analog_inputs))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'analog_outputs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'analog_outputs))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AnalogIOState>) istream)
  "Deserializes a message object of type '<AnalogIOState>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'analog_inputs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'analog_inputs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'niryo_robot_rpi-msg:AnalogIO))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'analog_outputs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'analog_outputs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'niryo_robot_rpi-msg:AnalogIO))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AnalogIOState>)))
  "Returns string type for a message object of type '<AnalogIOState>"
  "niryo_robot_rpi/AnalogIOState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AnalogIOState)))
  "Returns string type for a message object of type 'AnalogIOState"
  "niryo_robot_rpi/AnalogIOState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AnalogIOState>)))
  "Returns md5sum for a message object of type '<AnalogIOState>"
  "50830703d75ba2ea72eb263ee99782e6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AnalogIOState)))
  "Returns md5sum for a message object of type 'AnalogIOState"
  "50830703d75ba2ea72eb263ee99782e6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AnalogIOState>)))
  "Returns full string definition for message of type '<AnalogIOState>"
  (cl:format cl:nil "niryo_robot_rpi/AnalogIO[] analog_inputs~%niryo_robot_rpi/AnalogIO[] analog_outputs~%~%~%~%================================================================================~%MSG: niryo_robot_rpi/AnalogIO~%string name~%float64 value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AnalogIOState)))
  "Returns full string definition for message of type 'AnalogIOState"
  (cl:format cl:nil "niryo_robot_rpi/AnalogIO[] analog_inputs~%niryo_robot_rpi/AnalogIO[] analog_outputs~%~%~%~%================================================================================~%MSG: niryo_robot_rpi/AnalogIO~%string name~%float64 value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AnalogIOState>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'analog_inputs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'analog_outputs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AnalogIOState>))
  "Converts a ROS message object to a list"
  (cl:list 'AnalogIOState
    (cl:cons ':analog_inputs (analog_inputs msg))
    (cl:cons ':analog_outputs (analog_outputs msg))
))
