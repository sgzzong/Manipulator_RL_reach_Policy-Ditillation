; Auto-generated. Do not edit!


(cl:in-package niryo_robot_programs_manager-msg)


;//! \htmlinclude ProgramList.msg.html

(cl:defclass <ProgramList> (roslisp-msg-protocol:ros-message)
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

(cl:defclass ProgramList (<ProgramList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ProgramList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ProgramList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_programs_manager-msg:<ProgramList> is deprecated: use niryo_robot_programs_manager-msg:ProgramList instead.")))

(cl:ensure-generic-function 'programs_names-val :lambda-list '(m))
(cl:defmethod programs_names-val ((m <ProgramList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager-msg:programs_names-val is deprecated.  Use niryo_robot_programs_manager-msg:programs_names instead.")
  (programs_names m))

(cl:ensure-generic-function 'list_of_language_list-val :lambda-list '(m))
(cl:defmethod list_of_language_list-val ((m <ProgramList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager-msg:list_of_language_list-val is deprecated.  Use niryo_robot_programs_manager-msg:list_of_language_list instead.")
  (list_of_language_list m))

(cl:ensure-generic-function 'programs_description-val :lambda-list '(m))
(cl:defmethod programs_description-val ((m <ProgramList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager-msg:programs_description-val is deprecated.  Use niryo_robot_programs_manager-msg:programs_description instead.")
  (programs_description m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ProgramList>) ostream)
  "Serializes a message object of type '<ProgramList>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ProgramList>) istream)
  "Deserializes a message object of type '<ProgramList>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ProgramList>)))
  "Returns string type for a message object of type '<ProgramList>"
  "niryo_robot_programs_manager/ProgramList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ProgramList)))
  "Returns string type for a message object of type 'ProgramList"
  "niryo_robot_programs_manager/ProgramList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ProgramList>)))
  "Returns md5sum for a message object of type '<ProgramList>"
  "2eeab6a7fdb2c21404eeccc7eb573f85")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ProgramList)))
  "Returns md5sum for a message object of type 'ProgramList"
  "2eeab6a7fdb2c21404eeccc7eb573f85")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ProgramList>)))
  "Returns full string definition for message of type '<ProgramList>"
  (cl:format cl:nil "string[] programs_names~%niryo_robot_programs_manager/ProgramLanguageList[] list_of_language_list~%string[] programs_description~%~%~%================================================================================~%MSG: niryo_robot_programs_manager/ProgramLanguageList~%niryo_robot_programs_manager/ProgramLanguage[] language_list~%~%================================================================================~%MSG: niryo_robot_programs_manager/ProgramLanguage~%int8 NONE = -1~%~%int8 ALL = 0~%~%# Runnable~%int8 PYTHON2 = 1~%int8 PYTHON3 = 2~%~%# Not Runnable~%int8 BLOCKLY = 66~%~%int8 used~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ProgramList)))
  "Returns full string definition for message of type 'ProgramList"
  (cl:format cl:nil "string[] programs_names~%niryo_robot_programs_manager/ProgramLanguageList[] list_of_language_list~%string[] programs_description~%~%~%================================================================================~%MSG: niryo_robot_programs_manager/ProgramLanguageList~%niryo_robot_programs_manager/ProgramLanguage[] language_list~%~%================================================================================~%MSG: niryo_robot_programs_manager/ProgramLanguage~%int8 NONE = -1~%~%int8 ALL = 0~%~%# Runnable~%int8 PYTHON2 = 1~%int8 PYTHON3 = 2~%~%# Not Runnable~%int8 BLOCKLY = 66~%~%int8 used~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ProgramList>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'programs_names) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'list_of_language_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'programs_description) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ProgramList>))
  "Converts a ROS message object to a list"
  (cl:list 'ProgramList
    (cl:cons ':programs_names (programs_names msg))
    (cl:cons ':list_of_language_list (list_of_language_list msg))
    (cl:cons ':programs_description (programs_description msg))
))
