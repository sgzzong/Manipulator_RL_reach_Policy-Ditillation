; Auto-generated. Do not edit!


(cl:in-package niryo_robot_rpi-srv)


;//! \htmlinclude LedBlinker-request.msg.html

(cl:defclass <LedBlinker-request> (roslisp-msg-protocol:ros-message)
  ((activate
    :reader activate
    :initarg :activate
    :type cl:boolean
    :initform cl:nil)
   (frequency
    :reader frequency
    :initarg :frequency
    :type cl:fixnum
    :initform 0)
   (color
    :reader color
    :initarg :color
    :type cl:fixnum
    :initform 0)
   (blinker_duration
    :reader blinker_duration
    :initarg :blinker_duration
    :type cl:float
    :initform 0.0))
)

(cl:defclass LedBlinker-request (<LedBlinker-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LedBlinker-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LedBlinker-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_rpi-srv:<LedBlinker-request> is deprecated: use niryo_robot_rpi-srv:LedBlinker-request instead.")))

(cl:ensure-generic-function 'activate-val :lambda-list '(m))
(cl:defmethod activate-val ((m <LedBlinker-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_rpi-srv:activate-val is deprecated.  Use niryo_robot_rpi-srv:activate instead.")
  (activate m))

(cl:ensure-generic-function 'frequency-val :lambda-list '(m))
(cl:defmethod frequency-val ((m <LedBlinker-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_rpi-srv:frequency-val is deprecated.  Use niryo_robot_rpi-srv:frequency instead.")
  (frequency m))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <LedBlinker-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_rpi-srv:color-val is deprecated.  Use niryo_robot_rpi-srv:color instead.")
  (color m))

(cl:ensure-generic-function 'blinker_duration-val :lambda-list '(m))
(cl:defmethod blinker_duration-val ((m <LedBlinker-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_rpi-srv:blinker_duration-val is deprecated.  Use niryo_robot_rpi-srv:blinker_duration instead.")
  (blinker_duration m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LedBlinker-request>)))
    "Constants for message type '<LedBlinker-request>"
  '((:LED_OFF . 0)
    (:LED_BLUE . 1)
    (:LED_GREEN . 2)
    (:LED_BLUE_GREEN . 3)
    (:LED_RED . 4)
    (:LED_PURPLE . 5)
    (:LED_RED_GREEN . 6)
    (:LED_WHITE . 7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LedBlinker-request)))
    "Constants for message type 'LedBlinker-request"
  '((:LED_OFF . 0)
    (:LED_BLUE . 1)
    (:LED_GREEN . 2)
    (:LED_BLUE_GREEN . 3)
    (:LED_RED . 4)
    (:LED_PURPLE . 5)
    (:LED_RED_GREEN . 6)
    (:LED_WHITE . 7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LedBlinker-request>) ostream)
  "Serializes a message object of type '<LedBlinker-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'activate) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frequency)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'color)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'blinker_duration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LedBlinker-request>) istream)
  "Deserializes a message object of type '<LedBlinker-request>"
    (cl:setf (cl:slot-value msg 'activate) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frequency)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'color)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'blinker_duration) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LedBlinker-request>)))
  "Returns string type for a service object of type '<LedBlinker-request>"
  "niryo_robot_rpi/LedBlinkerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LedBlinker-request)))
  "Returns string type for a service object of type 'LedBlinker-request"
  "niryo_robot_rpi/LedBlinkerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LedBlinker-request>)))
  "Returns md5sum for a message object of type '<LedBlinker-request>"
  "a9c225f56e57f38d3097de07bd306c80")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LedBlinker-request)))
  "Returns md5sum for a message object of type 'LedBlinker-request"
  "a9c225f56e57f38d3097de07bd306c80")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LedBlinker-request>)))
  "Returns full string definition for message of type '<LedBlinker-request>"
  (cl:format cl:nil "uint8 LED_OFF = 0~%uint8 LED_BLUE = 1~%uint8 LED_GREEN = 2~%uint8 LED_BLUE_GREEN = 3~%uint8 LED_RED = 4~%uint8 LED_PURPLE = 5~%uint8 LED_RED_GREEN = 6~%uint8 LED_WHITE = 7~%~%bool activate~%uint8 frequency # between 1hz and 100Hz~%uint8 color~%float32 blinker_duration # 0 for infinite~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LedBlinker-request)))
  "Returns full string definition for message of type 'LedBlinker-request"
  (cl:format cl:nil "uint8 LED_OFF = 0~%uint8 LED_BLUE = 1~%uint8 LED_GREEN = 2~%uint8 LED_BLUE_GREEN = 3~%uint8 LED_RED = 4~%uint8 LED_PURPLE = 5~%uint8 LED_RED_GREEN = 6~%uint8 LED_WHITE = 7~%~%bool activate~%uint8 frequency # between 1hz and 100Hz~%uint8 color~%float32 blinker_duration # 0 for infinite~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LedBlinker-request>))
  (cl:+ 0
     1
     1
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LedBlinker-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LedBlinker-request
    (cl:cons ':activate (activate msg))
    (cl:cons ':frequency (frequency msg))
    (cl:cons ':color (color msg))
    (cl:cons ':blinker_duration (blinker_duration msg))
))
;//! \htmlinclude LedBlinker-response.msg.html

(cl:defclass <LedBlinker-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass LedBlinker-response (<LedBlinker-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LedBlinker-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LedBlinker-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_rpi-srv:<LedBlinker-response> is deprecated: use niryo_robot_rpi-srv:LedBlinker-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <LedBlinker-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_rpi-srv:status-val is deprecated.  Use niryo_robot_rpi-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <LedBlinker-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_rpi-srv:message-val is deprecated.  Use niryo_robot_rpi-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LedBlinker-response>) ostream)
  "Serializes a message object of type '<LedBlinker-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LedBlinker-response>) istream)
  "Deserializes a message object of type '<LedBlinker-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LedBlinker-response>)))
  "Returns string type for a service object of type '<LedBlinker-response>"
  "niryo_robot_rpi/LedBlinkerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LedBlinker-response)))
  "Returns string type for a service object of type 'LedBlinker-response"
  "niryo_robot_rpi/LedBlinkerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LedBlinker-response>)))
  "Returns md5sum for a message object of type '<LedBlinker-response>"
  "a9c225f56e57f38d3097de07bd306c80")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LedBlinker-response)))
  "Returns md5sum for a message object of type 'LedBlinker-response"
  "a9c225f56e57f38d3097de07bd306c80")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LedBlinker-response>)))
  "Returns full string definition for message of type '<LedBlinker-response>"
  (cl:format cl:nil "int32 status~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LedBlinker-response)))
  "Returns full string definition for message of type 'LedBlinker-response"
  (cl:format cl:nil "int32 status~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LedBlinker-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LedBlinker-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LedBlinker-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LedBlinker)))
  'LedBlinker-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LedBlinker)))
  'LedBlinker-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LedBlinker)))
  "Returns string type for a service object of type '<LedBlinker>"
  "niryo_robot_rpi/LedBlinker")