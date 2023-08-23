; Auto-generated. Do not edit!


(cl:in-package niryo_robot_led_ring-msg)


;//! \htmlinclude LedRingStatus.msg.html

(cl:defclass <LedRingStatus> (roslisp-msg-protocol:ros-message)
  ((led_mode
    :reader led_mode
    :initarg :led_mode
    :type cl:integer
    :initform 0)
   (animation_mode
    :reader animation_mode
    :initarg :animation_mode
    :type niryo_robot_led_ring-msg:LedRingAnimation
    :initform (cl:make-instance 'niryo_robot_led_ring-msg:LedRingAnimation))
   (animation_color
    :reader animation_color
    :initarg :animation_color
    :type std_msgs-msg:ColorRGBA
    :initform (cl:make-instance 'std_msgs-msg:ColorRGBA)))
)

(cl:defclass LedRingStatus (<LedRingStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LedRingStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LedRingStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_led_ring-msg:<LedRingStatus> is deprecated: use niryo_robot_led_ring-msg:LedRingStatus instead.")))

(cl:ensure-generic-function 'led_mode-val :lambda-list '(m))
(cl:defmethod led_mode-val ((m <LedRingStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_led_ring-msg:led_mode-val is deprecated.  Use niryo_robot_led_ring-msg:led_mode instead.")
  (led_mode m))

(cl:ensure-generic-function 'animation_mode-val :lambda-list '(m))
(cl:defmethod animation_mode-val ((m <LedRingStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_led_ring-msg:animation_mode-val is deprecated.  Use niryo_robot_led_ring-msg:animation_mode instead.")
  (animation_mode m))

(cl:ensure-generic-function 'animation_color-val :lambda-list '(m))
(cl:defmethod animation_color-val ((m <LedRingStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_led_ring-msg:animation_color-val is deprecated.  Use niryo_robot_led_ring-msg:animation_color instead.")
  (animation_color m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LedRingStatus>)))
    "Constants for message type '<LedRingStatus>"
  '((:ROBOT_STATUS . 1)
    (:USER . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LedRingStatus)))
    "Constants for message type 'LedRingStatus"
  '((:ROBOT_STATUS . 1)
    (:USER . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LedRingStatus>) ostream)
  "Serializes a message object of type '<LedRingStatus>"
  (cl:let* ((signed (cl:slot-value msg 'led_mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'animation_mode) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'animation_color) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LedRingStatus>) istream)
  "Deserializes a message object of type '<LedRingStatus>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'led_mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'animation_mode) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'animation_color) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LedRingStatus>)))
  "Returns string type for a message object of type '<LedRingStatus>"
  "niryo_robot_led_ring/LedRingStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LedRingStatus)))
  "Returns string type for a message object of type 'LedRingStatus"
  "niryo_robot_led_ring/LedRingStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LedRingStatus>)))
  "Returns md5sum for a message object of type '<LedRingStatus>"
  "8451a2850ab998f7e23e7fb04868d7d0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LedRingStatus)))
  "Returns md5sum for a message object of type 'LedRingStatus"
  "8451a2850ab998f7e23e7fb04868d7d0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LedRingStatus>)))
  "Returns full string definition for message of type '<LedRingStatus>"
  (cl:format cl:nil "int32 ROBOT_STATUS = 1~%int32 USER = 2~%~%int32 led_mode~%~%niryo_robot_led_ring/LedRingAnimation animation_mode~%~%std_msgs/ColorRGBA animation_color # except for rainbow related animation~%~%================================================================================~%MSG: niryo_robot_led_ring/LedRingAnimation~%int32 NONE = -1~%int32 SOLID = 1~%int32 FLASHING = 2   ~%int32 ALTERNATE = 3  ~%int32 CHASE = 4       ~%int32 COLOR_WIPE = 5   ~%int32 RAINBOW = 6~%int32 RAINBOW_CYLE = 7~%int32 RAINBOW_CHASE = 8~%int32 GO_UP = 9~%int32 GO_UP_AND_DOWN = 10~%int32 BREATH = 11~%int32 SNAKE = 12~%int32 CUSTOM = 13~%~%int32 animation~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LedRingStatus)))
  "Returns full string definition for message of type 'LedRingStatus"
  (cl:format cl:nil "int32 ROBOT_STATUS = 1~%int32 USER = 2~%~%int32 led_mode~%~%niryo_robot_led_ring/LedRingAnimation animation_mode~%~%std_msgs/ColorRGBA animation_color # except for rainbow related animation~%~%================================================================================~%MSG: niryo_robot_led_ring/LedRingAnimation~%int32 NONE = -1~%int32 SOLID = 1~%int32 FLASHING = 2   ~%int32 ALTERNATE = 3  ~%int32 CHASE = 4       ~%int32 COLOR_WIPE = 5   ~%int32 RAINBOW = 6~%int32 RAINBOW_CYLE = 7~%int32 RAINBOW_CHASE = 8~%int32 GO_UP = 9~%int32 GO_UP_AND_DOWN = 10~%int32 BREATH = 11~%int32 SNAKE = 12~%int32 CUSTOM = 13~%~%int32 animation~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LedRingStatus>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'animation_mode))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'animation_color))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LedRingStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'LedRingStatus
    (cl:cons ':led_mode (led_mode msg))
    (cl:cons ':animation_mode (animation_mode msg))
    (cl:cons ':animation_color (animation_color msg))
))
