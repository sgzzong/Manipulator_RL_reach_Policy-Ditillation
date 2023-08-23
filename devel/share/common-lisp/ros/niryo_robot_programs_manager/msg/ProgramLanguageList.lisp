; Auto-generated. Do not edit!


(cl:in-package niryo_robot_programs_manager-msg)


;//! \htmlinclude ProgramLanguageList.msg.html

(cl:defclass <ProgramLanguageList> (roslisp-msg-protocol:ros-message)
  ((language_list
    :reader language_list
    :initarg :language_list
    :type (cl:vector niryo_robot_programs_manager-msg:ProgramLanguage)
   :initform (cl:make-array 0 :element-type 'niryo_robot_programs_manager-msg:ProgramLanguage :initial-element (cl:make-instance 'niryo_robot_programs_manager-msg:ProgramLanguage))))
)

(cl:defclass ProgramLanguageList (<ProgramLanguageList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ProgramLanguageList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ProgramLanguageList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_programs_manager-msg:<ProgramLanguageList> is deprecated: use niryo_robot_programs_manager-msg:ProgramLanguageList instead.")))

(cl:ensure-generic-function 'language_list-val :lambda-list '(m))
(cl:defmethod language_list-val ((m <ProgramLanguageList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_programs_manager-msg:language_list-val is deprecated.  Use niryo_robot_programs_manager-msg:language_list instead.")
  (language_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ProgramLanguageList>) ostream)
  "Serializes a message object of type '<ProgramLanguageList>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'language_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'language_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ProgramLanguageList>) istream)
  "Deserializes a message object of type '<ProgramLanguageList>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'language_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'language_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'niryo_robot_programs_manager-msg:ProgramLanguage))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ProgramLanguageList>)))
  "Returns string type for a message object of type '<ProgramLanguageList>"
  "niryo_robot_programs_manager/ProgramLanguageList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ProgramLanguageList)))
  "Returns string type for a message object of type 'ProgramLanguageList"
  "niryo_robot_programs_manager/ProgramLanguageList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ProgramLanguageList>)))
  "Returns md5sum for a message object of type '<ProgramLanguageList>"
  "c3bb60a31107853c4b43f43c3afc8faf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ProgramLanguageList)))
  "Returns md5sum for a message object of type 'ProgramLanguageList"
  "c3bb60a31107853c4b43f43c3afc8faf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ProgramLanguageList>)))
  "Returns full string definition for message of type '<ProgramLanguageList>"
  (cl:format cl:nil "niryo_robot_programs_manager/ProgramLanguage[] language_list~%~%================================================================================~%MSG: niryo_robot_programs_manager/ProgramLanguage~%int8 NONE = -1~%~%int8 ALL = 0~%~%# Runnable~%int8 PYTHON2 = 1~%int8 PYTHON3 = 2~%~%# Not Runnable~%int8 BLOCKLY = 66~%~%int8 used~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ProgramLanguageList)))
  "Returns full string definition for message of type 'ProgramLanguageList"
  (cl:format cl:nil "niryo_robot_programs_manager/ProgramLanguage[] language_list~%~%================================================================================~%MSG: niryo_robot_programs_manager/ProgramLanguage~%int8 NONE = -1~%~%int8 ALL = 0~%~%# Runnable~%int8 PYTHON2 = 1~%int8 PYTHON3 = 2~%~%# Not Runnable~%int8 BLOCKLY = 66~%~%int8 used~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ProgramLanguageList>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'language_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ProgramLanguageList>))
  "Converts a ROS message object to a list"
  (cl:list 'ProgramLanguageList
    (cl:cons ':language_list (language_list msg))
))
