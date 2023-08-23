; Auto-generated. Do not edit!


(cl:in-package niryo_robot_led_ring-srv)


;//! \htmlinclude SetLedColor-request.msg.html

(cl:defclass <SetLedColor-request> (roslisp-msg-protocol:ros-message)
  ((led_id
    :reader led_id
    :initarg :led_id
    :type cl:fixnum
    :initform 0)
   (color
    :reader color
    :initarg :color
    :type std_msgs-msg:ColorRGBA
    :initform (cl:make-instance 'std_msgs-msg:ColorRGBA)))
)

(cl:defclass SetLedColor-request (<SetLedColor-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetLedColor-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetLedColor-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_led_ring-srv:<SetLedColor-request> is deprecated: use niryo_robot_led_ring-srv:SetLedColor-request instead.")))

(cl:ensure-generic-function 'led_id-val :lambda-list '(m))
(cl:defmethod led_id-val ((m <SetLedColor-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_led_ring-srv:led_id-val is deprecated.  Use niryo_robot_led_ring-srv:led_id instead.")
  (led_id m))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <SetLedColor-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_led_ring-srv:color-val is deprecated.  Use niryo_robot_led_ring-srv:color instead.")
  (color m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetLedColor-request>) ostream)
  "Serializes a message object of type '<SetLedColor-request>"
  (cl:let* ((signed (cl:slot-value msg 'led_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'color) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetLedColor-request>) istream)
  "Deserializes a message object of type '<SetLedColor-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'led_id) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'color) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetLedColor-request>)))
  "Returns string type for a service object of type '<SetLedColor-request>"
  "niryo_robot_led_ring/SetLedColorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLedColor-request)))
  "Returns string type for a service object of type 'SetLedColor-request"
  "niryo_robot_led_ring/SetLedColorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetLedColor-request>)))
  "Returns md5sum for a message object of type '<SetLedColor-request>"
  "b86387a305c7fa88645685251c498fb0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetLedColor-request)))
  "Returns md5sum for a message object of type 'SetLedColor-request"
  "b86387a305c7fa88645685251c498fb0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetLedColor-request>)))
  "Returns full string definition for message of type '<SetLedColor-request>"
  (cl:format cl:nil "int8 led_id~%std_msgs/ColorRGBA color~%~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetLedColor-request)))
  "Returns full string definition for message of type 'SetLedColor-request"
  (cl:format cl:nil "int8 led_id~%std_msgs/ColorRGBA color~%~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetLedColor-request>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'color))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetLedColor-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetLedColor-request
    (cl:cons ':led_id (led_id msg))
    (cl:cons ':color (color msg))
))
;//! \htmlinclude SetLedColor-response.msg.html

(cl:defclass <SetLedColor-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetLedColor-response (<SetLedColor-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetLedColor-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetLedColor-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_led_ring-srv:<SetLedColor-response> is deprecated: use niryo_robot_led_ring-srv:SetLedColor-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <SetLedColor-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_led_ring-srv:status-val is deprecated.  Use niryo_robot_led_ring-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetLedColor-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_led_ring-srv:message-val is deprecated.  Use niryo_robot_led_ring-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetLedColor-response>) ostream)
  "Serializes a message object of type '<SetLedColor-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetLedColor-response>) istream)
  "Deserializes a message object of type '<SetLedColor-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetLedColor-response>)))
  "Returns string type for a service object of type '<SetLedColor-response>"
  "niryo_robot_led_ring/SetLedColorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLedColor-response)))
  "Returns string type for a service object of type 'SetLedColor-response"
  "niryo_robot_led_ring/SetLedColorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetLedColor-response>)))
  "Returns md5sum for a message object of type '<SetLedColor-response>"
  "b86387a305c7fa88645685251c498fb0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetLedColor-response)))
  "Returns md5sum for a message object of type 'SetLedColor-response"
  "b86387a305c7fa88645685251c498fb0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetLedColor-response>)))
  "Returns full string definition for message of type '<SetLedColor-response>"
  (cl:format cl:nil "int32 status~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetLedColor-response)))
  "Returns full string definition for message of type 'SetLedColor-response"
  (cl:format cl:nil "int32 status~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetLedColor-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetLedColor-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetLedColor-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetLedColor)))
  'SetLedColor-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetLedColor)))
  'SetLedColor-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLedColor)))
  "Returns string type for a service object of type '<SetLedColor>"
  "niryo_robot_led_ring/SetLedColor")