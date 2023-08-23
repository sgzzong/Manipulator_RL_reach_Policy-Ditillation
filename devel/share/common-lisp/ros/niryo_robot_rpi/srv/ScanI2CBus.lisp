; Auto-generated. Do not edit!


(cl:in-package niryo_robot_rpi-srv)


;//! \htmlinclude ScanI2CBus-request.msg.html

(cl:defclass <ScanI2CBus-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ScanI2CBus-request (<ScanI2CBus-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ScanI2CBus-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ScanI2CBus-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_rpi-srv:<ScanI2CBus-request> is deprecated: use niryo_robot_rpi-srv:ScanI2CBus-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ScanI2CBus-request>) ostream)
  "Serializes a message object of type '<ScanI2CBus-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ScanI2CBus-request>) istream)
  "Deserializes a message object of type '<ScanI2CBus-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ScanI2CBus-request>)))
  "Returns string type for a service object of type '<ScanI2CBus-request>"
  "niryo_robot_rpi/ScanI2CBusRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ScanI2CBus-request)))
  "Returns string type for a service object of type 'ScanI2CBus-request"
  "niryo_robot_rpi/ScanI2CBusRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ScanI2CBus-request>)))
  "Returns md5sum for a message object of type '<ScanI2CBus-request>"
  "808e467912d414dae099afb5994358c5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ScanI2CBus-request)))
  "Returns md5sum for a message object of type 'ScanI2CBus-request"
  "808e467912d414dae099afb5994358c5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ScanI2CBus-request>)))
  "Returns full string definition for message of type '<ScanI2CBus-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ScanI2CBus-request)))
  "Returns full string definition for message of type 'ScanI2CBus-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ScanI2CBus-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ScanI2CBus-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ScanI2CBus-request
))
;//! \htmlinclude ScanI2CBus-response.msg.html

(cl:defclass <ScanI2CBus-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform "")
   (is_ok
    :reader is_ok
    :initarg :is_ok
    :type cl:boolean
    :initform cl:nil)
   (missing
    :reader missing
    :initarg :missing
    :type (cl:vector niryo_robot_rpi-msg:I2CComponent)
   :initform (cl:make-array 0 :element-type 'niryo_robot_rpi-msg:I2CComponent :initial-element (cl:make-instance 'niryo_robot_rpi-msg:I2CComponent)))
   (detected
    :reader detected
    :initarg :detected
    :type (cl:vector niryo_robot_rpi-msg:I2CComponent)
   :initform (cl:make-array 0 :element-type 'niryo_robot_rpi-msg:I2CComponent :initial-element (cl:make-instance 'niryo_robot_rpi-msg:I2CComponent))))
)

(cl:defclass ScanI2CBus-response (<ScanI2CBus-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ScanI2CBus-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ScanI2CBus-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_rpi-srv:<ScanI2CBus-response> is deprecated: use niryo_robot_rpi-srv:ScanI2CBus-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <ScanI2CBus-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_rpi-srv:status-val is deprecated.  Use niryo_robot_rpi-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ScanI2CBus-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_rpi-srv:message-val is deprecated.  Use niryo_robot_rpi-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'is_ok-val :lambda-list '(m))
(cl:defmethod is_ok-val ((m <ScanI2CBus-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_rpi-srv:is_ok-val is deprecated.  Use niryo_robot_rpi-srv:is_ok instead.")
  (is_ok m))

(cl:ensure-generic-function 'missing-val :lambda-list '(m))
(cl:defmethod missing-val ((m <ScanI2CBus-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_rpi-srv:missing-val is deprecated.  Use niryo_robot_rpi-srv:missing instead.")
  (missing m))

(cl:ensure-generic-function 'detected-val :lambda-list '(m))
(cl:defmethod detected-val ((m <ScanI2CBus-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_rpi-srv:detected-val is deprecated.  Use niryo_robot_rpi-srv:detected instead.")
  (detected m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ScanI2CBus-response>) ostream)
  "Serializes a message object of type '<ScanI2CBus-response>"
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_ok) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'missing))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'missing))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'detected))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'detected))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ScanI2CBus-response>) istream)
  "Deserializes a message object of type '<ScanI2CBus-response>"
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
    (cl:setf (cl:slot-value msg 'is_ok) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'missing) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'missing)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'niryo_robot_rpi-msg:I2CComponent))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'detected) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'detected)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'niryo_robot_rpi-msg:I2CComponent))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ScanI2CBus-response>)))
  "Returns string type for a service object of type '<ScanI2CBus-response>"
  "niryo_robot_rpi/ScanI2CBusResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ScanI2CBus-response)))
  "Returns string type for a service object of type 'ScanI2CBus-response"
  "niryo_robot_rpi/ScanI2CBusResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ScanI2CBus-response>)))
  "Returns md5sum for a message object of type '<ScanI2CBus-response>"
  "808e467912d414dae099afb5994358c5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ScanI2CBus-response)))
  "Returns md5sum for a message object of type 'ScanI2CBus-response"
  "808e467912d414dae099afb5994358c5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ScanI2CBus-response>)))
  "Returns full string definition for message of type '<ScanI2CBus-response>"
  (cl:format cl:nil "int32 status~%string message~%~%bool is_ok~%niryo_robot_rpi/I2CComponent[] missing~%niryo_robot_rpi/I2CComponent[] detected~%~%~%================================================================================~%MSG: niryo_robot_rpi/I2CComponent~%uint32 bus~%uint32 address~%string info~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ScanI2CBus-response)))
  "Returns full string definition for message of type 'ScanI2CBus-response"
  (cl:format cl:nil "int32 status~%string message~%~%bool is_ok~%niryo_robot_rpi/I2CComponent[] missing~%niryo_robot_rpi/I2CComponent[] detected~%~%~%================================================================================~%MSG: niryo_robot_rpi/I2CComponent~%uint32 bus~%uint32 address~%string info~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ScanI2CBus-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'missing) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'detected) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ScanI2CBus-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ScanI2CBus-response
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
    (cl:cons ':is_ok (is_ok msg))
    (cl:cons ':missing (missing msg))
    (cl:cons ':detected (detected msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ScanI2CBus)))
  'ScanI2CBus-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ScanI2CBus)))
  'ScanI2CBus-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ScanI2CBus)))
  "Returns string type for a service object of type '<ScanI2CBus>"
  "niryo_robot_rpi/ScanI2CBus")