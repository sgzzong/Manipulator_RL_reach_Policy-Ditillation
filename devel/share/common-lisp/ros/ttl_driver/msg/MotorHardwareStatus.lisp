; Auto-generated. Do not edit!


(cl:in-package ttl_driver-msg)


;//! \htmlinclude MotorHardwareStatus.msg.html

(cl:defclass <MotorHardwareStatus> (roslisp-msg-protocol:ros-message)
  ((motor_identity
    :reader motor_identity
    :initarg :motor_identity
    :type niryo_robot_msgs-msg:MotorHeader
    :initform (cl:make-instance 'niryo_robot_msgs-msg:MotorHeader))
   (firmware_version
    :reader firmware_version
    :initarg :firmware_version
    :type cl:string
    :initform "")
   (temperature
    :reader temperature
    :initarg :temperature
    :type cl:integer
    :initform 0)
   (voltage
    :reader voltage
    :initarg :voltage
    :type cl:float
    :initform 0.0)
   (error
    :reader error
    :initarg :error
    :type cl:integer
    :initform 0)
   (error_msg
    :reader error_msg
    :initarg :error_msg
    :type cl:string
    :initform ""))
)

(cl:defclass MotorHardwareStatus (<MotorHardwareStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotorHardwareStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotorHardwareStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ttl_driver-msg:<MotorHardwareStatus> is deprecated: use ttl_driver-msg:MotorHardwareStatus instead.")))

(cl:ensure-generic-function 'motor_identity-val :lambda-list '(m))
(cl:defmethod motor_identity-val ((m <MotorHardwareStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ttl_driver-msg:motor_identity-val is deprecated.  Use ttl_driver-msg:motor_identity instead.")
  (motor_identity m))

(cl:ensure-generic-function 'firmware_version-val :lambda-list '(m))
(cl:defmethod firmware_version-val ((m <MotorHardwareStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ttl_driver-msg:firmware_version-val is deprecated.  Use ttl_driver-msg:firmware_version instead.")
  (firmware_version m))

(cl:ensure-generic-function 'temperature-val :lambda-list '(m))
(cl:defmethod temperature-val ((m <MotorHardwareStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ttl_driver-msg:temperature-val is deprecated.  Use ttl_driver-msg:temperature instead.")
  (temperature m))

(cl:ensure-generic-function 'voltage-val :lambda-list '(m))
(cl:defmethod voltage-val ((m <MotorHardwareStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ttl_driver-msg:voltage-val is deprecated.  Use ttl_driver-msg:voltage instead.")
  (voltage m))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <MotorHardwareStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ttl_driver-msg:error-val is deprecated.  Use ttl_driver-msg:error instead.")
  (error m))

(cl:ensure-generic-function 'error_msg-val :lambda-list '(m))
(cl:defmethod error_msg-val ((m <MotorHardwareStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ttl_driver-msg:error_msg-val is deprecated.  Use ttl_driver-msg:error_msg instead.")
  (error_msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotorHardwareStatus>) ostream)
  "Serializes a message object of type '<MotorHardwareStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'motor_identity) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'firmware_version))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'firmware_version))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'temperature)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'temperature)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'temperature)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'temperature)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'voltage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'error)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'error)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'error)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error_msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error_msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotorHardwareStatus>) istream)
  "Deserializes a message object of type '<MotorHardwareStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'motor_identity) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'firmware_version) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'firmware_version) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'temperature)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'temperature)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'temperature)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'temperature)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'voltage) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'error)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'error)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'error)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'error_msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotorHardwareStatus>)))
  "Returns string type for a message object of type '<MotorHardwareStatus>"
  "ttl_driver/MotorHardwareStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorHardwareStatus)))
  "Returns string type for a message object of type 'MotorHardwareStatus"
  "ttl_driver/MotorHardwareStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotorHardwareStatus>)))
  "Returns md5sum for a message object of type '<MotorHardwareStatus>"
  "d38a5d35efbee481425ca6e864f50fce")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotorHardwareStatus)))
  "Returns md5sum for a message object of type 'MotorHardwareStatus"
  "d38a5d35efbee481425ca6e864f50fce")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotorHardwareStatus>)))
  "Returns full string definition for message of type '<MotorHardwareStatus>"
  (cl:format cl:nil "niryo_robot_msgs/MotorHeader motor_identity~%~%string firmware_version~%uint32 temperature~%float64 voltage~%uint32 error~%string error_msg~%~%================================================================================~%MSG: niryo_robot_msgs/MotorHeader~%uint8 motor_id~%~%uint8 motor_type~%uint8 MOTOR_TYPE_STEPPER=1~%uint8 MOTOR_TYPE_XL430=2~%uint8 MOTOR_TYPE_XL320=3~%uint8 MOTOR_TYPE_XL330=4~%uint8 MOROR_TYPE_XC430=5~%uint8 MOTOR_TYPE_END_EFFECTOR=10~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotorHardwareStatus)))
  "Returns full string definition for message of type 'MotorHardwareStatus"
  (cl:format cl:nil "niryo_robot_msgs/MotorHeader motor_identity~%~%string firmware_version~%uint32 temperature~%float64 voltage~%uint32 error~%string error_msg~%~%================================================================================~%MSG: niryo_robot_msgs/MotorHeader~%uint8 motor_id~%~%uint8 motor_type~%uint8 MOTOR_TYPE_STEPPER=1~%uint8 MOTOR_TYPE_XL430=2~%uint8 MOTOR_TYPE_XL320=3~%uint8 MOTOR_TYPE_XL330=4~%uint8 MOROR_TYPE_XC430=5~%uint8 MOTOR_TYPE_END_EFFECTOR=10~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotorHardwareStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'motor_identity))
     4 (cl:length (cl:slot-value msg 'firmware_version))
     4
     8
     4
     4 (cl:length (cl:slot-value msg 'error_msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotorHardwareStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'MotorHardwareStatus
    (cl:cons ':motor_identity (motor_identity msg))
    (cl:cons ':firmware_version (firmware_version msg))
    (cl:cons ':temperature (temperature msg))
    (cl:cons ':voltage (voltage msg))
    (cl:cons ':error (error msg))
    (cl:cons ':error_msg (error_msg msg))
))
