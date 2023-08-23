; Auto-generated. Do not edit!


(cl:in-package conveyor_interface-srv)


;//! \htmlinclude SetConveyor-request.msg.html

(cl:defclass <SetConveyor-request> (roslisp-msg-protocol:ros-message)
  ((cmd
    :reader cmd
    :initarg :cmd
    :type cl:fixnum
    :initform 0)
   (id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetConveyor-request (<SetConveyor-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetConveyor-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetConveyor-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name conveyor_interface-srv:<SetConveyor-request> is deprecated: use conveyor_interface-srv:SetConveyor-request instead.")))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <SetConveyor-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader conveyor_interface-srv:cmd-val is deprecated.  Use conveyor_interface-srv:cmd instead.")
  (cmd m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <SetConveyor-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader conveyor_interface-srv:id-val is deprecated.  Use conveyor_interface-srv:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SetConveyor-request>)))
    "Constants for message type '<SetConveyor-request>"
  '((:ADD . 1)
    (:REMOVE . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SetConveyor-request)))
    "Constants for message type 'SetConveyor-request"
  '((:ADD . 1)
    (:REMOVE . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetConveyor-request>) ostream)
  "Serializes a message object of type '<SetConveyor-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetConveyor-request>) istream)
  "Deserializes a message object of type '<SetConveyor-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetConveyor-request>)))
  "Returns string type for a service object of type '<SetConveyor-request>"
  "conveyor_interface/SetConveyorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetConveyor-request)))
  "Returns string type for a service object of type 'SetConveyor-request"
  "conveyor_interface/SetConveyorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetConveyor-request>)))
  "Returns md5sum for a message object of type '<SetConveyor-request>"
  "e621bde089c256d87ade2e131605eeb7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetConveyor-request)))
  "Returns md5sum for a message object of type 'SetConveyor-request"
  "e621bde089c256d87ade2e131605eeb7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetConveyor-request>)))
  "Returns full string definition for message of type '<SetConveyor-request>"
  (cl:format cl:nil "uint8 cmd~%uint8 id~%~%uint8 ADD = 1~%uint8 REMOVE = 2~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetConveyor-request)))
  "Returns full string definition for message of type 'SetConveyor-request"
  (cl:format cl:nil "uint8 cmd~%uint8 id~%~%uint8 ADD = 1~%uint8 REMOVE = 2~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetConveyor-request>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetConveyor-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetConveyor-request
    (cl:cons ':cmd (cmd msg))
    (cl:cons ':id (id msg))
))
;//! \htmlinclude SetConveyor-response.msg.html

(cl:defclass <SetConveyor-response> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass SetConveyor-response (<SetConveyor-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetConveyor-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetConveyor-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name conveyor_interface-srv:<SetConveyor-response> is deprecated: use conveyor_interface-srv:SetConveyor-response instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <SetConveyor-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader conveyor_interface-srv:id-val is deprecated.  Use conveyor_interface-srv:id instead.")
  (id m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <SetConveyor-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader conveyor_interface-srv:status-val is deprecated.  Use conveyor_interface-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetConveyor-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader conveyor_interface-srv:message-val is deprecated.  Use conveyor_interface-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetConveyor-response>) ostream)
  "Serializes a message object of type '<SetConveyor-response>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetConveyor-response>) istream)
  "Deserializes a message object of type '<SetConveyor-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetConveyor-response>)))
  "Returns string type for a service object of type '<SetConveyor-response>"
  "conveyor_interface/SetConveyorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetConveyor-response)))
  "Returns string type for a service object of type 'SetConveyor-response"
  "conveyor_interface/SetConveyorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetConveyor-response>)))
  "Returns md5sum for a message object of type '<SetConveyor-response>"
  "e621bde089c256d87ade2e131605eeb7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetConveyor-response)))
  "Returns md5sum for a message object of type 'SetConveyor-response"
  "e621bde089c256d87ade2e131605eeb7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetConveyor-response>)))
  "Returns full string definition for message of type '<SetConveyor-response>"
  (cl:format cl:nil "int16 id~%int16 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetConveyor-response)))
  "Returns full string definition for message of type 'SetConveyor-response"
  (cl:format cl:nil "int16 id~%int16 status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetConveyor-response>))
  (cl:+ 0
     2
     2
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetConveyor-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetConveyor-response
    (cl:cons ':id (id msg))
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetConveyor)))
  'SetConveyor-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetConveyor)))
  'SetConveyor-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetConveyor)))
  "Returns string type for a service object of type '<SetConveyor>"
  "conveyor_interface/SetConveyor")