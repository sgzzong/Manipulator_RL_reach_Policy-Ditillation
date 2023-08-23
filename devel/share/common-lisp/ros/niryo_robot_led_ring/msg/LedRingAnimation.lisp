; Auto-generated. Do not edit!


(cl:in-package niryo_robot_led_ring-msg)


;//! \htmlinclude LedRingAnimation.msg.html

(cl:defclass <LedRingAnimation> (roslisp-msg-protocol:ros-message)
  ((animation
    :reader animation
    :initarg :animation
    :type cl:integer
    :initform 0))
)

(cl:defclass LedRingAnimation (<LedRingAnimation>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LedRingAnimation>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LedRingAnimation)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_led_ring-msg:<LedRingAnimation> is deprecated: use niryo_robot_led_ring-msg:LedRingAnimation instead.")))

(cl:ensure-generic-function 'animation-val :lambda-list '(m))
(cl:defmethod animation-val ((m <LedRingAnimation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_led_ring-msg:animation-val is deprecated.  Use niryo_robot_led_ring-msg:animation instead.")
  (animation m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LedRingAnimation>)))
    "Constants for message type '<LedRingAnimation>"
  '((:NONE . -1)
    (:SOLID . 1)
    (:FLASHING . 2)
    (:ALTERNATE . 3)
    (:CHASE . 4)
    (:COLOR_WIPE . 5)
    (:RAINBOW . 6)
    (:RAINBOW_CYLE . 7)
    (:RAINBOW_CHASE . 8)
    (:GO_UP . 9)
    (:GO_UP_AND_DOWN . 10)
    (:BREATH . 11)
    (:SNAKE . 12)
    (:CUSTOM . 13))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LedRingAnimation)))
    "Constants for message type 'LedRingAnimation"
  '((:NONE . -1)
    (:SOLID . 1)
    (:FLASHING . 2)
    (:ALTERNATE . 3)
    (:CHASE . 4)
    (:COLOR_WIPE . 5)
    (:RAINBOW . 6)
    (:RAINBOW_CYLE . 7)
    (:RAINBOW_CHASE . 8)
    (:GO_UP . 9)
    (:GO_UP_AND_DOWN . 10)
    (:BREATH . 11)
    (:SNAKE . 12)
    (:CUSTOM . 13))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LedRingAnimation>) ostream)
  "Serializes a message object of type '<LedRingAnimation>"
  (cl:let* ((signed (cl:slot-value msg 'animation)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LedRingAnimation>) istream)
  "Deserializes a message object of type '<LedRingAnimation>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'animation) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LedRingAnimation>)))
  "Returns string type for a message object of type '<LedRingAnimation>"
  "niryo_robot_led_ring/LedRingAnimation")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LedRingAnimation)))
  "Returns string type for a message object of type 'LedRingAnimation"
  "niryo_robot_led_ring/LedRingAnimation")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LedRingAnimation>)))
  "Returns md5sum for a message object of type '<LedRingAnimation>"
  "2988219586581fda2dc251a25b0a4d08")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LedRingAnimation)))
  "Returns md5sum for a message object of type 'LedRingAnimation"
  "2988219586581fda2dc251a25b0a4d08")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LedRingAnimation>)))
  "Returns full string definition for message of type '<LedRingAnimation>"
  (cl:format cl:nil "int32 NONE = -1~%int32 SOLID = 1~%int32 FLASHING = 2   ~%int32 ALTERNATE = 3  ~%int32 CHASE = 4       ~%int32 COLOR_WIPE = 5   ~%int32 RAINBOW = 6~%int32 RAINBOW_CYLE = 7~%int32 RAINBOW_CHASE = 8~%int32 GO_UP = 9~%int32 GO_UP_AND_DOWN = 10~%int32 BREATH = 11~%int32 SNAKE = 12~%int32 CUSTOM = 13~%~%int32 animation~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LedRingAnimation)))
  "Returns full string definition for message of type 'LedRingAnimation"
  (cl:format cl:nil "int32 NONE = -1~%int32 SOLID = 1~%int32 FLASHING = 2   ~%int32 ALTERNATE = 3  ~%int32 CHASE = 4       ~%int32 COLOR_WIPE = 5   ~%int32 RAINBOW = 6~%int32 RAINBOW_CYLE = 7~%int32 RAINBOW_CHASE = 8~%int32 GO_UP = 9~%int32 GO_UP_AND_DOWN = 10~%int32 BREATH = 11~%int32 SNAKE = 12~%int32 CUSTOM = 13~%~%int32 animation~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LedRingAnimation>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LedRingAnimation>))
  "Converts a ROS message object to a list"
  (cl:list 'LedRingAnimation
    (cl:cons ':animation (animation msg))
))
