; Auto-generated. Do not edit!


(cl:in-package can_driver-srv)


;//! \htmlinclude StepperCmd-request.msg.html

(cl:defclass <StepperCmd-request> (roslisp-msg-protocol:ros-message)
  ((cmd_type
    :reader cmd_type
    :initarg :cmd_type
    :type cl:fixnum
    :initform 0)
   (motors_id
    :reader motors_id
    :initarg :motors_id
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (params
    :reader params
    :initarg :params
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass StepperCmd-request (<StepperCmd-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StepperCmd-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StepperCmd-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name can_driver-srv:<StepperCmd-request> is deprecated: use can_driver-srv:StepperCmd-request instead.")))

(cl:ensure-generic-function 'cmd_type-val :lambda-list '(m))
(cl:defmethod cmd_type-val ((m <StepperCmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_driver-srv:cmd_type-val is deprecated.  Use can_driver-srv:cmd_type instead.")
  (cmd_type m))

(cl:ensure-generic-function 'motors_id-val :lambda-list '(m))
(cl:defmethod motors_id-val ((m <StepperCmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_driver-srv:motors_id-val is deprecated.  Use can_driver-srv:motors_id instead.")
  (motors_id m))

(cl:ensure-generic-function 'params-val :lambda-list '(m))
(cl:defmethod params-val ((m <StepperCmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_driver-srv:params-val is deprecated.  Use can_driver-srv:params instead.")
  (params m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<StepperCmd-request>)))
    "Constants for message type '<StepperCmd-request>"
  '((:CMD_TYPE_SYNCHRONIZE . 5)
    (:CMD_TYPE_RELATIVE_MOVE . 6)
    (:CMD_TYPE_MAX_EFFORT . 7)
    (:CMD_TYPE_MICRO_STEPS . 8)
    (:CMD_TYPE_POSITION_OFFSET . 9)
    (:CMD_TYPE_CALIBRATION . 10))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'StepperCmd-request)))
    "Constants for message type 'StepperCmd-request"
  '((:CMD_TYPE_SYNCHRONIZE . 5)
    (:CMD_TYPE_RELATIVE_MOVE . 6)
    (:CMD_TYPE_MAX_EFFORT . 7)
    (:CMD_TYPE_MICRO_STEPS . 8)
    (:CMD_TYPE_POSITION_OFFSET . 9)
    (:CMD_TYPE_CALIBRATION . 10))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StepperCmd-request>) ostream)
  "Serializes a message object of type '<StepperCmd-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_type)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'motors_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'motors_id))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'params))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'params))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StepperCmd-request>) istream)
  "Deserializes a message object of type '<StepperCmd-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_type)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'motors_id) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'motors_id)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'params) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'params)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StepperCmd-request>)))
  "Returns string type for a service object of type '<StepperCmd-request>"
  "can_driver/StepperCmdRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StepperCmd-request)))
  "Returns string type for a service object of type 'StepperCmd-request"
  "can_driver/StepperCmdRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StepperCmd-request>)))
  "Returns md5sum for a message object of type '<StepperCmd-request>"
  "ba19744f08da796611d9a0fb1a26974e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StepperCmd-request)))
  "Returns md5sum for a message object of type 'StepperCmd-request"
  "ba19744f08da796611d9a0fb1a26974e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StepperCmd-request>)))
  "Returns full string definition for message of type '<StepperCmd-request>"
  (cl:format cl:nil "uint8 cmd_type~%uint8 CMD_TYPE_SYNCHRONIZE=5~%uint8 CMD_TYPE_RELATIVE_MOVE=6~%uint8 CMD_TYPE_MAX_EFFORT=7~%uint8 CMD_TYPE_MICRO_STEPS=8~%uint8 CMD_TYPE_POSITION_OFFSET=9~%uint8 CMD_TYPE_CALIBRATION=10~%~%uint8[] motors_id~%int32[] params~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StepperCmd-request)))
  "Returns full string definition for message of type 'StepperCmd-request"
  (cl:format cl:nil "uint8 cmd_type~%uint8 CMD_TYPE_SYNCHRONIZE=5~%uint8 CMD_TYPE_RELATIVE_MOVE=6~%uint8 CMD_TYPE_MAX_EFFORT=7~%uint8 CMD_TYPE_MICRO_STEPS=8~%uint8 CMD_TYPE_POSITION_OFFSET=9~%uint8 CMD_TYPE_CALIBRATION=10~%~%uint8[] motors_id~%int32[] params~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StepperCmd-request>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'motors_id) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'params) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StepperCmd-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StepperCmd-request
    (cl:cons ':cmd_type (cmd_type msg))
    (cl:cons ':motors_id (motors_id msg))
    (cl:cons ':params (params msg))
))
;//! \htmlinclude StepperCmd-response.msg.html

(cl:defclass <StepperCmd-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass StepperCmd-response (<StepperCmd-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StepperCmd-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StepperCmd-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name can_driver-srv:<StepperCmd-response> is deprecated: use can_driver-srv:StepperCmd-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <StepperCmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_driver-srv:result-val is deprecated.  Use can_driver-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StepperCmd-response>) ostream)
  "Serializes a message object of type '<StepperCmd-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StepperCmd-response>) istream)
  "Deserializes a message object of type '<StepperCmd-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StepperCmd-response>)))
  "Returns string type for a service object of type '<StepperCmd-response>"
  "can_driver/StepperCmdResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StepperCmd-response)))
  "Returns string type for a service object of type 'StepperCmd-response"
  "can_driver/StepperCmdResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StepperCmd-response>)))
  "Returns md5sum for a message object of type '<StepperCmd-response>"
  "ba19744f08da796611d9a0fb1a26974e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StepperCmd-response)))
  "Returns md5sum for a message object of type 'StepperCmd-response"
  "ba19744f08da796611d9a0fb1a26974e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StepperCmd-response>)))
  "Returns full string definition for message of type '<StepperCmd-response>"
  (cl:format cl:nil "bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StepperCmd-response)))
  "Returns full string definition for message of type 'StepperCmd-response"
  (cl:format cl:nil "bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StepperCmd-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StepperCmd-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StepperCmd-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StepperCmd)))
  'StepperCmd-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StepperCmd)))
  'StepperCmd-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StepperCmd)))
  "Returns string type for a service object of type '<StepperCmd>"
  "can_driver/StepperCmd")