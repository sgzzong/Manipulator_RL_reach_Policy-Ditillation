; Auto-generated. Do not edit!


(cl:in-package niryo_robot_programs_manager-srv)


;//! \htmlinclude GetProgramList-request.msg.html

(cl:defclass <GetProgramList-request> (roslisp-msg-protocol:ros-message)
  ((language
    :reader language
    :initarg :language
    :type niryo_robot_programs_manager-msg:ProgramLanguage
    :initform (cl:make-instance 'niryo_robot_programs_manager-msg:ProgramLanguage)))
)

(cl:defclass GetProgramList-request (<GetProgramList-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetProgramList-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetProgramList-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_programs_manager-srv:<GetProgramList-request> is deprecated: use niryo_robot_programs_manager-srv:GetProgramList-request instead.")))

(cl:ensure-generic-function 'language-val :lambda-list '(m))
(cl:defmethod language-val ((m <GetProgramList-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager-srv:language-val is deprecated.  Use niryo_robot_programs_manager-srv:language instead.")
  (language m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetProgramList-request>) ostream)
  "Serializes a message object of type '<GetProgramList-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'language) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetProgramList-request>) istream)
  "Deserializes a message object of type '<GetProgramList-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'language) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetProgramList-request>)))
  "Returns string type for a service object of type '<GetProgramList-request>"
  "niryo_robot_programs_manager/GetProgramListRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetProgramList-request)))
  "Returns string type for a service object of type 'GetProgramList-request"
  "niryo_robot_programs_manager/GetProgramListRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetProgramList-request>)))
  "Returns md5sum for a message object of type '<GetProgramList-request>"
  "4dfd49d0b1eeafdb4a0d480996fbd9b9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetProgramList-request)))
  "Returns md5sum for a message object of type 'GetProgramList-request"
  "4dfd49d0b1eeafdb4a0d480996fbd9b9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetProgramList-request>)))
  "Returns full string definition for message of type '<GetProgramList-request>"
  (cl:format cl:nil "niryo_robot_programs_manager/ProgramLanguage language~%~%================================================================================~%MSG: niryo_robot_programs_manager/ProgramLanguage~%int8 NONE = -1~%~%int8 ALL = 0~%~%# Runnable~%int8 PYTHON2 = 1~%int8 PYTHON3 = 2~%~%# Not Runnable~%int8 BLOCKLY = 66~%~%int8 used~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetProgramList-request)))
  "Returns full string definition for message of type 'GetProgramList-request"
  (cl:format cl:nil "niryo_robot_programs_manager/ProgramLanguage language~%~%================================================================================~%MSG: niryo_robot_programs_manager/ProgramLanguage~%int8 NONE = -1~%~%int8 ALL = 0~%~%# Runnable~%int8 PYTHON2 = 1~%int8 PYTHON3 = 2~%~%# Not Runnable~%int8 BLOCKLY = 66~%~%int8 used~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetProgramList-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'language))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetProgramList-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetProgramList-request
    (cl:cons ':language (language msg))
))
;//! \htmlinclude GetProgramList-response.msg.html

(cl:defclass <GetProgramList-response> (roslisp-msg-protocol:ros-message)
  ((programs_names
    :reader programs_names
    :initarg :programs_names
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (list_of_language_list
    :reader list_of_language_list
    :initarg :list_of_language_list
    :type (cl:vector niryo_robot_programs_manager-msg:ProgramLanguageList)
   :initform (cl:make-array 0 :element-type 'niryo_robot_programs_manager-msg:ProgramLanguageList :initial-element (cl:make-instance 'niryo_robot_programs_manager-msg:ProgramLanguageList)))
   (programs_description
    :reader programs_description
    :initarg :programs_description
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass GetProgramList-response (<GetProgramList-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetProgramList-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetProgramList-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_programs_manager-srv:<GetProgramList-response> is deprecated: use niryo_robot_programs_manager-srv:GetProgramList-response instead.")))

(cl:ensure-generic-function 'programs_names-val :lambda-list '(m))
(cl:defmethod programs_names-val ((m <GetProgramList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager-srv:programs_names-val is deprecated.  Use niryo_robot_programs_manager-srv:programs_names instead.")
  (programs_names m))

(cl:ensure-generic-function 'list_of_language_list-val :lambda-list '(m))
(cl:defmethod list_of_language_list-val ((m <GetProgramList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager-srv:list_of_language_list-val is deprecated.  Use niryo_robot_programs_manager-srv:list_of_language_list instead.")
  (list_of_language_list m))

(cl:ensure-generic-function 'programs_description-val :lambda-list '(m))
(cl:defmethod programs_description-val ((m <GetProgramList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager-srv:programs_description-val is deprecated.  Use niryo_robot_programs_manager-srv:programs_description instead.")
  (programs_description m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetProgramList-response>) ostream)
  "Serializes a message object of type '<GetProgramList-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'programs_names))))
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
   (cl:slot-value msg 'programs_names))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'list_of_language_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'list_of_language_list))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'programs_description))))
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
   (cl:slot-value msg 'programs_description))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetProgramList-response>) istream)
  "Deserializes a message object of type '<GetProgramList-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'programs_names) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'programs_names)))
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
  (cl:setf (cl:slot-value msg 'list_of_language_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'list_of_language_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'niryo_robot_programs_manager-msg:ProgramLanguageList))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'programs_description) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'programs_description)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetProgramList-response>)))
  "Returns string type for a service object of type '<GetProgramList-response>"
  "niryo_robot_programs_manager/GetProgramListResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetProgramList-response)))
  "Returns string type for a service object of type 'GetProgramList-response"
  "niryo_robot_programs_manager/GetProgramListResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetProgramList-response>)))
  "Returns md5sum for a message object of type '<GetProgramList-response>"
  "4dfd49d0b1eeafdb4a0d480996fbd9b9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetProgramList-response)))
  "Returns md5sum for a message object of type 'GetProgramList-response"
  "4dfd49d0b1eeafdb4a0d480996fbd9b9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetProgramList-response>)))
  "Returns full string definition for message of type '<GetProgramList-response>"
  (cl:format cl:nil "string[] programs_names~%niryo_robot_programs_manager/ProgramLanguageList[] list_of_language_list~%string[] programs_description~%~%~%~%================================================================================~%MSG: niryo_robot_programs_manager/ProgramLanguageList~%niryo_robot_programs_manager/ProgramLanguage[] language_list~%~%================================================================================~%MSG: niryo_robot_programs_manager/ProgramLanguage~%int8 NONE = -1~%~%int8 ALL = 0~%~%# Runnable~%int8 PYTHON2 = 1~%int8 PYTHON3 = 2~%~%# Not Runnable~%int8 BLOCKLY = 66~%~%int8 used~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetProgramList-response)))
  "Returns full string definition for message of type 'GetProgramList-response"
  (cl:format cl:nil "string[] programs_names~%niryo_robot_programs_manager/ProgramLanguageList[] list_of_language_list~%string[] programs_description~%~%~%~%================================================================================~%MSG: niryo_robot_programs_manager/ProgramLanguageList~%niryo_robot_programs_manager/ProgramLanguage[] language_list~%~%================================================================================~%MSG: niryo_robot_programs_manager/ProgramLanguage~%int8 NONE = -1~%~%int8 ALL = 0~%~%# Runnable~%int8 PYTHON2 = 1~%int8 PYTHON3 = 2~%~%# Not Runnable~%int8 BLOCKLY = 66~%~%int8 used~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetProgramList-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'programs_names) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'list_of_language_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'programs_description) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetProgramList-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetProgramList-response
    (cl:cons ':programs_names (programs_names msg))
    (cl:cons ':list_of_language_list (list_of_language_list msg))
    (cl:cons ':programs_description (programs_description msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetProgramList)))
  'GetProgramList-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetProgramList)))
  'GetProgramList-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetProgramList)))
  "Returns string type for a service object of type '<GetProgramList>"
  "niryo_robot_programs_manager/GetProgramList")