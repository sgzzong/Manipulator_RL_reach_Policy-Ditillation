; Auto-generated. Do not edit!


(cl:in-package niryo_robot_vision-srv)


;//! \htmlinclude SetImageParameter-request.msg.html

(cl:defclass <SetImageParameter-request> (roslisp-msg-protocol:ros-message)
  ((factor
    :reader factor
    :initarg :factor
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetImageParameter-request (<SetImageParameter-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetImageParameter-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetImageParameter-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_vision-srv:<SetImageParameter-request> is deprecated: use niryo_robot_vision-srv:SetImageParameter-request instead.")))

(cl:ensure-generic-function 'factor-val :lambda-list '(m))
(cl:defmethod factor-val ((m <SetImageParameter-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_vision-srv:factor-val is deprecated.  Use niryo_robot_vision-srv:factor instead.")
  (factor m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetImageParameter-request>) ostream)
  "Serializes a message object of type '<SetImageParameter-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'factor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetImageParameter-request>) istream)
  "Deserializes a message object of type '<SetImageParameter-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'factor) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetImageParameter-request>)))
  "Returns string type for a service object of type '<SetImageParameter-request>"
  "niryo_robot_vision/SetImageParameterRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetImageParameter-request)))
  "Returns string type for a service object of type 'SetImageParameter-request"
  "niryo_robot_vision/SetImageParameterRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetImageParameter-request>)))
  "Returns md5sum for a message object of type '<SetImageParameter-request>"
  "79e36a79455733779ca17a0bc2617f46")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetImageParameter-request)))
  "Returns md5sum for a message object of type 'SetImageParameter-request"
  "79e36a79455733779ca17a0bc2617f46")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetImageParameter-request>)))
  "Returns full string definition for message of type '<SetImageParameter-request>"
  (cl:format cl:nil "float64 factor~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetImageParameter-request)))
  "Returns full string definition for message of type 'SetImageParameter-request"
  (cl:format cl:nil "float64 factor~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetImageParameter-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetImageParameter-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetImageParameter-request
    (cl:cons ':factor (factor msg))
))
;//! \htmlinclude SetImageParameter-response.msg.html

(cl:defclass <SetImageParameter-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetImageParameter-response (<SetImageParameter-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetImageParameter-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetImageParameter-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_vision-srv:<SetImageParameter-response> is deprecated: use niryo_robot_vision-srv:SetImageParameter-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <SetImageParameter-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_vision-srv:status-val is deprecated.  Use niryo_robot_vision-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetImageParameter-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_vision-srv:message-val is deprecated.  Use niryo_robot_vision-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetImageParameter-response>) ostream)
  "Serializes a message object of type '<SetImageParameter-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetImageParameter-response>) istream)
  "Deserializes a message object of type '<SetImageParameter-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetImageParameter-response>)))
  "Returns string type for a service object of type '<SetImageParameter-response>"
  "niryo_robot_vision/SetImageParameterResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetImageParameter-response)))
  "Returns string type for a service object of type 'SetImageParameter-response"
  "niryo_robot_vision/SetImageParameterResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetImageParameter-response>)))
  "Returns md5sum for a message object of type '<SetImageParameter-response>"
  "79e36a79455733779ca17a0bc2617f46")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetImageParameter-response)))
  "Returns md5sum for a message object of type 'SetImageParameter-response"
  "79e36a79455733779ca17a0bc2617f46")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetImageParameter-response>)))
  "Returns full string definition for message of type '<SetImageParameter-response>"
  (cl:format cl:nil "int32 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetImageParameter-response)))
  "Returns full string definition for message of type 'SetImageParameter-response"
  (cl:format cl:nil "int32 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetImageParameter-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetImageParameter-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetImageParameter-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetImageParameter)))
  'SetImageParameter-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetImageParameter)))
  'SetImageParameter-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetImageParameter)))
  "Returns string type for a service object of type '<SetImageParameter>"
  "niryo_robot_vision/SetImageParameter")