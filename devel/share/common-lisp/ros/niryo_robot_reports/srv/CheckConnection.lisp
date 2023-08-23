; Auto-generated. Do not edit!


(cl:in-package niryo_robot_reports-srv)


;//! \htmlinclude CheckConnection-request.msg.html

(cl:defclass <CheckConnection-request> (roslisp-msg-protocol:ros-message)
  ((service
    :reader service
    :initarg :service
    :type niryo_robot_reports-msg:Service
    :initform (cl:make-instance 'niryo_robot_reports-msg:Service)))
)

(cl:defclass CheckConnection-request (<CheckConnection-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CheckConnection-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CheckConnection-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_reports-srv:<CheckConnection-request> is deprecated: use niryo_robot_reports-srv:CheckConnection-request instead.")))

(cl:ensure-generic-function 'service-val :lambda-list '(m))
(cl:defmethod service-val ((m <CheckConnection-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_reports-srv:service-val is deprecated.  Use niryo_robot_reports-srv:service instead.")
  (service m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CheckConnection-request>) ostream)
  "Serializes a message object of type '<CheckConnection-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'service) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CheckConnection-request>) istream)
  "Deserializes a message object of type '<CheckConnection-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'service) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CheckConnection-request>)))
  "Returns string type for a service object of type '<CheckConnection-request>"
  "niryo_robot_reports/CheckConnectionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckConnection-request)))
  "Returns string type for a service object of type 'CheckConnection-request"
  "niryo_robot_reports/CheckConnectionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CheckConnection-request>)))
  "Returns md5sum for a message object of type '<CheckConnection-request>"
  "601967d72fd39c22f6ae4773c148bd17")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CheckConnection-request)))
  "Returns md5sum for a message object of type 'CheckConnection-request"
  "601967d72fd39c22f6ae4773c148bd17")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CheckConnection-request>)))
  "Returns full string definition for message of type '<CheckConnection-request>"
  (cl:format cl:nil "Service service~%~%================================================================================~%MSG: niryo_robot_reports/Service~%int8 DAILY_REPORTS = 0~%int8 TEST_REPORTS = 1~%int8 ALERT_REPORTS = 2~%int8 AUTO_DIAGNOSIS_REPORTS = 3~%~%int8 to_test~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CheckConnection-request)))
  "Returns full string definition for message of type 'CheckConnection-request"
  (cl:format cl:nil "Service service~%~%================================================================================~%MSG: niryo_robot_reports/Service~%int8 DAILY_REPORTS = 0~%int8 TEST_REPORTS = 1~%int8 ALERT_REPORTS = 2~%int8 AUTO_DIAGNOSIS_REPORTS = 3~%~%int8 to_test~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CheckConnection-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'service))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CheckConnection-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CheckConnection-request
    (cl:cons ':service (service msg))
))
;//! \htmlinclude CheckConnection-response.msg.html

(cl:defclass <CheckConnection-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0)
   (result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CheckConnection-response (<CheckConnection-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CheckConnection-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CheckConnection-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_reports-srv:<CheckConnection-response> is deprecated: use niryo_robot_reports-srv:CheckConnection-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <CheckConnection-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_reports-srv:status-val is deprecated.  Use niryo_robot_reports-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <CheckConnection-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_reports-srv:result-val is deprecated.  Use niryo_robot_reports-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CheckConnection-response>) ostream)
  "Serializes a message object of type '<CheckConnection-response>"
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CheckConnection-response>) istream)
  "Deserializes a message object of type '<CheckConnection-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CheckConnection-response>)))
  "Returns string type for a service object of type '<CheckConnection-response>"
  "niryo_robot_reports/CheckConnectionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckConnection-response)))
  "Returns string type for a service object of type 'CheckConnection-response"
  "niryo_robot_reports/CheckConnectionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CheckConnection-response>)))
  "Returns md5sum for a message object of type '<CheckConnection-response>"
  "601967d72fd39c22f6ae4773c148bd17")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CheckConnection-response)))
  "Returns md5sum for a message object of type 'CheckConnection-response"
  "601967d72fd39c22f6ae4773c148bd17")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CheckConnection-response>)))
  "Returns full string definition for message of type '<CheckConnection-response>"
  (cl:format cl:nil "int32 status~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CheckConnection-response)))
  "Returns full string definition for message of type 'CheckConnection-response"
  (cl:format cl:nil "int32 status~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CheckConnection-response>))
  (cl:+ 0
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CheckConnection-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CheckConnection-response
    (cl:cons ':status (status msg))
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CheckConnection)))
  'CheckConnection-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CheckConnection)))
  'CheckConnection-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckConnection)))
  "Returns string type for a service object of type '<CheckConnection>"
  "niryo_robot_reports/CheckConnection")