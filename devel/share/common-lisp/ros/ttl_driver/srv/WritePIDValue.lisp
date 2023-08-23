; Auto-generated. Do not edit!


(cl:in-package ttl_driver-srv)


;//! \htmlinclude WritePIDValue-request.msg.html

(cl:defclass <WritePIDValue-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (pos_p_gain
    :reader pos_p_gain
    :initarg :pos_p_gain
    :type cl:fixnum
    :initform 0)
   (pos_i_gain
    :reader pos_i_gain
    :initarg :pos_i_gain
    :type cl:fixnum
    :initform 0)
   (pos_d_gain
    :reader pos_d_gain
    :initarg :pos_d_gain
    :type cl:fixnum
    :initform 0)
   (vel_p_gain
    :reader vel_p_gain
    :initarg :vel_p_gain
    :type cl:fixnum
    :initform 0)
   (vel_i_gain
    :reader vel_i_gain
    :initarg :vel_i_gain
    :type cl:fixnum
    :initform 0)
   (ff1_gain
    :reader ff1_gain
    :initarg :ff1_gain
    :type cl:fixnum
    :initform 0)
   (ff2_gain
    :reader ff2_gain
    :initarg :ff2_gain
    :type cl:fixnum
    :initform 0)
   (vel_profile
    :reader vel_profile
    :initarg :vel_profile
    :type cl:integer
    :initform 0)
   (acc_profile
    :reader acc_profile
    :initarg :acc_profile
    :type cl:integer
    :initform 0))
)

