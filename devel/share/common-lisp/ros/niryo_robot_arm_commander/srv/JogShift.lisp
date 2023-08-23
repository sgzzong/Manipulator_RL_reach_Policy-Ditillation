; Auto-generated. Do not edit!


(cl:in-package niryo_robot_arm_commander-srv)


;//! \htmlinclude JogShift-request.msg.html

(cl:defclass <JogShift-request> (roslisp-msg-protocol:ros-message)
  ((cmd
    :reader cmd
    :initarg :cmd
    :type cl:integer
    :initform 0)
   (shift_values
    :reader shift_values
    :initarg :shift_values
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass JogShift-request (<JogShift-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JogShift-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JogShift-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_arm_commander-srv:<JogShift-request> is deprecated: use niryo_robot_arm_commander-srv:JogShift-request instead.")))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <JogShift-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_arm_commander-srv:cmd-val is deprecated.  Use niryo_robot_arm_commander-srv:cmd instead.")
  (cmd m))

(cl:ensure-generic-function 'shift_values-val :lambda-list '(m))
(cl:defmethod shift_values-val ((m <JogShift-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_arm_commander-srv:shift_values-val is deprecated.  Use niryo_robot_arm_commander-srv:shift_values instead.")
  (shift_values m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<JogShift-request>)))
    "Constants for message type '<JogShift-request>"
  '((:JOINTS_SHIFT . 1)
    (:POSE_SHIFT . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'JogShift-request)))
    "Constants for message type 'JogShift-request"
  '((:JOINTS_SHIFT . 1)
    (:POSE_SHIFT . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JogShift-request>) ostream)
  "Serializes a message object of type '<JogShift-request>"
  (cl:let* ((signed (cl:slot-value msg 'cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'shift_values))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'shift_values))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JogShift-request>) istream)
  "Deserializes a message object of type '<JogShift-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cmd) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'shift_values) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'shift_values)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JogShift-request>)))
  "Returns string type for a service object of type '<JogShift-request>"
  "niryo_robot_arm_commander/JogShiftRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JogShift-request)))
  "Returns string type for a service object of type 'JogShift-request"
  "niryo_robot_arm_commander/JogShiftRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JogShift-request>)))
  "Returns md5sum for a message object of type '<JogShift-request>"
  "63bb8af5051d5e683358a7466dbe2c2c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JogShift-request)))
  "Returns md5sum for a message object of type 'JogShift-request"
  "63bb8af5051d5e683358a7466dbe2c2c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JogShift-request>)))
  "Returns full string definition for message of type '<JogShift-request>"
  (cl:format cl:nil "int32 JOINTS_SHIFT = 1~%int32 POSE_SHIFT = 2~%~%int32 cmd~%~%float32[] shift_values~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JogShift-request)))
  "Returns full string definition for message of type 'JogShift-request"
  (cl:format cl:nil "int32 JOINTS_SHIFT = 1~%int32 POSE_SHIFT = 2~%~%int32 cmd~%~%float32[] shift_values~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JogShift-request>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'shift_values) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JogShift-request>))
  "Converts a ROS message object to a list"
  (cl:list 'JogShift-request
    (cl:cons ':cmd (cmd msg))
    (cl:cons ':shift_values (shift_values msg))
))
;//! \htmlinclude JogShift-response.msg.html

(cl:defclass <JogShift-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass JogShift-response (<JogShift-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JogShift-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JogShift-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_arm_commander-srv:<JogShift-response> is deprecated: use niryo_robot_arm_commander-srv:JogShift-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <JogShift-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_arm_commander-srv:status-val is deprecated.  Use niryo_robot_arm_commander-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <JogShift-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_arm_commander-srv:message-val is deprecated.  Use niryo_robot_arm_commander-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JogShift-response>) ostream)
  "Serializes a message object of type '<JogShift-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JogShift-response>) istream)
  "Deserializes a message object of type '<JogShift-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JogShift-response>)))
  "Returns string type for a service object of type '<JogShift-response>"
  "niryo_robot_arm_commander/JogShiftResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JogShift-response)))
  "Returns string type for a service object of type 'JogShift-response"
  "niryo_robot_arm_commander/JogShiftResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JogShift-response>)))
  "Returns md5sum for a message object of type '<JogShift-response>"
  "63bb8af5051d5e683358a7466dbe2c2c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JogShift-response)))
  "Returns md5sum for a message object of type 'JogShift-response"
  "63bb8af5051d5e683358a7466dbe2c2c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JogShift-response>)))
  "Returns full string definition for message of type '<JogShift-response>"
  (cl:format cl:nil "int32 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JogShift-response)))
  "Returns full string definition for message of type 'JogShift-response"
  (cl:format cl:nil "int32 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JogShift-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JogShift-response>))
  "Converts a ROS message object to a list"
  (cl:list 'JogShift-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'JogShift)))
  'JogShift-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'JogShift)))
  'JogShift-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JogShift)))
  "Returns string type for a service object of type '<JogShift>"
  "niryo_robot_arm_commander/JogShift")