; Auto-generated. Do not edit!


(cl:in-package niryo_robot_msgs-srv)


;//! \htmlinclude Ping-request.msg.html

(cl:defclass <Ping-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (state
    :reader state
    :initarg :state
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Ping-request (<Ping-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Ping-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Ping-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_msgs-srv:<Ping-request> is deprecated: use niryo_robot_msgs-srv:Ping-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Ping-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_msgs-srv:name-val is deprecated.  Use niryo_robot_msgs-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <Ping-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_msgs-srv:state-val is deprecated.  Use niryo_robot_msgs-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Ping-request>) ostream)
  "Serializes a message object of type '<Ping-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'state) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Ping-request>) istream)
  "Deserializes a message object of type '<Ping-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'state) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Ping-request>)))
  "Returns string type for a service object of type '<Ping-request>"
  "niryo_robot_msgs/PingRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ping-request)))
  "Returns string type for a service object of type 'Ping-request"
  "niryo_robot_msgs/PingRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Ping-request>)))
  "Returns md5sum for a message object of type '<Ping-request>"
  "a02bbd4704518df654c6d45037dfc59f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Ping-request)))
  "Returns md5sum for a message object of type 'Ping-request"
  "a02bbd4704518df654c6d45037dfc59f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Ping-request>)))
  "Returns full string definition for message of type '<Ping-request>"
  (cl:format cl:nil "string name~%bool state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Ping-request)))
  "Returns full string definition for message of type 'Ping-request"
  (cl:format cl:nil "string name~%bool state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Ping-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Ping-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Ping-request
    (cl:cons ':name (name msg))
    (cl:cons ':state (state msg))
))
;//! \htmlinclude Ping-response.msg.html

(cl:defclass <Ping-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Ping-response (<Ping-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Ping-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Ping-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_msgs-srv:<Ping-response> is deprecated: use niryo_robot_msgs-srv:Ping-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Ping-response>) ostream)
  "Serializes a message object of type '<Ping-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Ping-response>) istream)
  "Deserializes a message object of type '<Ping-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Ping-response>)))
  "Returns string type for a service object of type '<Ping-response>"
  "niryo_robot_msgs/PingResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ping-response)))
  "Returns string type for a service object of type 'Ping-response"
  "niryo_robot_msgs/PingResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Ping-response>)))
  "Returns md5sum for a message object of type '<Ping-response>"
  "a02bbd4704518df654c6d45037dfc59f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Ping-response)))
  "Returns md5sum for a message object of type 'Ping-response"
  "a02bbd4704518df654c6d45037dfc59f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Ping-response>)))
  "Returns full string definition for message of type '<Ping-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Ping-response)))
  "Returns full string definition for message of type 'Ping-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Ping-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Ping-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Ping-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Ping)))
  'Ping-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Ping)))
  'Ping-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ping)))
  "Returns string type for a service object of type '<Ping>"
  "niryo_robot_msgs/Ping")