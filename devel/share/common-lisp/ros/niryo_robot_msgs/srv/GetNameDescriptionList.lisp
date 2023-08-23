; Auto-generated. Do not edit!


(cl:in-package niryo_robot_msgs-srv)


;//! \htmlinclude GetNameDescriptionList-request.msg.html

(cl:defclass <GetNameDescriptionList-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetNameDescriptionList-request (<GetNameDescriptionList-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetNameDescriptionList-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetNameDescriptionList-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_msgs-srv:<GetNameDescriptionList-request> is deprecated: use niryo_robot_msgs-srv:GetNameDescriptionList-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetNameDescriptionList-request>) ostream)
  "Serializes a message object of type '<GetNameDescriptionList-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetNameDescriptionList-request>) istream)
  "Deserializes a message object of type '<GetNameDescriptionList-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetNameDescriptionList-request>)))
  "Returns string type for a service object of type '<GetNameDescriptionList-request>"
  "niryo_robot_msgs/GetNameDescriptionListRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetNameDescriptionList-request)))
  "Returns string type for a service object of type 'GetNameDescriptionList-request"
  "niryo_robot_msgs/GetNameDescriptionListRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetNameDescriptionList-request>)))
  "Returns md5sum for a message object of type '<GetNameDescriptionList-request>"
  "5361969a38863a729ef2e599380538df")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetNameDescriptionList-request)))
  "Returns md5sum for a message object of type 'GetNameDescriptionList-request"
  "5361969a38863a729ef2e599380538df")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetNameDescriptionList-request>)))
  "Returns full string definition for message of type '<GetNameDescriptionList-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetNameDescriptionList-request)))
  "Returns full string definition for message of type 'GetNameDescriptionList-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetNameDescriptionList-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetNameDescriptionList-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetNameDescriptionList-request
))
;//! \htmlinclude GetNameDescriptionList-response.msg.html

(cl:defclass <GetNameDescriptionList-response> (roslisp-msg-protocol:ros-message)
  ((name_list
    :reader name_list
    :initarg :name_list
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (description_list
    :reader description_list
    :initarg :description_list
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass GetNameDescriptionList-response (<GetNameDescriptionList-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetNameDescriptionList-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetNameDescriptionList-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_msgs-srv:<GetNameDescriptionList-response> is deprecated: use niryo_robot_msgs-srv:GetNameDescriptionList-response instead.")))

(cl:ensure-generic-function 'name_list-val :lambda-list '(m))
(cl:defmethod name_list-val ((m <GetNameDescriptionList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_msgs-srv:name_list-val is deprecated.  Use niryo_robot_msgs-srv:name_list instead.")
  (name_list m))

(cl:ensure-generic-function 'description_list-val :lambda-list '(m))
(cl:defmethod description_list-val ((m <GetNameDescriptionList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_msgs-srv:description_list-val is deprecated.  Use niryo_robot_msgs-srv:description_list instead.")
  (description_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetNameDescriptionList-response>) ostream)
  "Serializes a message object of type '<GetNameDescriptionList-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'name_list))))
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
   (cl:slot-value msg 'name_list))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'description_list))))
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
   (cl:slot-value msg 'description_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetNameDescriptionList-response>) istream)
  "Deserializes a message object of type '<GetNameDescriptionList-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'name_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'name_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'description_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'description_list)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetNameDescriptionList-response>)))
  "Returns string type for a service object of type '<GetNameDescriptionList-response>"
  "niryo_robot_msgs/GetNameDescriptionListResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetNameDescriptionList-response)))
  "Returns string type for a service object of type 'GetNameDescriptionList-response"
  "niryo_robot_msgs/GetNameDescriptionListResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetNameDescriptionList-response>)))
  "Returns md5sum for a message object of type '<GetNameDescriptionList-response>"
  "5361969a38863a729ef2e599380538df")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetNameDescriptionList-response)))
  "Returns md5sum for a message object of type 'GetNameDescriptionList-response"
  "5361969a38863a729ef2e599380538df")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetNameDescriptionList-response>)))
  "Returns full string definition for message of type '<GetNameDescriptionList-response>"
  (cl:format cl:nil "string[] name_list~%string[] description_list~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetNameDescriptionList-response)))
  "Returns full string definition for message of type 'GetNameDescriptionList-response"
  (cl:format cl:nil "string[] name_list~%string[] description_list~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetNameDescriptionList-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'name_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'description_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetNameDescriptionList-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetNameDescriptionList-response
    (cl:cons ':name_list (name_list msg))
    (cl:cons ':description_list (description_list msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetNameDescriptionList)))
  'GetNameDescriptionList-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetNameDescriptionList)))
  'GetNameDescriptionList-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetNameDescriptionList)))
  "Returns string type for a service object of type '<GetNameDescriptionList>"
  "niryo_robot_msgs/GetNameDescriptionList")