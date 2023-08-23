; Auto-generated. Do not edit!


(cl:in-package niryo_robot_reports-msg)


;//! \htmlinclude Service.msg.html

(cl:defclass <Service> (roslisp-msg-protocol:ros-message)
  ((to_test
    :reader to_test
    :initarg :to_test
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Service (<Service>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Service>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Service)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_reports-msg:<Service> is deprecated: use niryo_robot_reports-msg:Service instead.")))

(cl:ensure-generic-function 'to_test-val :lambda-list '(m))
(cl:defmethod to_test-val ((m <Service>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_reports-msg:to_test-val is deprecated.  Use niryo_robot_reports-msg:to_test instead.")
  (to_test m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Service>)))
    "Constants for message type '<Service>"
  '((:DAILY_REPORTS . 0)
    (:TEST_REPORTS . 1)
    (:ALERT_REPORTS . 2)
    (:AUTO_DIAGNOSIS_REPORTS . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Service)))
    "Constants for message type 'Service"
  '((:DAILY_REPORTS . 0)
    (:TEST_REPORTS . 1)
    (:ALERT_REPORTS . 2)
    (:AUTO_DIAGNOSIS_REPORTS . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Service>) ostream)
  "Serializes a message object of type '<Service>"
  (cl:let* ((signed (cl:slot-value msg 'to_test)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Service>) istream)
  "Deserializes a message object of type '<Service>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'to_test) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Service>)))
  "Returns string type for a message object of type '<Service>"
  "niryo_robot_reports/Service")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Service)))
  "Returns string type for a message object of type 'Service"
  "niryo_robot_reports/Service")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Service>)))
  "Returns md5sum for a message object of type '<Service>"
  "2398aef25e17f178de798f7c32631bee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Service)))
  "Returns md5sum for a message object of type 'Service"
  "2398aef25e17f178de798f7c32631bee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Service>)))
  "Returns full string definition for message of type '<Service>"
  (cl:format cl:nil "int8 DAILY_REPORTS = 0~%int8 TEST_REPORTS = 1~%int8 ALERT_REPORTS = 2~%int8 AUTO_DIAGNOSIS_REPORTS = 3~%~%int8 to_test~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Service)))
  "Returns full string definition for message of type 'Service"
  (cl:format cl:nil "int8 DAILY_REPORTS = 0~%int8 TEST_REPORTS = 1~%int8 ALERT_REPORTS = 2~%int8 AUTO_DIAGNOSIS_REPORTS = 3~%~%int8 to_test~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Service>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Service>))
  "Converts a ROS message object to a list"
  (cl:list 'Service
    (cl:cons ':to_test (to_test msg))
))
