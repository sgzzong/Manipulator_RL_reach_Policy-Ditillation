; Auto-generated. Do not edit!


(cl:in-package niryo_robot_arm_commander-srv)


;//! \htmlinclude GetJointLimits-request.msg.html

(cl:defclass <GetJointLimits-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetJointLimits-request (<GetJointLimits-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetJointLimits-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetJointLimits-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_arm_commander-srv:<GetJointLimits-request> is deprecated: use niryo_robot_arm_commander-srv:GetJointLimits-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetJointLimits-request>) ostream)
  "Serializes a message object of type '<GetJointLimits-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetJointLimits-request>) istream)
  "Deserializes a message object of type '<GetJointLimits-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetJointLimits-request>)))
  "Returns string type for a service object of type '<GetJointLimits-request>"
  "niryo_robot_arm_commander/GetJointLimitsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetJointLimits-request)))
  "Returns string type for a service object of type 'GetJointLimits-request"
  "niryo_robot_arm_commander/GetJointLimitsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetJointLimits-request>)))
  "Returns md5sum for a message object of type '<GetJointLimits-request>"
  "8ba7b9bef3b3cda7f3761fd7553bd662")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetJointLimits-request)))
  "Returns md5sum for a message object of type 'GetJointLimits-request"
  "8ba7b9bef3b3cda7f3761fd7553bd662")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetJointLimits-request>)))
  "Returns full string definition for message of type '<GetJointLimits-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetJointLimits-request)))
  "Returns full string definition for message of type 'GetJointLimits-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetJointLimits-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetJointLimits-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetJointLimits-request
))
;//! \htmlinclude GetJointLimits-response.msg.html

(cl:defclass <GetJointLimits-response> (roslisp-msg-protocol:ros-message)
  ((joint_limits
    :reader joint_limits
    :initarg :joint_limits
    :type (cl:vector niryo_robot_arm_commander-msg:JointLimits)
   :initform (cl:make-array 0 :element-type 'niryo_robot_arm_commander-msg:JointLimits :initial-element (cl:make-instance 'niryo_robot_arm_commander-msg:JointLimits))))
)

(cl:defclass GetJointLimits-response (<GetJointLimits-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetJointLimits-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetJointLimits-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_arm_commander-srv:<GetJointLimits-response> is deprecated: use niryo_robot_arm_commander-srv:GetJointLimits-response instead.")))

(cl:ensure-generic-function 'joint_limits-val :lambda-list '(m))
(cl:defmethod joint_limits-val ((m <GetJointLimits-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_arm_commander-srv:joint_limits-val is deprecated.  Use niryo_robot_arm_commander-srv:joint_limits instead.")
  (joint_limits m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetJointLimits-response>) ostream)
  "Serializes a message object of type '<GetJointLimits-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joint_limits))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'joint_limits))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetJointLimits-response>) istream)
  "Deserializes a message object of type '<GetJointLimits-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joint_limits) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joint_limits)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'niryo_robot_arm_commander-msg:JointLimits))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetJointLimits-response>)))
  "Returns string type for a service object of type '<GetJointLimits-response>"
  "niryo_robot_arm_commander/GetJointLimitsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetJointLimits-response)))
  "Returns string type for a service object of type 'GetJointLimits-response"
  "niryo_robot_arm_commander/GetJointLimitsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetJointLimits-response>)))
  "Returns md5sum for a message object of type '<GetJointLimits-response>"
  "8ba7b9bef3b3cda7f3761fd7553bd662")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetJointLimits-response)))
  "Returns md5sum for a message object of type 'GetJointLimits-response"
  "8ba7b9bef3b3cda7f3761fd7553bd662")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetJointLimits-response>)))
  "Returns full string definition for message of type '<GetJointLimits-response>"
  (cl:format cl:nil "niryo_robot_arm_commander/JointLimits[] joint_limits~%~%================================================================================~%MSG: niryo_robot_arm_commander/JointLimits~%string name~%float64 min~%float64 max~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetJointLimits-response)))
  "Returns full string definition for message of type 'GetJointLimits-response"
  (cl:format cl:nil "niryo_robot_arm_commander/JointLimits[] joint_limits~%~%================================================================================~%MSG: niryo_robot_arm_commander/JointLimits~%string name~%float64 min~%float64 max~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetJointLimits-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_limits) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetJointLimits-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetJointLimits-response
    (cl:cons ':joint_limits (joint_limits msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetJointLimits)))
  'GetJointLimits-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetJointLimits)))
  'GetJointLimits-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetJointLimits)))
  "Returns string type for a service object of type '<GetJointLimits>"
  "niryo_robot_arm_commander/GetJointLimits")