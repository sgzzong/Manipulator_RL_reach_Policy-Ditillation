; Auto-generated. Do not edit!


(cl:in-package end_effector_interface-srv)


;//! \htmlinclude SetEEDigitalOut-request.msg.html

(cl:defclass <SetEEDigitalOut-request> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetEEDigitalOut-request (<SetEEDigitalOut-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetEEDigitalOut-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetEEDigitalOut-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name end_effector_interface-srv:<SetEEDigitalOut-request> is deprecated: use end_effector_interface-srv:SetEEDigitalOut-request instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <SetEEDigitalOut-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader end_effector_interface-srv:data-val is deprecated.  Use end_effector_interface-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetEEDigitalOut-request>) ostream)
  "Serializes a message object of type '<SetEEDigitalOut-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'data) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetEEDigitalOut-request>) istream)
  "Deserializes a message object of type '<SetEEDigitalOut-request>"
    (cl:setf (cl:slot-value msg 'data) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetEEDigitalOut-request>)))
  "Returns string type for a service object of type '<SetEEDigitalOut-request>"
  "end_effector_interface/SetEEDigitalOutRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetEEDigitalOut-request)))
  "Returns string type for a service object of type 'SetEEDigitalOut-request"
  "end_effector_interface/SetEEDigitalOutRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetEEDigitalOut-request>)))
  "Returns md5sum for a message object of type '<SetEEDigitalOut-request>"
  "33ab7459542983349e0a81fbf65f814c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetEEDigitalOut-request)))
  "Returns md5sum for a message object of type 'SetEEDigitalOut-request"
  "33ab7459542983349e0a81fbf65f814c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetEEDigitalOut-request>)))
  "Returns full string definition for message of type '<SetEEDigitalOut-request>"
  (cl:format cl:nil "bool data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetEEDigitalOut-request)))
  "Returns full string definition for message of type 'SetEEDigitalOut-request"
  (cl:format cl:nil "bool data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetEEDigitalOut-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetEEDigitalOut-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetEEDigitalOut-request
    (cl:cons ':data (data msg))
))
;//! \htmlinclude SetEEDigitalOut-response.msg.html

(cl:defclass <SetEEDigitalOut-response> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetEEDigitalOut-response (<SetEEDigitalOut-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetEEDigitalOut-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetEEDigitalOut-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name end_effector_interface-srv:<SetEEDigitalOut-response> is deprecated: use end_effector_interface-srv:SetEEDigitalOut-response instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <SetEEDigitalOut-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader end_effector_interface-srv:state-val is deprecated.  Use end_effector_interface-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetEEDigitalOut-response>) ostream)
  "Serializes a message object of type '<SetEEDigitalOut-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'state) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetEEDigitalOut-response>) istream)
  "Deserializes a message object of type '<SetEEDigitalOut-response>"
    (cl:setf (cl:slot-value msg 'state) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetEEDigitalOut-response>)))
  "Returns string type for a service object of type '<SetEEDigitalOut-response>"
  "end_effector_interface/SetEEDigitalOutResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetEEDigitalOut-response)))
  "Returns string type for a service object of type 'SetEEDigitalOut-response"
  "end_effector_interface/SetEEDigitalOutResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetEEDigitalOut-response>)))
  "Returns md5sum for a message object of type '<SetEEDigitalOut-response>"
  "33ab7459542983349e0a81fbf65f814c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetEEDigitalOut-response)))
  "Returns md5sum for a message object of type 'SetEEDigitalOut-response"
  "33ab7459542983349e0a81fbf65f814c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetEEDigitalOut-response>)))
  "Returns full string definition for message of type '<SetEEDigitalOut-response>"
  (cl:format cl:nil "bool state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetEEDigitalOut-response)))
  "Returns full string definition for message of type 'SetEEDigitalOut-response"
  (cl:format cl:nil "bool state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetEEDigitalOut-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetEEDigitalOut-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetEEDigitalOut-response
    (cl:cons ':state (state msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetEEDigitalOut)))
  'SetEEDigitalOut-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetEEDigitalOut)))
  'SetEEDigitalOut-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetEEDigitalOut)))
  "Returns string type for a service object of type '<SetEEDigitalOut>"
  "end_effector_interface/SetEEDigitalOut")