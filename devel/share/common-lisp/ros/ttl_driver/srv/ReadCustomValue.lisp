; Auto-generated. Do not edit!


(cl:in-package ttl_driver-srv)


;//! \htmlinclude ReadCustomValue-request.msg.html

(cl:defclass <ReadCustomValue-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (reg_address
    :reader reg_address
    :initarg :reg_address
    :type cl:integer
    :initform 0)
   (byte_number
    :reader byte_number
    :initarg :byte_number
    :type cl:integer
    :initform 0))
)

(cl:defclass ReadCustomValue-request (<ReadCustomValue-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReadCustomValue-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReadCustomValue-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ttl_driver-srv:<ReadCustomValue-request> is deprecated: use ttl_driver-srv:ReadCustomValue-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <ReadCustomValue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ttl_driver-srv:id-val is deprecated.  Use ttl_driver-srv:id instead.")
  (id m))

(cl:ensure-generic-function 'reg_address-val :lambda-list '(m))
(cl:defmethod reg_address-val ((m <ReadCustomValue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ttl_driver-srv:reg_address-val is deprecated.  Use ttl_driver-srv:reg_address instead.")
  (reg_address m))

(cl:ensure-generic-function 'byte_number-val :lambda-list '(m))
(cl:defmethod byte_number-val ((m <ReadCustomValue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ttl_driver-srv:byte_number-val is deprecated.  Use ttl_driver-srv:byte_number instead.")
  (byte_number m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReadCustomValue-request>) ostream)
  "Serializes a message object of type '<ReadCustomValue-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'reg_address)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'byte_number)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReadCustomValue-request>) istream)
  "Deserializes a message object of type '<ReadCustomValue-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reg_address) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'byte_number) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReadCustomValue-request>)))
  "Returns string type for a service object of type '<ReadCustomValue-request>"
  "ttl_driver/ReadCustomValueRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReadCustomValue-request)))
  "Returns string type for a service object of type 'ReadCustomValue-request"
  "ttl_driver/ReadCustomValueRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReadCustomValue-request>)))
  "Returns md5sum for a message object of type '<ReadCustomValue-request>"
  "5313d8a6d811b0dd65e0326479c514d8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReadCustomValue-request)))
  "Returns md5sum for a message object of type 'ReadCustomValue-request"
  "5313d8a6d811b0dd65e0326479c514d8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReadCustomValue-request>)))
  "Returns full string definition for message of type '<ReadCustomValue-request>"
  (cl:format cl:nil "# Check XL-320 and XL-430 reference doc for~%# the complete register table~%~%uint8 id~%int32 reg_address~%int32 byte_number~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReadCustomValue-request)))
  "Returns full string definition for message of type 'ReadCustomValue-request"
  (cl:format cl:nil "# Check XL-320 and XL-430 reference doc for~%# the complete register table~%~%uint8 id~%int32 reg_address~%int32 byte_number~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReadCustomValue-request>))
  (cl:+ 0
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReadCustomValue-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ReadCustomValue-request
    (cl:cons ':id (id msg))
    (cl:cons ':reg_address (reg_address msg))
    (cl:cons ':byte_number (byte_number msg))
))
;//! \htmlinclude ReadCustomValue-response.msg.html

(cl:defclass <ReadCustomValue-response> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:integer
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

(cl:defclass ReadCustomValue-response (<ReadCustomValue-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReadCustomValue-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReadCustomValue-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ttl_driver-srv:<ReadCustomValue-response> is deprecated: use ttl_driver-srv:ReadCustomValue-response instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <ReadCustomValue-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ttl_driver-srv:value-val is deprecated.  Use ttl_driver-srv:value instead.")
  (value m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <ReadCustomValue-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ttl_driver-srv:status-val is deprecated.  Use ttl_driver-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ReadCustomValue-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ttl_driver-srv:message-val is deprecated.  Use ttl_driver-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReadCustomValue-response>) ostream)
  "Serializes a message object of type '<ReadCustomValue-response>"
  (cl:let* ((signed (cl:slot-value msg 'value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReadCustomValue-response>) istream)
  "Deserializes a message object of type '<ReadCustomValue-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReadCustomValue-response>)))
  "Returns string type for a service object of type '<ReadCustomValue-response>"
  "ttl_driver/ReadCustomValueResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReadCustomValue-response)))
  "Returns string type for a service object of type 'ReadCustomValue-response"
  "ttl_driver/ReadCustomValueResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReadCustomValue-response>)))
  "Returns md5sum for a message object of type '<ReadCustomValue-response>"
  "5313d8a6d811b0dd65e0326479c514d8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReadCustomValue-response)))
  "Returns md5sum for a message object of type 'ReadCustomValue-response"
  "5313d8a6d811b0dd65e0326479c514d8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReadCustomValue-response>)))
  "Returns full string definition for message of type '<ReadCustomValue-response>"
  (cl:format cl:nil "int32 value~%int32 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReadCustomValue-response)))
  "Returns full string definition for message of type 'ReadCustomValue-response"
  (cl:format cl:nil "int32 value~%int32 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReadCustomValue-response>))
  (cl:+ 0
     4
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReadCustomValue-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ReadCustomValue-response
    (cl:cons ':value (value msg))
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ReadCustomValue)))
  'ReadCustomValue-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ReadCustomValue)))
  'ReadCustomValue-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReadCustomValue)))
  "Returns string type for a service object of type '<ReadCustomValue>"
  "ttl_driver/ReadCustomValue")