(cl:defclass WritePIDValue-request (<WritePIDValue-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WritePIDValue-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WritePIDValue-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ttl_driver-srv:<WritePIDValue-request> is deprecated: use ttl_driver-srv:WritePIDValue-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <WritePIDValue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ttl_driver-srv:id-val is deprecated.  Use ttl_driver-srv:id instead.")
  (id m))

(cl:ensure-generic-function 'pos_p_gain-val :lambda-list '(m))
(cl:defmethod pos_p_gain-val ((m <WritePIDValue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ttl_driver-srv:pos_p_gain-val is deprecated.  Use ttl_driver-srv:pos_p_gain instead.")
  (pos_p_gain m))

(cl:ensure-generic-function 'pos_i_gain-val :lambda-list '(m))
(cl:defmethod pos_i_gain-val ((m <WritePIDValue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ttl_driver-srv:pos_i_gain-val is deprecated.  Use ttl_driver-srv:pos_i_gain instead.")
  (pos_i_gain m))

(cl:ensure-generic-function 'pos_d_gain-val :lambda-list '(m))
(cl:defmethod pos_d_gain-val ((m <WritePIDValue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ttl_driver-srv:pos_d_gain-val is deprecated.  Use ttl_driver-srv:pos_d_gain instead.")
  (pos_d_gain m))

(cl:ensure-generic-function 'vel_p_gain-val :lambda-list '(m))
(cl:defmethod vel_p_gain-val ((m <WritePIDValue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ttl_driver-srv:vel_p_gain-val is deprecated.  Use ttl_driver-srv:vel_p_gain instead.")
  (vel_p_gain m))

(cl:ensure-generic-function 'vel_i_gain-val :lambda-list '(m))
(cl:defmethod vel_i_gain-val ((m <WritePIDValue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ttl_driver-srv:vel_i_gain-val is deprecated.  Use ttl_driver-srv:vel_i_gain instead.")
  (vel_i_gain m))

(cl:ensure-generic-function 'ff1_gain-val :lambda-list '(m))
(cl:defmethod ff1_gain-val ((m <WritePIDValue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ttl_driver-srv:ff1_gain-val is deprecated.  Use ttl_driver-srv:ff1_gain instead.")
  (ff1_gain m))

(cl:ensure-generic-function 'ff2_gain-val :lambda-list '(m))
(cl:defmethod ff2_gain-val ((m <WritePIDValue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ttl_driver-srv:ff2_gain-val is deprecated.  Use ttl_driver-srv:ff2_gain instead.")
  (ff2_gain m))

(cl:ensure-generic-function 'vel_profile-val :lambda-list '(m))
(cl:defmethod vel_profile-val ((m <WritePIDValue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ttl_driver-srv:vel_profile-val is deprecated.  Use ttl_driver-srv:vel_profile instead.")
  (vel_profile m))

(cl:ensure-generic-function 'acc_profile-val :lambda-list '(m))
(cl:defmethod acc_profile-val ((m <WritePIDValue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ttl_driver-srv:acc_profile-val is deprecated.  Use ttl_driver-srv:acc_profile instead.")
  (acc_profile m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WritePIDValue-request>) ostream)
  "Serializes a message object of type '<WritePIDValue-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pos_p_gain)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pos_p_gain)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pos_i_gain)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pos_i_gain)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pos_d_gain)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pos_d_gain)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vel_p_gain)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vel_p_gain)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vel_i_gain)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vel_i_gain)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ff1_gain)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ff1_gain)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ff2_gain)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ff2_gain)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vel_profile)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vel_profile)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'vel_profile)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'vel_profile)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'acc_profile)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'acc_profile)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'acc_profile)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'acc_profile)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WritePIDValue-request>) istream)
  "Deserializes a message object of type '<WritePIDValue-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pos_p_gain)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pos_p_gain)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pos_i_gain)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pos_i_gain)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pos_d_gain)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pos_d_gain)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vel_p_gain)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vel_p_gain)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vel_i_gain)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vel_i_gain)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ff1_gain)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ff1_gain)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ff2_gain)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ff2_gain)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vel_profile)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vel_profile)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'vel_profile)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'vel_profile)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'acc_profile)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'acc_profile)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'acc_profile)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'acc_profile)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WritePIDValue-request>)))
  "Returns string type for a service object of type '<WritePIDValue-request>"
  "ttl_driver/WritePIDValueRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WritePIDValue-request)))
  "Returns string type for a service object of type 'WritePIDValue-request"
  "ttl_driver/WritePIDValueRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WritePIDValue-request>)))
  "Returns md5sum for a message object of type '<WritePIDValue-request>"
  "017cd3b317df9961b6cf57aa9e1a9f80")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WritePIDValue-request)))
  "Returns md5sum for a message object of type 'WritePIDValue-request"
  "017cd3b317df9961b6cf57aa9e1a9f80")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WritePIDValue-request>)))
  "Returns full string definition for message of type '<WritePIDValue-request>"
  (cl:format cl:nil "# Check XL-XXX motors reference doc for~%# the complete register table~%~%uint8 id~%uint16 pos_p_gain~%uint16 pos_i_gain~%uint16 pos_d_gain~%~%uint16 vel_p_gain~%uint16 vel_i_gain~%~%uint16 ff1_gain~%uint16 ff2_gain~%~%# vel and acc profile for dxl~%uint32 vel_profile~%uint32 acc_profile~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WritePIDValue-request)))
  "Returns full string definition for message of type 'WritePIDValue-request"
  (cl:format cl:nil "# Check XL-XXX motors reference doc for~%# the complete register table~%~%uint8 id~%uint16 pos_p_gain~%uint16 pos_i_gain~%uint16 pos_d_gain~%~%uint16 vel_p_gain~%uint16 vel_i_gain~%~%uint16 ff1_gain~%uint16 ff2_gain~%~%# vel and acc profile for dxl~%uint32 vel_profile~%uint32 acc_profile~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WritePIDValue-request>))
  (cl:+ 0
     1
     2
     2
     2
     2
     2
     2
     2
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WritePIDValue-request>))
  "Converts a ROS message object to a list"
  (cl:list 'WritePIDValue-request
    (cl:cons ':id (id msg))
    (cl:cons ':pos_p_gain (pos_p_gain msg))
    (cl:cons ':pos_i_gain (pos_i_gain msg))
    (cl:cons ':pos_d_gain (pos_d_gain msg))
    (cl:cons ':vel_p_gain (vel_p_gain msg))
    (cl:cons ':vel_i_gain (vel_i_gain msg))
    (cl:cons ':ff1_gain (ff1_gain msg))
    (cl:cons ':ff2_gain (ff2_gain msg))
    (cl:cons ':vel_profile (vel_profile msg))
    (cl:cons ':acc_profile (acc_profile msg))
))
;//! \htmlinclude WritePIDValue-response.msg.html

(cl:defclass <WritePIDValue-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass WritePIDValue-response (<WritePIDValue-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WritePIDValue-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WritePIDValue-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ttl_driver-srv:<WritePIDValue-response> is deprecated: use ttl_driver-srv:WritePIDValue-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <WritePIDValue-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ttl_driver-srv:status-val is deprecated.  Use ttl_driver-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <WritePIDValue-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ttl_driver-srv:message-val is deprecated.  Use ttl_driver-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WritePIDValue-response>) ostream)
  "Serializes a message object of type '<WritePIDValue-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WritePIDValue-response>) istream)
  "Deserializes a message object of type '<WritePIDValue-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WritePIDValue-response>)))
  "Returns string type for a service object of type '<WritePIDValue-response>"
  "ttl_driver/WritePIDValueResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WritePIDValue-response)))
  "Returns string type for a service object of type 'WritePIDValue-response"
  "ttl_driver/WritePIDValueResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WritePIDValue-response>)))
  "Returns md5sum for a message object of type '<WritePIDValue-response>"
  "017cd3b317df9961b6cf57aa9e1a9f80")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WritePIDValue-response)))
  "Returns md5sum for a message object of type 'WritePIDValue-response"
  "017cd3b317df9961b6cf57aa9e1a9f80")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WritePIDValue-response>)))
  "Returns full string definition for message of type '<WritePIDValue-response>"
  (cl:format cl:nil "int32 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WritePIDValue-response)))
  "Returns full string definition for message of type 'WritePIDValue-response"
  (cl:format cl:nil "int32 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WritePIDValue-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WritePIDValue-response>))
  "Converts a ROS message object to a list"
  (cl:list 'WritePIDValue-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'WritePIDValue)))
  'WritePIDValue-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'WritePIDValue)))
  'WritePIDValue-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WritePIDValue)))
  "Returns string type for a service object of type '<WritePIDValue>"
  "ttl_driver/WritePIDValue")