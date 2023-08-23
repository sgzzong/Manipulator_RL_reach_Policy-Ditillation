; Auto-generated. Do not edit!


(cl:in-package niryo_robot_msgs-msg)


;//! \htmlinclude MotorHeader.msg.html

(cl:defclass <MotorHeader> (roslisp-msg-protocol:ros-message)
  ((motor_id
    :reader motor_id
    :initarg :motor_id
    :type cl:fixnum
    :initform 0)
   (motor_type
    :reader motor_type
    :initarg :motor_type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MotorHeader (<MotorHeader>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotorHeader>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotorHeader)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_msgs-msg:<MotorHeader> is deprecated: use niryo_robot_msgs-msg:MotorHeader instead.")))

(cl:ensure-generic-function 'motor_id-val :lambda-list '(m))
(cl:defmethod motor_id-val ((m <MotorHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_msgs-msg:motor_id-val is deprecated.  Use niryo_robot_msgs-msg:motor_id instead.")
  (motor_id m))

(cl:ensure-generic-function 'motor_type-val :lambda-list '(m))
(cl:defmethod motor_type-val ((m <MotorHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_msgs-msg:motor_type-val is deprecated.  Use niryo_robot_msgs-msg:motor_type instead.")
  (motor_type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MotorHeader>)))
    "Constants for message type '<MotorHeader>"
  '((:MOTOR_TYPE_STEPPER . 1)
    (:MOTOR_TYPE_XL430 . 2)
    (:MOTOR_TYPE_XL320 . 3)
    (:MOTOR_TYPE_XL330 . 4)
    (:MOROR_TYPE_XC430 . 5)
    (:MOTOR_TYPE_END_EFFECTOR . 10))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MotorHeader)))
    "Constants for message type 'MotorHeader"
  '((:MOTOR_TYPE_STEPPER . 1)
    (:MOTOR_TYPE_XL430 . 2)
    (:MOTOR_TYPE_XL320 . 3)
    (:MOTOR_TYPE_XL330 . 4)
    (:MOROR_TYPE_XC430 . 5)
    (:MOTOR_TYPE_END_EFFECTOR . 10))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotorHeader>) ostream)
  "Serializes a message object of type '<MotorHeader>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motor_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motor_type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotorHeader>) istream)
  "Deserializes a message object of type '<MotorHeader>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motor_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motor_type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotorHeader>)))
  "Returns string type for a message object of type '<MotorHeader>"
  "niryo_robot_msgs/MotorHeader")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorHeader)))
  "Returns string type for a message object of type 'MotorHeader"
  "niryo_robot_msgs/MotorHeader")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotorHeader>)))
  "Returns md5sum for a message object of type '<MotorHeader>"
  "37f646768b4675df61058ccaf9b61862")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotorHeader)))
  "Returns md5sum for a message object of type 'MotorHeader"
  "37f646768b4675df61058ccaf9b61862")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotorHeader>)))
  "Returns full string definition for message of type '<MotorHeader>"
  (cl:format cl:nil "uint8 motor_id~%~%uint8 motor_type~%uint8 MOTOR_TYPE_STEPPER=1~%uint8 MOTOR_TYPE_XL430=2~%uint8 MOTOR_TYPE_XL320=3~%uint8 MOTOR_TYPE_XL330=4~%uint8 MOROR_TYPE_XC430=5~%uint8 MOTOR_TYPE_END_EFFECTOR=10~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotorHeader)))
  "Returns full string definition for message of type 'MotorHeader"
  (cl:format cl:nil "uint8 motor_id~%~%uint8 motor_type~%uint8 MOTOR_TYPE_STEPPER=1~%uint8 MOTOR_TYPE_XL430=2~%uint8 MOTOR_TYPE_XL320=3~%uint8 MOTOR_TYPE_XL330=4~%uint8 MOROR_TYPE_XC430=5~%uint8 MOTOR_TYPE_END_EFFECTOR=10~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotorHeader>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotorHeader>))
  "Converts a ROS message object to a list"
  (cl:list 'MotorHeader
    (cl:cons ':motor_id (motor_id msg))
    (cl:cons ':motor_type (motor_type msg))
))
