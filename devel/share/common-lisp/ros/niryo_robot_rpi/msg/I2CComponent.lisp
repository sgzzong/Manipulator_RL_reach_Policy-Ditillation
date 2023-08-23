; Auto-generated. Do not edit!


(cl:in-package niryo_robot_rpi-msg)


;//! \htmlinclude I2CComponent.msg.html

(cl:defclass <I2CComponent> (roslisp-msg-protocol:ros-message)
  ((bus
    :reader bus
    :initarg :bus
    :type cl:integer
    :initform 0)
   (address
    :reader address
    :initarg :address
    :type cl:integer
    :initform 0)
   (info
    :reader info
    :initarg :info
    :type cl:string
    :initform ""))
)

(cl:defclass I2CComponent (<I2CComponent>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <I2CComponent>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'I2CComponent)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_rpi-msg:<I2CComponent> is deprecated: use niryo_robot_rpi-msg:I2CComponent instead.")))

(cl:ensure-generic-function 'bus-val :lambda-list '(m))
(cl:defmethod bus-val ((m <I2CComponent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_rpi-msg:bus-val is deprecated.  Use niryo_robot_rpi-msg:bus instead.")
  (bus m))

(cl:ensure-generic-function 'address-val :lambda-list '(m))
(cl:defmethod address-val ((m <I2CComponent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_rpi-msg:address-val is deprecated.  Use niryo_robot_rpi-msg:address instead.")
  (address m))

(cl:ensure-generic-function 'info-val :lambda-list '(m))
(cl:defmethod info-val ((m <I2CComponent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_rpi-msg:info-val is deprecated.  Use niryo_robot_rpi-msg:info instead.")
  (info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <I2CComponent>) ostream)
  "Serializes a message object of type '<I2CComponent>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bus)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'bus)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'bus)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'bus)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'address)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'address)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'address)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'address)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <I2CComponent>) istream)
  "Deserializes a message object of type '<I2CComponent>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bus)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'bus)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'bus)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'bus)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'address)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'address)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'address)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'address)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'info) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'info) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<I2CComponent>)))
  "Returns string type for a message object of type '<I2CComponent>"
  "niryo_robot_rpi/I2CComponent")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'I2CComponent)))
  "Returns string type for a message object of type 'I2CComponent"
  "niryo_robot_rpi/I2CComponent")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<I2CComponent>)))
  "Returns md5sum for a message object of type '<I2CComponent>"
  "cca220cebb8afcd7e4bff9c7e8eb1631")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'I2CComponent)))
  "Returns md5sum for a message object of type 'I2CComponent"
  "cca220cebb8afcd7e4bff9c7e8eb1631")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<I2CComponent>)))
  "Returns full string definition for message of type '<I2CComponent>"
  (cl:format cl:nil "uint32 bus~%uint32 address~%string info~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'I2CComponent)))
  "Returns full string definition for message of type 'I2CComponent"
  (cl:format cl:nil "uint32 bus~%uint32 address~%string info~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <I2CComponent>))
  (cl:+ 0
     4
     4
     4 (cl:length (cl:slot-value msg 'info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <I2CComponent>))
  "Converts a ROS message object to a list"
  (cl:list 'I2CComponent
    (cl:cons ':bus (bus msg))
    (cl:cons ':address (address msg))
    (cl:cons ':info (info msg))
))
