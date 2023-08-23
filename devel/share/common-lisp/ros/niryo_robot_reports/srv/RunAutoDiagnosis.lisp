; Auto-generated. Do not edit!


(cl:in-package niryo_robot_reports-srv)


;//! \htmlinclude RunAutoDiagnosis-request.msg.html

(cl:defclass <RunAutoDiagnosis-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass RunAutoDiagnosis-request (<RunAutoDiagnosis-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RunAutoDiagnosis-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RunAutoDiagnosis-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_reports-srv:<RunAutoDiagnosis-request> is deprecated: use niryo_robot_reports-srv:RunAutoDiagnosis-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RunAutoDiagnosis-request>) ostream)
  "Serializes a message object of type '<RunAutoDiagnosis-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RunAutoDiagnosis-request>) istream)
  "Deserializes a message object of type '<RunAutoDiagnosis-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RunAutoDiagnosis-request>)))
  "Returns string type for a service object of type '<RunAutoDiagnosis-request>"
  "niryo_robot_reports/RunAutoDiagnosisRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RunAutoDiagnosis-request)))
  "Returns string type for a service object of type 'RunAutoDiagnosis-request"
  "niryo_robot_reports/RunAutoDiagnosisRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RunAutoDiagnosis-request>)))
  "Returns md5sum for a message object of type '<RunAutoDiagnosis-request>"
  "5409a1706eceafd303fc08b7f8118535")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RunAutoDiagnosis-request)))
  "Returns md5sum for a message object of type 'RunAutoDiagnosis-request"
  "5409a1706eceafd303fc08b7f8118535")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RunAutoDiagnosis-request>)))
  "Returns full string definition for message of type '<RunAutoDiagnosis-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RunAutoDiagnosis-request)))
  "Returns full string definition for message of type 'RunAutoDiagnosis-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RunAutoDiagnosis-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RunAutoDiagnosis-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RunAutoDiagnosis-request
))
;//! \htmlinclude RunAutoDiagnosis-response.msg.html

(cl:defclass <RunAutoDiagnosis-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0)
   (result
    :reader result
    :initarg :result
    :type cl:string
    :initform ""))
)

(cl:defclass RunAutoDiagnosis-response (<RunAutoDiagnosis-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RunAutoDiagnosis-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RunAutoDiagnosis-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_reports-srv:<RunAutoDiagnosis-response> is deprecated: use niryo_robot_reports-srv:RunAutoDiagnosis-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <RunAutoDiagnosis-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_reports-srv:status-val is deprecated.  Use niryo_robot_reports-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <RunAutoDiagnosis-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_reports-srv:result-val is deprecated.  Use niryo_robot_reports-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RunAutoDiagnosis-response>) ostream)
  "Serializes a message object of type '<RunAutoDiagnosis-response>"
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RunAutoDiagnosis-response>) istream)
  "Deserializes a message object of type '<RunAutoDiagnosis-response>"
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
      (cl:setf (cl:slot-value msg 'result) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'result) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RunAutoDiagnosis-response>)))
  "Returns string type for a service object of type '<RunAutoDiagnosis-response>"
  "niryo_robot_reports/RunAutoDiagnosisResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RunAutoDiagnosis-response)))
  "Returns string type for a service object of type 'RunAutoDiagnosis-response"
  "niryo_robot_reports/RunAutoDiagnosisResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RunAutoDiagnosis-response>)))
  "Returns md5sum for a message object of type '<RunAutoDiagnosis-response>"
  "5409a1706eceafd303fc08b7f8118535")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RunAutoDiagnosis-response)))
  "Returns md5sum for a message object of type 'RunAutoDiagnosis-response"
  "5409a1706eceafd303fc08b7f8118535")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RunAutoDiagnosis-response>)))
  "Returns full string definition for message of type '<RunAutoDiagnosis-response>"
  (cl:format cl:nil "int32 status~%string result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RunAutoDiagnosis-response)))
  "Returns full string definition for message of type 'RunAutoDiagnosis-response"
  (cl:format cl:nil "int32 status~%string result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RunAutoDiagnosis-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RunAutoDiagnosis-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RunAutoDiagnosis-response
    (cl:cons ':status (status msg))
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RunAutoDiagnosis)))
  'RunAutoDiagnosis-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RunAutoDiagnosis)))
  'RunAutoDiagnosis-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RunAutoDiagnosis)))
  "Returns string type for a service object of type '<RunAutoDiagnosis>"
  "niryo_robot_reports/RunAutoDiagnosis")