; Auto-generated. Do not edit!


(cl:in-package niryo_robot_led_ring-srv)


;//! \htmlinclude LedUser-request.msg.html

(cl:defclass <LedUser-request> (roslisp-msg-protocol:ros-message)
  ((animation_mode
    :reader animation_mode
    :initarg :animation_mode
    :type niryo_robot_led_ring-msg:LedRingAnimation
    :initform (cl:make-instance 'niryo_robot_led_ring-msg:LedRingAnimation))
   (colors
    :reader colors
    :initarg :colors
    :type (cl:vector std_msgs-msg:ColorRGBA)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:ColorRGBA :initial-element (cl:make-instance 'std_msgs-msg:ColorRGBA)))
   (period
    :reader period
    :initarg :period
    :type cl:float
    :initform 0.0)
   (iterations
    :reader iterations
    :initarg :iterations
    :type cl:fixnum
    :initform 0)
   (wait_end
    :reader wait_end
    :initarg :wait_end
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass LedUser-request (<LedUser-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LedUser-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LedUser-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_led_ring-srv:<LedUser-request> is deprecated: use niryo_robot_led_ring-srv:LedUser-request instead.")))

(cl:ensure-generic-function 'animation_mode-val :lambda-list '(m))
(cl:defmethod animation_mode-val ((m <LedUser-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_led_ring-srv:animation_mode-val is deprecated.  Use niryo_robot_led_ring-srv:animation_mode instead.")
  (animation_mode m))

(cl:ensure-generic-function 'colors-val :lambda-list '(m))
(cl:defmethod colors-val ((m <LedUser-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_led_ring-srv:colors-val is deprecated.  Use niryo_robot_led_ring-srv:colors instead.")
  (colors m))

(cl:ensure-generic-function 'period-val :lambda-list '(m))
(cl:defmethod period-val ((m <LedUser-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_led_ring-srv:period-val is deprecated.  Use niryo_robot_led_ring-srv:period instead.")
  (period m))

(cl:ensure-generic-function 'iterations-val :lambda-list '(m))
(cl:defmethod iterations-val ((m <LedUser-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_led_ring-srv:iterations-val is deprecated.  Use niryo_robot_led_ring-srv:iterations instead.")
  (iterations m))

(cl:ensure-generic-function 'wait_end-val :lambda-list '(m))
(cl:defmethod wait_end-val ((m <LedUser-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_led_ring-srv:wait_end-val is deprecated.  Use niryo_robot_led_ring-srv:wait_end instead.")
  (wait_end m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LedUser-request>) ostream)
  "Serializes a message object of type '<LedUser-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'animation_mode) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'colors))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'colors))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'period))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'iterations)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'wait_end) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LedUser-request>) istream)
  "Deserializes a message object of type '<LedUser-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'animation_mode) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'colors) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'colors)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:ColorRGBA))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'period) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'iterations) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:slot-value msg 'wait_end) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LedUser-request>)))
  "Returns string type for a service object of type '<LedUser-request>"
  "niryo_robot_led_ring/LedUserRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LedUser-request)))
  "Returns string type for a service object of type 'LedUser-request"
  "niryo_robot_led_ring/LedUserRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LedUser-request>)))
  "Returns md5sum for a message object of type '<LedUser-request>"
  "037e34fbf8489405d7b114484d01022f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LedUser-request)))
  "Returns md5sum for a message object of type 'LedUser-request"
  "037e34fbf8489405d7b114484d01022f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LedUser-request>)))
  "Returns full string definition for message of type '<LedUser-request>"
  (cl:format cl:nil "niryo_robot_led_ring/LedRingAnimation animation_mode~%~%std_msgs/ColorRGBA[] colors~%float64 period         # Time of 1 iteration in seconds~%int16 iterations~%~%# The service either wait for the iterations to finish to answer, ~%# or answer immediatly a Success after launching the function of Led Ring control. ~%# if iterations is 0, answer immediatly in any case, because the function never~%# stops.~%bool wait_end~%~%~%================================================================================~%MSG: niryo_robot_led_ring/LedRingAnimation~%int32 NONE = -1~%int32 SOLID = 1~%int32 FLASHING = 2   ~%int32 ALTERNATE = 3  ~%int32 CHASE = 4       ~%int32 COLOR_WIPE = 5   ~%int32 RAINBOW = 6~%int32 RAINBOW_CYLE = 7~%int32 RAINBOW_CHASE = 8~%int32 GO_UP = 9~%int32 GO_UP_AND_DOWN = 10~%int32 BREATH = 11~%int32 SNAKE = 12~%int32 CUSTOM = 13~%~%int32 animation~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LedUser-request)))
  "Returns full string definition for message of type 'LedUser-request"
  (cl:format cl:nil "niryo_robot_led_ring/LedRingAnimation animation_mode~%~%std_msgs/ColorRGBA[] colors~%float64 period         # Time of 1 iteration in seconds~%int16 iterations~%~%# The service either wait for the iterations to finish to answer, ~%# or answer immediatly a Success after launching the function of Led Ring control. ~%# if iterations is 0, answer immediatly in any case, because the function never~%# stops.~%bool wait_end~%~%~%================================================================================~%MSG: niryo_robot_led_ring/LedRingAnimation~%int32 NONE = -1~%int32 SOLID = 1~%int32 FLASHING = 2   ~%int32 ALTERNATE = 3  ~%int32 CHASE = 4       ~%int32 COLOR_WIPE = 5   ~%int32 RAINBOW = 6~%int32 RAINBOW_CYLE = 7~%int32 RAINBOW_CHASE = 8~%int32 GO_UP = 9~%int32 GO_UP_AND_DOWN = 10~%int32 BREATH = 11~%int32 SNAKE = 12~%int32 CUSTOM = 13~%~%int32 animation~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LedUser-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'animation_mode))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'colors) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     8
     2
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LedUser-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LedUser-request
    (cl:cons ':animation_mode (animation_mode msg))
    (cl:cons ':colors (colors msg))
    (cl:cons ':period (period msg))
    (cl:cons ':iterations (iterations msg))
    (cl:cons ':wait_end (wait_end msg))
))
;//! \htmlinclude LedUser-response.msg.html

(cl:defclass <LedUser-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass LedUser-response (<LedUser-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LedUser-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LedUser-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_led_ring-srv:<LedUser-response> is deprecated: use niryo_robot_led_ring-srv:LedUser-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <LedUser-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_led_ring-srv:status-val is deprecated.  Use niryo_robot_led_ring-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <LedUser-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_led_ring-srv:message-val is deprecated.  Use niryo_robot_led_ring-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LedUser-response>) ostream)
  "Serializes a message object of type '<LedUser-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LedUser-response>) istream)
  "Deserializes a message object of type '<LedUser-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LedUser-response>)))
  "Returns string type for a service object of type '<LedUser-response>"
  "niryo_robot_led_ring/LedUserResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LedUser-response)))
  "Returns string type for a service object of type 'LedUser-response"
  "niryo_robot_led_ring/LedUserResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LedUser-response>)))
  "Returns md5sum for a message object of type '<LedUser-response>"
  "037e34fbf8489405d7b114484d01022f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LedUser-response)))
  "Returns md5sum for a message object of type 'LedUser-response"
  "037e34fbf8489405d7b114484d01022f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LedUser-response>)))
  "Returns full string definition for message of type '<LedUser-response>"
  (cl:format cl:nil "int32 status~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LedUser-response)))
  "Returns full string definition for message of type 'LedUser-response"
  (cl:format cl:nil "int32 status~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LedUser-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LedUser-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LedUser-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LedUser)))
  'LedUser-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LedUser)))
  'LedUser-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LedUser)))
  "Returns string type for a service object of type '<LedUser>"
  "niryo_robot_led_ring/LedUser")