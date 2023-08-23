; Auto-generated. Do not edit!


(cl:in-package niryo_robot_msgs-msg)


;//! \htmlinclude BusState.msg.html

(cl:defclass <BusState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (connection_status
    :reader connection_status
    :initarg :connection_status
    :type cl:boolean
    :initform cl:nil)
   (motor_id_connected
    :reader motor_id_connected
    :initarg :motor_id_connected
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (error
    :reader error
    :initarg :error
    :type cl:string
    :initform ""))
)

(cl:defclass BusState (<BusState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BusState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BusState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_msgs-msg:<BusState> is deprecated: use niryo_robot_msgs-msg:BusState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <BusState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_msgs-msg:header-val is deprecated.  Use niryo_robot_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'connection_status-val :lambda-list '(m))
(cl:defmethod connection_status-val ((m <BusState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_msgs-msg:connection_status-val is deprecated.  Use niryo_robot_msgs-msg:connection_status instead.")
  (connection_status m))

(cl:ensure-generic-function 'motor_id_connected-val :lambda-list '(m))
(cl:defmethod motor_id_connected-val ((m <BusState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_msgs-msg:motor_id_connected-val is deprecated.  Use niryo_robot_msgs-msg:motor_id_connected instead.")
  (motor_id_connected m))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <BusState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_msgs-msg:error-val is deprecated.  Use niryo_robot_msgs-msg:error instead.")
  (error m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BusState>) ostream)
  "Serializes a message object of type '<BusState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'connection_status) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'motor_id_connected))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'motor_id_connected))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BusState>) istream)
  "Deserializes a message object of type '<BusState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'connection_status) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'motor_id_connected) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'motor_id_connected)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'error) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BusState>)))
  "Returns string type for a message object of type '<BusState>"
  "niryo_robot_msgs/BusState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BusState)))
  "Returns string type for a message object of type 'BusState"
  "niryo_robot_msgs/BusState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BusState>)))
  "Returns md5sum for a message object of type '<BusState>"
  "213bd57ffacf403dd0100cbc0fd4d698")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BusState)))
  "Returns md5sum for a message object of type 'BusState"
  "213bd57ffacf403dd0100cbc0fd4d698")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BusState>)))
  "Returns full string definition for message of type '<BusState>"
  (cl:format cl:nil "std_msgs/Header header~%bool connection_status~%uint8[] motor_id_connected~%string error~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BusState)))
  "Returns full string definition for message of type 'BusState"
  (cl:format cl:nil "std_msgs/Header header~%bool connection_status~%uint8[] motor_id_connected~%string error~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BusState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'motor_id_connected) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:length (cl:slot-value msg 'error))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BusState>))
  "Converts a ROS message object to a list"
  (cl:list 'BusState
    (cl:cons ':header (header msg))
    (cl:cons ':connection_status (connection_status msg))
    (cl:cons ':motor_id_connected (motor_id_connected msg))
    (cl:cons ':error (error msg))
))
