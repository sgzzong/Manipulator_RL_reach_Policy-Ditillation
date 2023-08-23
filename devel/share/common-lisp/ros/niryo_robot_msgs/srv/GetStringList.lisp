; Auto-generated. Do not edit!


(cl:in-package niryo_robot_msgs-srv)


;//! \htmlinclude GetStringList-request.msg.html

(cl:defclass <GetStringList-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetStringList-request (<GetStringList-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetStringList-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetStringList-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_msgs-srv:<GetStringList-request> is deprecated: use niryo_robot_msgs-srv:GetStringList-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetStringList-request>) ostream)
  "Serializes a message object of type '<GetStringList-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetStringList-request>) istream)
  "Deserializes a message object of type '<GetStringList-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetStringList-request>)))
  "Returns string type for a service object of type '<GetStringList-request>"
  "niryo_robot_msgs/GetStringListRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetStringList-request)))
  "Returns string type for a service object of type 'GetStringList-request"
  "niryo_robot_msgs/GetStringListRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetStringList-request>)))
  "Returns md5sum for a message object of type '<GetStringList-request>"
  "b98f2fc9ff4290143d964bc0d59df60a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetStringList-request)))
  "Returns md5sum for a message object of type 'GetStringList-request"
  "b98f2fc9ff4290143d964bc0d59df60a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetStringList-request>)))
  "Returns full string definition for message of type '<GetStringList-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetStringList-request)))
  "Returns full string definition for message of type 'GetStringList-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetStringList-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetStringList-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetStringList-request
))
;//! \htmlinclude GetStringList-response.msg.html

(cl:defclass <GetStringList-response> (roslisp-msg-protocol:ros-message)
  ((string_list
    :reader string_list
    :initarg :string_list
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass GetStringList-response (<GetStringList-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetStringList-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetStringList-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_msgs-srv:<GetStringList-response> is deprecated: use niryo_robot_msgs-srv:GetStringList-response instead.")))

(cl:ensure-generic-function 'string_list-val :lambda-list '(m))
(cl:defmethod string_list-val ((m <GetStringList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_msgs-srv:string_list-val is deprecated.  Use niryo_robot_msgs-srv:string_list instead.")
  (string_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetStringList-response>) ostream)
  "Serializes a message object of type '<GetStringList-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'string_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'string_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetStringList-response>) istream)
  "Deserializes a message object of type '<GetStringList-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'string_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'string_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetStringList-response>)))
  "Returns string type for a service object of type '<GetStringList-response>"
  "niryo_robot_msgs/GetStringListResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetStringList-response)))
  "Returns string type for a service object of type 'GetStringList-response"
  "niryo_robot_msgs/GetStringListResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetStringList-response>)))
  "Returns md5sum for a message object of type '<GetStringList-response>"
  "b98f2fc9ff4290143d964bc0d59df60a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetStringList-response)))
  "Returns md5sum for a message object of type 'GetStringList-response"
  "b98f2fc9ff4290143d964bc0d59df60a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetStringList-response>)))
  "Returns full string definition for message of type '<GetStringList-response>"
  (cl:format cl:nil "string[] string_list~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetStringList-response)))
  "Returns full string definition for message of type 'GetStringList-response"
  (cl:format cl:nil "string[] string_list~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetStringList-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'string_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetStringList-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetStringList-response
    (cl:cons ':string_list (string_list msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetStringList)))
  'GetStringList-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetStringList)))
  'GetStringList-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetStringList)))
  "Returns string type for a service object of type '<GetStringList>"
  "niryo_robot_msgs/GetStringList")