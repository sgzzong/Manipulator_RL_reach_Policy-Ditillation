; Auto-generated. Do not edit!


(cl:in-package niryo_robot_database-srv)


;//! \htmlinclude GetAllByType-request.msg.html

(cl:defclass <GetAllByType-request> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:string
    :initform ""))
)

(cl:defclass GetAllByType-request (<GetAllByType-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetAllByType-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetAllByType-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_database-srv:<GetAllByType-request> is deprecated: use niryo_robot_database-srv:GetAllByType-request instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <GetAllByType-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_database-srv:type-val is deprecated.  Use niryo_robot_database-srv:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetAllByType-request>) ostream)
  "Serializes a message object of type '<GetAllByType-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetAllByType-request>) istream)
  "Deserializes a message object of type '<GetAllByType-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetAllByType-request>)))
  "Returns string type for a service object of type '<GetAllByType-request>"
  "niryo_robot_database/GetAllByTypeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetAllByType-request)))
  "Returns string type for a service object of type 'GetAllByType-request"
  "niryo_robot_database/GetAllByTypeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetAllByType-request>)))
  "Returns md5sum for a message object of type '<GetAllByType-request>"
  "d0918913b1da75a353e2e08189fdf5e5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetAllByType-request)))
  "Returns md5sum for a message object of type 'GetAllByType-request"
  "d0918913b1da75a353e2e08189fdf5e5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetAllByType-request>)))
  "Returns full string definition for message of type '<GetAllByType-request>"
  (cl:format cl:nil "string type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetAllByType-request)))
  "Returns full string definition for message of type 'GetAllByType-request"
  (cl:format cl:nil "string type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetAllByType-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetAllByType-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetAllByType-request
    (cl:cons ':type (type msg))
))
;//! \htmlinclude GetAllByType-response.msg.html

(cl:defclass <GetAllByType-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0)
   (filepaths
    :reader filepaths
    :initarg :filepaths
    :type (cl:vector niryo_robot_database-msg:FilePath)
   :initform (cl:make-array 0 :element-type 'niryo_robot_database-msg:FilePath :initial-element (cl:make-instance 'niryo_robot_database-msg:FilePath))))
)

(cl:defclass GetAllByType-response (<GetAllByType-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetAllByType-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetAllByType-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_database-srv:<GetAllByType-response> is deprecated: use niryo_robot_database-srv:GetAllByType-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <GetAllByType-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_database-srv:status-val is deprecated.  Use niryo_robot_database-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'filepaths-val :lambda-list '(m))
(cl:defmethod filepaths-val ((m <GetAllByType-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_database-srv:filepaths-val is deprecated.  Use niryo_robot_database-srv:filepaths instead.")
  (filepaths m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetAllByType-response>) ostream)
  "Serializes a message object of type '<GetAllByType-response>"
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'filepaths))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'filepaths))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetAllByType-response>) istream)
  "Deserializes a message object of type '<GetAllByType-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'filepaths) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'filepaths)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'niryo_robot_database-msg:FilePath))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetAllByType-response>)))
  "Returns string type for a service object of type '<GetAllByType-response>"
  "niryo_robot_database/GetAllByTypeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetAllByType-response)))
  "Returns string type for a service object of type 'GetAllByType-response"
  "niryo_robot_database/GetAllByTypeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetAllByType-response>)))
  "Returns md5sum for a message object of type '<GetAllByType-response>"
  "d0918913b1da75a353e2e08189fdf5e5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetAllByType-response)))
  "Returns md5sum for a message object of type 'GetAllByType-response"
  "d0918913b1da75a353e2e08189fdf5e5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetAllByType-response>)))
  "Returns full string definition for message of type '<GetAllByType-response>"
  (cl:format cl:nil "int32 status~%FilePath[] filepaths~%~%================================================================================~%MSG: niryo_robot_database/FilePath~%string id~%string type~%string name~%string date~%string path~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetAllByType-response)))
  "Returns full string definition for message of type 'GetAllByType-response"
  (cl:format cl:nil "int32 status~%FilePath[] filepaths~%~%================================================================================~%MSG: niryo_robot_database/FilePath~%string id~%string type~%string name~%string date~%string path~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetAllByType-response>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'filepaths) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetAllByType-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetAllByType-response
    (cl:cons ':status (status msg))
    (cl:cons ':filepaths (filepaths msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetAllByType)))
  'GetAllByType-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetAllByType)))
  'GetAllByType-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetAllByType)))
  "Returns string type for a service object of type '<GetAllByType>"
  "niryo_robot_database/GetAllByType")