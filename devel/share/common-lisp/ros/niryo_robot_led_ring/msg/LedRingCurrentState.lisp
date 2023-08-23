; Auto-generated. Do not edit!


(cl:in-package niryo_robot_led_ring-msg)


;//! \htmlinclude LedRingCurrentState.msg.html

(cl:defclass <LedRingCurrentState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (led_ring_colors
    :reader led_ring_colors
    :initarg :led_ring_colors
    :type (cl:vector std_msgs-msg:ColorRGBA)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:ColorRGBA :initial-element (cl:make-instance 'std_msgs-msg:ColorRGBA))))
)

(cl:defclass LedRingCurrentState (<LedRingCurrentState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LedRingCurrentState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LedRingCurrentState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_led_ring-msg:<LedRingCurrentState> is deprecated: use niryo_robot_led_ring-msg:LedRingCurrentState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LedRingCurrentState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_led_ring-msg:header-val is deprecated.  Use niryo_robot_led_ring-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'led_ring_colors-val :lambda-list '(m))
(cl:defmethod led_ring_colors-val ((m <LedRingCurrentState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_led_ring-msg:led_ring_colors-val is deprecated.  Use niryo_robot_led_ring-msg:led_ring_colors instead.")
  (led_ring_colors m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LedRingCurrentState>) ostream)
  "Serializes a message object of type '<LedRingCurrentState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'led_ring_colors))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'led_ring_colors))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LedRingCurrentState>) istream)
  "Deserializes a message object of type '<LedRingCurrentState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'led_ring_colors) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'led_ring_colors)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:ColorRGBA))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LedRingCurrentState>)))
  "Returns string type for a message object of type '<LedRingCurrentState>"
  "niryo_robot_led_ring/LedRingCurrentState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LedRingCurrentState)))
  "Returns string type for a message object of type 'LedRingCurrentState"
  "niryo_robot_led_ring/LedRingCurrentState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LedRingCurrentState>)))
  "Returns md5sum for a message object of type '<LedRingCurrentState>"
  "ef53709298b36af9705e7fb4631b8215")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LedRingCurrentState)))
  "Returns md5sum for a message object of type 'LedRingCurrentState"
  "ef53709298b36af9705e7fb4631b8215")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LedRingCurrentState>)))
  "Returns full string definition for message of type '<LedRingCurrentState>"
  (cl:format cl:nil "Header header~%std_msgs/ColorRGBA[] led_ring_colors~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LedRingCurrentState)))
  "Returns full string definition for message of type 'LedRingCurrentState"
  (cl:format cl:nil "Header header~%std_msgs/ColorRGBA[] led_ring_colors~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LedRingCurrentState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'led_ring_colors) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LedRingCurrentState>))
  "Converts a ROS message object to a list"
  (cl:list 'LedRingCurrentState
    (cl:cons ':header (header msg))
    (cl:cons ':led_ring_colors (led_ring_colors msg))
))
