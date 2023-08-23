; Auto-generated. Do not edit!


(cl:in-package niryo_robot_vision-msg)


;//! \htmlinclude ImageParameters.msg.html

(cl:defclass <ImageParameters> (roslisp-msg-protocol:ros-message)
  ((brightness_factor
    :reader brightness_factor
    :initarg :brightness_factor
    :type cl:float
    :initform 0.0)
   (contrast_factor
    :reader contrast_factor
    :initarg :contrast_factor
    :type cl:float
    :initform 0.0)
   (saturation_factor
    :reader saturation_factor
    :initarg :saturation_factor
    :type cl:float
    :initform 0.0))
)

(cl:defclass ImageParameters (<ImageParameters>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ImageParameters>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ImageParameters)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_vision-msg:<ImageParameters> is deprecated: use niryo_robot_vision-msg:ImageParameters instead.")))

(cl:ensure-generic-function 'brightness_factor-val :lambda-list '(m))
(cl:defmethod brightness_factor-val ((m <ImageParameters>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_vision-msg:brightness_factor-val is deprecated.  Use niryo_robot_vision-msg:brightness_factor instead.")
  (brightness_factor m))

(cl:ensure-generic-function 'contrast_factor-val :lambda-list '(m))
(cl:defmethod contrast_factor-val ((m <ImageParameters>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_vision-msg:contrast_factor-val is deprecated.  Use niryo_robot_vision-msg:contrast_factor instead.")
  (contrast_factor m))

(cl:ensure-generic-function 'saturation_factor-val :lambda-list '(m))
(cl:defmethod saturation_factor-val ((m <ImageParameters>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_vision-msg:saturation_factor-val is deprecated.  Use niryo_robot_vision-msg:saturation_factor instead.")
  (saturation_factor m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ImageParameters>) ostream)
  "Serializes a message object of type '<ImageParameters>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'brightness_factor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'contrast_factor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'saturation_factor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ImageParameters>) istream)
  "Deserializes a message object of type '<ImageParameters>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'brightness_factor) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'contrast_factor) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'saturation_factor) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ImageParameters>)))
  "Returns string type for a message object of type '<ImageParameters>"
  "niryo_robot_vision/ImageParameters")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ImageParameters)))
  "Returns string type for a message object of type 'ImageParameters"
  "niryo_robot_vision/ImageParameters")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ImageParameters>)))
  "Returns md5sum for a message object of type '<ImageParameters>"
  "2b9ee591aa6a512b640f955e2c18acaf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ImageParameters)))
  "Returns md5sum for a message object of type 'ImageParameters"
  "2b9ee591aa6a512b640f955e2c18acaf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ImageParameters>)))
  "Returns full string definition for message of type '<ImageParameters>"
  (cl:format cl:nil "float64 brightness_factor~%float64 contrast_factor~%float64 saturation_factor~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ImageParameters)))
  "Returns full string definition for message of type 'ImageParameters"
  (cl:format cl:nil "float64 brightness_factor~%float64 contrast_factor~%float64 saturation_factor~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ImageParameters>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ImageParameters>))
  "Converts a ROS message object to a list"
  (cl:list 'ImageParameters
    (cl:cons ':brightness_factor (brightness_factor msg))
    (cl:cons ':contrast_factor (contrast_factor msg))
    (cl:cons ':saturation_factor (saturation_factor msg))
))
