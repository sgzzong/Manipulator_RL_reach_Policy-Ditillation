; Auto-generated. Do not edit!


(cl:in-package niryo_robot_sound-srv)


;//! \htmlinclude PlaySound-request.msg.html

(cl:defclass <PlaySound-request> (roslisp-msg-protocol:ros-message)
  ((sound_name
    :reader sound_name
    :initarg :sound_name
    :type cl:string
    :initform "")
   (start_time_sec
    :reader start_time_sec
    :initarg :start_time_sec
    :type cl:float
    :initform 0.0)
   (end_time_sec
    :reader end_time_sec
    :initarg :end_time_sec
    :type cl:float
    :initform 0.0)
   (wait_end
    :reader wait_end
    :initarg :wait_end
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PlaySound-request (<PlaySound-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlaySound-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlaySound-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_sound-srv:<PlaySound-request> is deprecated: use niryo_robot_sound-srv:PlaySound-request instead.")))

(cl:ensure-generic-function 'sound_name-val :lambda-list '(m))
(cl:defmethod sound_name-val ((m <PlaySound-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_sound-srv:sound_name-val is deprecated.  Use niryo_robot_sound-srv:sound_name instead.")
  (sound_name m))

(cl:ensure-generic-function 'start_time_sec-val :lambda-list '(m))
(cl:defmethod start_time_sec-val ((m <PlaySound-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_sound-srv:start_time_sec-val is deprecated.  Use niryo_robot_sound-srv:start_time_sec instead.")
  (start_time_sec m))

(cl:ensure-generic-function 'end_time_sec-val :lambda-list '(m))
(cl:defmethod end_time_sec-val ((m <PlaySound-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_sound-srv:end_time_sec-val is deprecated.  Use niryo_robot_sound-srv:end_time_sec instead.")
  (end_time_sec m))

(cl:ensure-generic-function 'wait_end-val :lambda-list '(m))
(cl:defmethod wait_end-val ((m <PlaySound-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_sound-srv:wait_end-val is deprecated.  Use niryo_robot_sound-srv:wait_end instead.")
  (wait_end m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlaySound-request>) ostream)
  "Serializes a message object of type '<PlaySound-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'sound_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'sound_name))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'start_time_sec))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'end_time_sec))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'wait_end) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlaySound-request>) istream)
  "Deserializes a message object of type '<PlaySound-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sound_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'sound_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'start_time_sec) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'end_time_sec) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'wait_end) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlaySound-request>)))
  "Returns string type for a service object of type '<PlaySound-request>"
  "niryo_robot_sound/PlaySoundRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlaySound-request)))
  "Returns string type for a service object of type 'PlaySound-request"
  "niryo_robot_sound/PlaySoundRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlaySound-request>)))
  "Returns md5sum for a message object of type '<PlaySound-request>"
  "5ee90888968337d1f5c1d1a00df1090c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlaySound-request)))
  "Returns md5sum for a message object of type 'PlaySound-request"
  "5ee90888968337d1f5c1d1a00df1090c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlaySound-request>)))
  "Returns full string definition for message of type '<PlaySound-request>"
  (cl:format cl:nil "string sound_name~%~%float64 start_time_sec~%float64 end_time_sec  #if 0 or if end_time_sec>sound_duration the entire sound will be played~%~%bool wait_end~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlaySound-request)))
  "Returns full string definition for message of type 'PlaySound-request"
  (cl:format cl:nil "string sound_name~%~%float64 start_time_sec~%float64 end_time_sec  #if 0 or if end_time_sec>sound_duration the entire sound will be played~%~%bool wait_end~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlaySound-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'sound_name))
     8
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlaySound-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PlaySound-request
    (cl:cons ':sound_name (sound_name msg))
    (cl:cons ':start_time_sec (start_time_sec msg))
    (cl:cons ':end_time_sec (end_time_sec msg))
    (cl:cons ':wait_end (wait_end msg))
))
;//! \htmlinclude PlaySound-response.msg.html

(cl:defclass <PlaySound-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass PlaySound-response (<PlaySound-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlaySound-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlaySound-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_sound-srv:<PlaySound-response> is deprecated: use niryo_robot_sound-srv:PlaySound-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <PlaySound-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_sound-srv:status-val is deprecated.  Use niryo_robot_sound-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <PlaySound-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_sound-srv:message-val is deprecated.  Use niryo_robot_sound-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlaySound-response>) ostream)
  "Serializes a message object of type '<PlaySound-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlaySound-response>) istream)
  "Deserializes a message object of type '<PlaySound-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlaySound-response>)))
  "Returns string type for a service object of type '<PlaySound-response>"
  "niryo_robot_sound/PlaySoundResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlaySound-response)))
  "Returns string type for a service object of type 'PlaySound-response"
  "niryo_robot_sound/PlaySoundResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlaySound-response>)))
  "Returns md5sum for a message object of type '<PlaySound-response>"
  "5ee90888968337d1f5c1d1a00df1090c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlaySound-response)))
  "Returns md5sum for a message object of type 'PlaySound-response"
  "5ee90888968337d1f5c1d1a00df1090c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlaySound-response>)))
  "Returns full string definition for message of type '<PlaySound-response>"
  (cl:format cl:nil "int32 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlaySound-response)))
  "Returns full string definition for message of type 'PlaySound-response"
  (cl:format cl:nil "int32 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlaySound-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlaySound-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PlaySound-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PlaySound)))
  'PlaySound-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PlaySound)))
  'PlaySound-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlaySound)))
  "Returns string type for a service object of type '<PlaySound>"
  "niryo_robot_sound/PlaySound")