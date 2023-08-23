; Auto-generated. Do not edit!


(cl:in-package niryo_robot_msgs-srv)


;//! \htmlinclude GetBool-request.msg.html

(cl:defclass <GetBool-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetBool-request (<GetBool-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetBool-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetBool-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_msgs-srv:<GetBool-request> is deprecated: use niryo_robot_msgs-srv:GetBool-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetBool-request>) ostream)
  "Serializes a message object of type '<GetBool-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetBool-request>) istream)
  "Deserializes a message object of type '<GetBool-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetBool-request>)))
  "Returns string type for a service object of type '<GetBool-request>"
  "niryo_robot_msgs/GetBoolRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetBool-request)))
  "Returns string type for a service object of type 'GetBool-request"
  "niryo_robot_msgs/GetBoolRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetBool-request>)))
  "Returns md5sum for a message object of type '<GetBool-request>"
  "e431d687bf4b2c65fbd94b12ae0cb5d9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetBool-request)))
  "Returns md5sum for a message object of type 'GetBool-request"
  "e431d687bf4b2c65fbd94b12ae0cb5d9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetBool-request>)))
  "Returns full string definition for message of type '<GetBool-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetBool-request)))
  "Returns full string definition for message of type 'GetBool-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetBool-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetBool-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetBool-request
))
;//! \htmlinclude GetBool-response.msg.html

(cl:defclass <GetBool-response> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GetBool-response (<GetBool-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetBool-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetBool-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_msgs-srv:<GetBool-response> is deprecated: use niryo_robot_msgs-srv:GetBool-response instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <GetBool-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_msgs-srv:value-val is deprecated.  Use niryo_robot_msgs-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetBool-response>) ostream)
  "Serializes a message object of type '<GetBool-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'value) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetBool-response>) istream)
  "Deserializes a message object of type '<GetBool-response>"
    (cl:setf (cl:slot-value msg 'value) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetBool-response>)))
  "Returns string type for a service object of type '<GetBool-response>"
  "niryo_robot_msgs/GetBoolResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetBool-response)))
  "Returns string type for a service object of type 'GetBool-response"
  "niryo_robot_msgs/GetBoolResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetBool-response>)))
  "Returns md5sum for a message object of type '<GetBool-response>"
  "e431d687bf4b2c65fbd94b12ae0cb5d9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetBool-response)))
  "Returns md5sum for a message object of type 'GetBool-response"
  "e431d687bf4b2c65fbd94b12ae0cb5d9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetBool-response>)))
  "Returns full string definition for message of type '<GetBool-response>"
  (cl:format cl:nil "bool value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetBool-response)))
  "Returns full string definition for message of type 'GetBool-response"
  (cl:format cl:nil "bool value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetBool-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetBool-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetBool-response
    (cl:cons ':value (value msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetBool)))
  'GetBool-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetBool)))
  'GetBool-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetBool)))
  "Returns string type for a service object of type '<GetBool>"
  "niryo_robot_msgs/GetBool")