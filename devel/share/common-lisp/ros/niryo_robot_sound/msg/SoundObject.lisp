; Auto-generated. Do not edit!


(cl:in-package niryo_robot_sound-msg)


;//! \htmlinclude SoundObject.msg.html

(cl:defclass <SoundObject> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (duration
    :reader duration
    :initarg :duration
    :type cl:float
    :initform 0.0))
)

(cl:defclass SoundObject (<SoundObject>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SoundObject>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SoundObject)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_sound-msg:<SoundObject> is deprecated: use niryo_robot_sound-msg:SoundObject instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <SoundObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_sound-msg:name-val is deprecated.  Use niryo_robot_sound-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'duration-val :lambda-list '(m))
(cl:defmethod duration-val ((m <SoundObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_sound-msg:duration-val is deprecated.  Use niryo_robot_sound-msg:duration instead.")
  (duration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SoundObject>) ostream)
  "Serializes a message object of type '<SoundObject>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'duration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SoundObject>) istream)
  "Deserializes a message object of type '<SoundObject>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'duration) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SoundObject>)))
  "Returns string type for a message object of type '<SoundObject>"
  "niryo_robot_sound/SoundObject")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SoundObject)))
  "Returns string type for a message object of type 'SoundObject"
  "niryo_robot_sound/SoundObject")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SoundObject>)))
  "Returns md5sum for a message object of type '<SoundObject>"
  "958aa3865faceda1f9534bbdc6ae923e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SoundObject)))
  "Returns md5sum for a message object of type 'SoundObject"
  "958aa3865faceda1f9534bbdc6ae923e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SoundObject>)))
  "Returns full string definition for message of type '<SoundObject>"
  (cl:format cl:nil "string name~%float64 duration~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SoundObject)))
  "Returns full string definition for message of type 'SoundObject"
  (cl:format cl:nil "string name~%float64 duration~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SoundObject>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SoundObject>))
  "Converts a ROS message object to a list"
  (cl:list 'SoundObject
    (cl:cons ':name (name msg))
    (cl:cons ':duration (duration msg))
))
