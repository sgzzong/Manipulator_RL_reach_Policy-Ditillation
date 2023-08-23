; Auto-generated. Do not edit!


(cl:in-package niryo_robot_vision-srv)


;//! \htmlinclude Visualization-request.msg.html

(cl:defclass <Visualization-request> (roslisp-msg-protocol:ros-message)
  ((workspace
    :reader workspace
    :initarg :workspace
    :type cl:string
    :initform "")
   (clearing
    :reader clearing
    :initarg :clearing
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Visualization-request (<Visualization-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Visualization-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Visualization-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_vision-srv:<Visualization-request> is deprecated: use niryo_robot_vision-srv:Visualization-request instead.")))

(cl:ensure-generic-function 'workspace-val :lambda-list '(m))
(cl:defmethod workspace-val ((m <Visualization-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_vision-srv:workspace-val is deprecated.  Use niryo_robot_vision-srv:workspace instead.")
  (workspace m))

(cl:ensure-generic-function 'clearing-val :lambda-list '(m))
(cl:defmethod clearing-val ((m <Visualization-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_vision-srv:clearing-val is deprecated.  Use niryo_robot_vision-srv:clearing instead.")
  (clearing m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Visualization-request>) ostream)
  "Serializes a message object of type '<Visualization-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'workspace))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'workspace))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'clearing) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Visualization-request>) istream)
  "Deserializes a message object of type '<Visualization-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'workspace) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'workspace) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'clearing) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Visualization-request>)))
  "Returns string type for a service object of type '<Visualization-request>"
  "niryo_robot_vision/VisualizationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Visualization-request)))
  "Returns string type for a service object of type 'Visualization-request"
  "niryo_robot_vision/VisualizationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Visualization-request>)))
  "Returns md5sum for a message object of type '<Visualization-request>"
  "137ed21db0b20a9ae0eba8eb8afcd908")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Visualization-request)))
  "Returns md5sum for a message object of type 'Visualization-request"
  "137ed21db0b20a9ae0eba8eb8afcd908")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Visualization-request>)))
  "Returns full string definition for message of type '<Visualization-request>"
  (cl:format cl:nil "string workspace~%bool clearing~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Visualization-request)))
  "Returns full string definition for message of type 'Visualization-request"
  (cl:format cl:nil "string workspace~%bool clearing~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Visualization-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'workspace))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Visualization-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Visualization-request
    (cl:cons ':workspace (workspace msg))
    (cl:cons ':clearing (clearing msg))
))
;//! \htmlinclude Visualization-response.msg.html

(cl:defclass <Visualization-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0))
)

(cl:defclass Visualization-response (<Visualization-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Visualization-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Visualization-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_vision-srv:<Visualization-response> is deprecated: use niryo_robot_vision-srv:Visualization-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <Visualization-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_vision-srv:status-val is deprecated.  Use niryo_robot_vision-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Visualization-response>) ostream)
  "Serializes a message object of type '<Visualization-response>"
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Visualization-response>) istream)
  "Deserializes a message object of type '<Visualization-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Visualization-response>)))
  "Returns string type for a service object of type '<Visualization-response>"
  "niryo_robot_vision/VisualizationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Visualization-response)))
  "Returns string type for a service object of type 'Visualization-response"
  "niryo_robot_vision/VisualizationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Visualization-response>)))
  "Returns md5sum for a message object of type '<Visualization-response>"
  "137ed21db0b20a9ae0eba8eb8afcd908")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Visualization-response)))
  "Returns md5sum for a message object of type 'Visualization-response"
  "137ed21db0b20a9ae0eba8eb8afcd908")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Visualization-response>)))
  "Returns full string definition for message of type '<Visualization-response>"
  (cl:format cl:nil "int32 status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Visualization-response)))
  "Returns full string definition for message of type 'Visualization-response"
  (cl:format cl:nil "int32 status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Visualization-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Visualization-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Visualization-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Visualization)))
  'Visualization-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Visualization)))
  'Visualization-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Visualization)))
  "Returns string type for a service object of type '<Visualization>"
  "niryo_robot_vision/Visualization")