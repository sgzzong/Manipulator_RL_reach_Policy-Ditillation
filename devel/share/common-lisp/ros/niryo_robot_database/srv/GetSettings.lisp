; Auto-generated. Do not edit!


(cl:in-package niryo_robot_database-srv)


;//! \htmlinclude GetSettings-request.msg.html

(cl:defclass <GetSettings-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass GetSettings-request (<GetSettings-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetSettings-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetSettings-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_database-srv:<GetSettings-request> is deprecated: use niryo_robot_database-srv:GetSettings-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <GetSettings-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_database-srv:name-val is deprecated.  Use niryo_robot_database-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetSettings-request>) ostream)
  "Serializes a message object of type '<GetSettings-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetSettings-request>) istream)
  "Deserializes a message object of type '<GetSettings-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetSettings-request>)))
  "Returns string type for a service object of type '<GetSettings-request>"
  "niryo_robot_database/GetSettingsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSettings-request)))
  "Returns string type for a service object of type 'GetSettings-request"
  "niryo_robot_database/GetSettingsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetSettings-request>)))
  "Returns md5sum for a message object of type '<GetSettings-request>"
  "7cf0f7925d72841bac86144a95c7aee5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetSettings-request)))
  "Returns md5sum for a message object of type 'GetSettings-request"
  "7cf0f7925d72841bac86144a95c7aee5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetSettings-request>)))
  "Returns full string definition for message of type '<GetSettings-request>"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetSettings-request)))
  "Returns full string definition for message of type 'GetSettings-request"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetSettings-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetSettings-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetSettings-request
    (cl:cons ':name (name msg))
))
;//! \htmlinclude GetSettings-response.msg.html

(cl:defclass <GetSettings-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0)
   (value
    :reader value
    :initarg :value
    :type cl:string
    :initform "")
   (type
    :reader type
    :initarg :type
    :type cl:string
    :initform ""))
)

(cl:defclass GetSettings-response (<GetSettings-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetSettings-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetSettings-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_database-srv:<GetSettings-response> is deprecated: use niryo_robot_database-srv:GetSettings-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <GetSettings-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_database-srv:status-val is deprecated.  Use niryo_robot_database-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <GetSettings-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_database-srv:value-val is deprecated.  Use niryo_robot_database-srv:value instead.")
  (value m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <GetSettings-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_database-srv:type-val is deprecated.  Use niryo_robot_database-srv:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetSettings-response>) ostream)
  "Serializes a message object of type '<GetSettings-response>"
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'value))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetSettings-response>) istream)
  "Deserializes a message object of type '<GetSettings-response>"
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
      (cl:setf (cl:slot-value msg 'value) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'value) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetSettings-response>)))
  "Returns string type for a service object of type '<GetSettings-response>"
  "niryo_robot_database/GetSettingsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSettings-response)))
  "Returns string type for a service object of type 'GetSettings-response"
  "niryo_robot_database/GetSettingsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetSettings-response>)))
  "Returns md5sum for a message object of type '<GetSettings-response>"
  "7cf0f7925d72841bac86144a95c7aee5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetSettings-response)))
  "Returns md5sum for a message object of type 'GetSettings-response"
  "7cf0f7925d72841bac86144a95c7aee5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetSettings-response>)))
  "Returns full string definition for message of type '<GetSettings-response>"
  (cl:format cl:nil "int32 status~%string value~%string type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetSettings-response)))
  "Returns full string definition for message of type 'GetSettings-response"
  (cl:format cl:nil "int32 status~%string value~%string type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetSettings-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'value))
     4 (cl:length (cl:slot-value msg 'type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetSettings-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetSettings-response
    (cl:cons ':status (status msg))
    (cl:cons ':value (value msg))
    (cl:cons ':type (type msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetSettings)))
  'GetSettings-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetSettings)))
  'GetSettings-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSettings)))
  "Returns string type for a service object of type '<GetSettings>"
  "niryo_robot_database/GetSettings")