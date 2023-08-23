; Auto-generated. Do not edit!


(cl:in-package niryo_robot_rpi-srv)


;//! \htmlinclude SetAnalogIO-request.msg.html

(cl:defclass <SetAnalogIO-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (value
    :reader value
    :initarg :value
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetAnalogIO-request (<SetAnalogIO-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetAnalogIO-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetAnalogIO-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_rpi-srv:<SetAnalogIO-request> is deprecated: use niryo_robot_rpi-srv:SetAnalogIO-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <SetAnalogIO-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_rpi-srv:name-val is deprecated.  Use niryo_robot_rpi-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <SetAnalogIO-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_rpi-srv:value-val is deprecated.  Use niryo_robot_rpi-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetAnalogIO-request>) ostream)
  "Serializes a message object of type '<SetAnalogIO-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetAnalogIO-request>) istream)
  "Deserializes a message object of type '<SetAnalogIO-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'value) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetAnalogIO-request>)))
  "Returns string type for a service object of type '<SetAnalogIO-request>"
  "niryo_robot_rpi/SetAnalogIORequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetAnalogIO-request)))
  "Returns string type for a service object of type 'SetAnalogIO-request"
  "niryo_robot_rpi/SetAnalogIORequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetAnalogIO-request>)))
  "Returns md5sum for a message object of type '<SetAnalogIO-request>"
  "c3eb179d3143b44ef971b15a3fa11bb0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetAnalogIO-request)))
  "Returns md5sum for a message object of type 'SetAnalogIO-request"
  "c3eb179d3143b44ef971b15a3fa11bb0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetAnalogIO-request>)))
  "Returns full string definition for message of type '<SetAnalogIO-request>"
  (cl:format cl:nil "string name~%float64 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetAnalogIO-request)))
  "Returns full string definition for message of type 'SetAnalogIO-request"
  (cl:format cl:nil "string name~%float64 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetAnalogIO-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetAnalogIO-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetAnalogIO-request
    (cl:cons ':name (name msg))
    (cl:cons ':value (value msg))
))
;//! \htmlinclude SetAnalogIO-response.msg.html

(cl:defclass <SetAnalogIO-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass SetAnalogIO-response (<SetAnalogIO-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetAnalogIO-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetAnalogIO-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_rpi-srv:<SetAnalogIO-response> is deprecated: use niryo_robot_rpi-srv:SetAnalogIO-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <SetAnalogIO-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_rpi-srv:status-val is deprecated.  Use niryo_robot_rpi-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetAnalogIO-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_rpi-srv:message-val is deprecated.  Use niryo_robot_rpi-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetAnalogIO-response>) ostream)
  "Serializes a message object of type '<SetAnalogIO-response>"
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetAnalogIO-response>) istream)
  "Deserializes a message object of type '<SetAnalogIO-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetAnalogIO-response>)))
  "Returns string type for a service object of type '<SetAnalogIO-response>"
  "niryo_robot_rpi/SetAnalogIOResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetAnalogIO-response)))
  "Returns string type for a service object of type 'SetAnalogIO-response"
  "niryo_robot_rpi/SetAnalogIOResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetAnalogIO-response>)))
  "Returns md5sum for a message object of type '<SetAnalogIO-response>"
  "c3eb179d3143b44ef971b15a3fa11bb0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetAnalogIO-response)))
  "Returns md5sum for a message object of type 'SetAnalogIO-response"
  "c3eb179d3143b44ef971b15a3fa11bb0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetAnalogIO-response>)))
  "Returns full string definition for message of type '<SetAnalogIO-response>"
  (cl:format cl:nil "int32 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetAnalogIO-response)))
  "Returns full string definition for message of type 'SetAnalogIO-response"
  (cl:format cl:nil "int32 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetAnalogIO-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetAnalogIO-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetAnalogIO-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetAnalogIO)))
  'SetAnalogIO-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetAnalogIO)))
  'SetAnalogIO-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetAnalogIO)))
  "Returns string type for a service object of type '<SetAnalogIO>"
  "niryo_robot_rpi/SetAnalogIO")