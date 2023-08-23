; Auto-generated. Do not edit!


(cl:in-package ttl_driver-srv)


;//! \htmlinclude WriteVelocityProfile-request.msg.html

(cl:defclass <WriteVelocityProfile-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (v_start
    :reader v_start
    :initarg :v_start
    :type cl:float
    :initform 0.0)
   (a_1
    :reader a_1
    :initarg :a_1
    :type cl:float
    :initform 0.0)
   (v_1
    :reader v_1
    :initarg :v_1
    :type cl:float
    :initform 0.0)
   (a_max
    :reader a_max
    :initarg :a_max
    :type cl:float
    :initform 0.0)
   (v_max
    :reader v_max
    :initarg :v_max
    :type cl:float
    :initform 0.0)
   (d_max
    :reader d_max
    :initarg :d_max
    :type cl:float
    :initform 0.0)
   (d_1
    :reader d_1
    :initarg :d_1
    :type cl:float
    :initform 0.0)
   (v_stop
    :reader v_stop
    :initarg :v_stop
    :type cl:float
    :initform 0.0))
)

(cl:defclass WriteVelocityProfile-request (<WriteVelocityProfile-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WriteVelocityProfile-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WriteVelocityProfile-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ttl_driver-srv:<WriteVelocityProfile-request> is deprecated: use ttl_driver-srv:WriteVelocityProfile-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <WriteVelocityProfile-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ttl_driver-srv:id-val is deprecated.  Use ttl_driver-srv:id instead.")
  (id m))

(cl:ensure-generic-function 'v_start-val :lambda-list '(m))
(cl:defmethod v_start-val ((m <WriteVelocityProfile-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ttl_driver-srv:v_start-val is deprecated.  Use ttl_driver-srv:v_start instead.")
  (v_start m))

(cl:ensure-generic-function 'a_1-val :lambda-list '(m))
(cl:defmethod a_1-val ((m <WriteVelocityProfile-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ttl_driver-srv:a_1-val is deprecated.  Use ttl_driver-srv:a_1 instead.")
  (a_1 m))

(cl:ensure-generic-function 'v_1-val :lambda-list '(m))
(cl:defmethod v_1-val ((m <WriteVelocityProfile-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ttl_driver-srv:v_1-val is deprecated.  Use ttl_driver-srv:v_1 instead.")
  (v_1 m))

(cl:ensure-generic-function 'a_max-val :lambda-list '(m))
(cl:defmethod a_max-val ((m <WriteVelocityProfile-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ttl_driver-srv:a_max-val is deprecated.  Use ttl_driver-srv:a_max instead.")
  (a_max m))

(cl:ensure-generic-function 'v_max-val :lambda-list '(m))
(cl:defmethod v_max-val ((m <WriteVelocityProfile-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ttl_driver-srv:v_max-val is deprecated.  Use ttl_driver-srv:v_max instead.")
  (v_max m))

(cl:ensure-generic-function 'd_max-val :lambda-list '(m))
(cl:defmethod d_max-val ((m <WriteVelocityProfile-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ttl_driver-srv:d_max-val is deprecated.  Use ttl_driver-srv:d_max instead.")
  (d_max m))

(cl:ensure-generic-function 'd_1-val :lambda-list '(m))
(cl:defmethod d_1-val ((m <WriteVelocityProfile-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ttl_driver-srv:d_1-val is deprecated.  Use ttl_driver-srv:d_1 instead.")
  (d_1 m))

(cl:ensure-generic-function 'v_stop-val :lambda-list '(m))
(cl:defmethod v_stop-val ((m <WriteVelocityProfile-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ttl_driver-srv:v_stop-val is deprecated.  Use ttl_driver-srv:v_stop instead.")
  (v_stop m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WriteVelocityProfile-request>) ostream)
  "Serializes a message object of type '<WriteVelocityProfile-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'v_start))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'a_1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'v_1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'a_max))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'v_max))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'd_max))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'd_1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'v_stop))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WriteVelocityProfile-request>) istream)
  "Deserializes a message object of type '<WriteVelocityProfile-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v_start) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a_1) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v_1) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a_max) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v_max) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'd_max) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'd_1) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v_stop) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WriteVelocityProfile-request>)))
  "Returns string type for a service object of type '<WriteVelocityProfile-request>"
  "ttl_driver/WriteVelocityProfileRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WriteVelocityProfile-request)))
  "Returns string type for a service object of type 'WriteVelocityProfile-request"
  "ttl_driver/WriteVelocityProfileRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WriteVelocityProfile-request>)))
  "Returns md5sum for a message object of type '<WriteVelocityProfile-request>"
  "0d7964b1831b6f9fe2e48dd363b22396")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WriteVelocityProfile-request)))
  "Returns md5sum for a message object of type 'WriteVelocityProfile-request"
  "0d7964b1831b6f9fe2e48dd363b22396")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WriteVelocityProfile-request>)))
  "Returns full string definition for message of type '<WriteVelocityProfile-request>"
  (cl:format cl:nil "# Check stepper ttl reference doc for~%# the complete register table~%~%uint8 id~%~%float64 v_start~%~%float64 a_1~%float64 v_1~%~%float64 a_max~%float64 v_max~%float64 d_max~%~%float64 d_1~%~%float64 v_stop~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WriteVelocityProfile-request)))
  "Returns full string definition for message of type 'WriteVelocityProfile-request"
  (cl:format cl:nil "# Check stepper ttl reference doc for~%# the complete register table~%~%uint8 id~%~%float64 v_start~%~%float64 a_1~%float64 v_1~%~%float64 a_max~%float64 v_max~%float64 d_max~%~%float64 d_1~%~%float64 v_stop~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WriteVelocityProfile-request>))
  (cl:+ 0
     1
     8
     8
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WriteVelocityProfile-request>))
  "Converts a ROS message object to a list"
  (cl:list 'WriteVelocityProfile-request
    (cl:cons ':id (id msg))
    (cl:cons ':v_start (v_start msg))
    (cl:cons ':a_1 (a_1 msg))
    (cl:cons ':v_1 (v_1 msg))
    (cl:cons ':a_max (a_max msg))
    (cl:cons ':v_max (v_max msg))
    (cl:cons ':d_max (d_max msg))
    (cl:cons ':d_1 (d_1 msg))
    (cl:cons ':v_stop (v_stop msg))
))
;//! \htmlinclude WriteVelocityProfile-response.msg.html

(cl:defclass <WriteVelocityProfile-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass WriteVelocityProfile-response (<WriteVelocityProfile-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WriteVelocityProfile-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WriteVelocityProfile-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ttl_driver-srv:<WriteVelocityProfile-response> is deprecated: use ttl_driver-srv:WriteVelocityProfile-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <WriteVelocityProfile-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ttl_driver-srv:status-val is deprecated.  Use ttl_driver-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <WriteVelocityProfile-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ttl_driver-srv:message-val is deprecated.  Use ttl_driver-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WriteVelocityProfile-response>) ostream)
  "Serializes a message object of type '<WriteVelocityProfile-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WriteVelocityProfile-response>) istream)
  "Deserializes a message object of type '<WriteVelocityProfile-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WriteVelocityProfile-response>)))
  "Returns string type for a service object of type '<WriteVelocityProfile-response>"
  "ttl_driver/WriteVelocityProfileResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WriteVelocityProfile-response)))
  "Returns string type for a service object of type 'WriteVelocityProfile-response"
  "ttl_driver/WriteVelocityProfileResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WriteVelocityProfile-response>)))
  "Returns md5sum for a message object of type '<WriteVelocityProfile-response>"
  "0d7964b1831b6f9fe2e48dd363b22396")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WriteVelocityProfile-response)))
  "Returns md5sum for a message object of type 'WriteVelocityProfile-response"
  "0d7964b1831b6f9fe2e48dd363b22396")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WriteVelocityProfile-response>)))
  "Returns full string definition for message of type '<WriteVelocityProfile-response>"
  (cl:format cl:nil "int32 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WriteVelocityProfile-response)))
  "Returns full string definition for message of type 'WriteVelocityProfile-response"
  (cl:format cl:nil "int32 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WriteVelocityProfile-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WriteVelocityProfile-response>))
  "Converts a ROS message object to a list"
  (cl:list 'WriteVelocityProfile-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'WriteVelocityProfile)))
  'WriteVelocityProfile-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'WriteVelocityProfile)))
  'WriteVelocityProfile-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WriteVelocityProfile)))
  "Returns string type for a service object of type '<WriteVelocityProfile>"
  "ttl_driver/WriteVelocityProfile")