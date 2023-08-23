; Auto-generated. Do not edit!


(cl:in-package ttl_driver-srv)


;//! \htmlinclude ReadPIDValue-request.msg.html

(cl:defclass <ReadPIDValue-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ReadPIDValue-request (<ReadPIDValue-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReadPIDValue-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReadPIDValue-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ttl_driver-srv:<ReadPIDValue-request> is deprecated: use ttl_driver-srv:ReadPIDValue-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <ReadPIDValue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ttl_driver-srv:id-val is deprecated.  Use ttl_driver-srv:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReadPIDValue-request>) ostream)
  "Serializes a message object of type '<ReadPIDValue-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReadPIDValue-request>) istream)
  "Deserializes a message object of type '<ReadPIDValue-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReadPIDValue-request>)))
  "Returns string type for a service object of type '<ReadPIDValue-request>"
  "ttl_driver/ReadPIDValueRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReadPIDValue-request)))
  "Returns string type for a service object of type 'ReadPIDValue-request"
  "ttl_driver/ReadPIDValueRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReadPIDValue-request>)))
  "Returns md5sum for a message object of type '<ReadPIDValue-request>"
  "45e5c7e050fa73a59321e8c0a31e479a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReadPIDValue-request)))
  "Returns md5sum for a message object of type 'ReadPIDValue-request"
  "45e5c7e050fa73a59321e8c0a31e479a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReadPIDValue-request>)))
  "Returns full string definition for message of type '<ReadPIDValue-request>"
  (cl:format cl:nil "# Check XL-XXX motors reference doc for~%# the complete register table~%~%uint8 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReadPIDValue-request)))
  "Returns full string definition for message of type 'ReadPIDValue-request"
  (cl:format cl:nil "# Check XL-XXX motors reference doc for~%# the complete register table~%~%uint8 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReadPIDValue-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReadPIDValue-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ReadPIDValue-request
    (cl:cons ':id (id msg))
))
;//! \htmlinclude ReadPIDValue-response.msg.html

(cl:defclass <ReadPIDValue-response> (roslisp-msg-protocol:ros-message)
  ((pos_p_gain
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
   (status
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

(cl:defclass ReadPIDValue-response (<ReadPIDValue-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReadPIDValue-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReadPIDValue-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ttl_driver-srv:<ReadPIDValue-response> is deprecated: use ttl_driver-srv:ReadPIDValue-response instead.")))

(cl:ensure-generic-function 'pos_p_gain-val :lambda-list '(m))
(cl:defmethod pos_p_gain-val ((m <ReadPIDValue-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ttl_driver-srv:pos_p_gain-val is deprecated.  Use ttl_driver-srv:pos_p_gain instead.")
  (pos_p_gain m))

(cl:ensure-generic-function 'pos_i_gain-val :lambda-list '(m))
(cl:defmethod pos_i_gain-val ((m <ReadPIDValue-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ttl_driver-srv:pos_i_gain-val is deprecated.  Use ttl_driver-srv:pos_i_gain instead.")
  (pos_i_gain m))

(cl:ensure-generic-function 'pos_d_gain-val :lambda-list '(m))
(cl:defmethod pos_d_gain-val ((m <ReadPIDValue-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ttl_driver-srv:pos_d_gain-val is deprecated.  Use ttl_driver-srv:pos_d_gain instead.")
  (pos_d_gain m))

(cl:ensure-generic-function 'vel_p_gain-val :lambda-list '(m))
(cl:defmethod vel_p_gain-val ((m <ReadPIDValue-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ttl_driver-srv:vel_p_gain-val is deprecated.  Use ttl_driver-srv:vel_p_gain instead.")
  (vel_p_gain m))

(cl:ensure-generic-function 'vel_i_gain-val :lambda-list '(m))
(cl:defmethod vel_i_gain-val ((m <ReadPIDValue-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ttl_driver-srv:vel_i_gain-val is deprecated.  Use ttl_driver-srv:vel_i_gain instead.")
  (vel_i_gain m))

(cl:ensure-generic-function 'ff1_gain-val :lambda-list '(m))
(cl:defmethod ff1_gain-val ((m <ReadPIDValue-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ttl_driver-srv:ff1_gain-val is deprecated.  Use ttl_driver-srv:ff1_gain instead.")
  (ff1_gain m))

(cl:ensure-generic-function 'ff2_gain-val :lambda-list '(m))
(cl:defmethod ff2_gain-val ((m <ReadPIDValue-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ttl_driver-srv:ff2_gain-val is deprecated.  Use ttl_driver-srv:ff2_gain instead.")
  (ff2_gain m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <ReadPIDValue-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ttl_driver-srv:status-val is deprecated.  Use ttl_driver-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ReadPIDValue-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ttl_driver-srv:message-val is deprecated.  Use ttl_driver-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReadPIDValue-response>) ostream)
  "Serializes a message object of type '<ReadPIDValue-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReadPIDValue-response>) istream)
  "Deserializes a message object of type '<ReadPIDValue-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReadPIDValue-response>)))
  "Returns string type for a service object of type '<ReadPIDValue-response>"
  "ttl_driver/ReadPIDValueResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReadPIDValue-response)))
  "Returns string type for a service object of type 'ReadPIDValue-response"
  "ttl_driver/ReadPIDValueResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReadPIDValue-response>)))
  "Returns md5sum for a message object of type '<ReadPIDValue-response>"
  "45e5c7e050fa73a59321e8c0a31e479a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReadPIDValue-response)))
  "Returns md5sum for a message object of type 'ReadPIDValue-response"
  "45e5c7e050fa73a59321e8c0a31e479a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReadPIDValue-response>)))
  "Returns full string definition for message of type '<ReadPIDValue-response>"
  (cl:format cl:nil "uint16 pos_p_gain~%uint16 pos_i_gain~%uint16 pos_d_gain~%~%uint16 vel_p_gain~%uint16 vel_i_gain~%~%uint16 ff1_gain~%uint16 ff2_gain~%~%int32 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReadPIDValue-response)))
  "Returns full string definition for message of type 'ReadPIDValue-response"
  (cl:format cl:nil "uint16 pos_p_gain~%uint16 pos_i_gain~%uint16 pos_d_gain~%~%uint16 vel_p_gain~%uint16 vel_i_gain~%~%uint16 ff1_gain~%uint16 ff2_gain~%~%int32 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReadPIDValue-response>))
  (cl:+ 0
     2
     2
     2
     2
     2
     2
     2
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReadPIDValue-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ReadPIDValue-response
    (cl:cons ':pos_p_gain (pos_p_gain msg))
    (cl:cons ':pos_i_gain (pos_i_gain msg))
    (cl:cons ':pos_d_gain (pos_d_gain msg))
    (cl:cons ':vel_p_gain (vel_p_gain msg))
    (cl:cons ':vel_i_gain (vel_i_gain msg))
    (cl:cons ':ff1_gain (ff1_gain msg))
    (cl:cons ':ff2_gain (ff2_gain msg))
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ReadPIDValue)))
  'ReadPIDValue-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ReadPIDValue)))
  'ReadPIDValue-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReadPIDValue)))
  "Returns string type for a service object of type '<ReadPIDValue>"
  "ttl_driver/ReadPIDValue")