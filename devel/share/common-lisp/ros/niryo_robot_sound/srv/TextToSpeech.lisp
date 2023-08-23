; Auto-generated. Do not edit!


(cl:in-package niryo_robot_sound-srv)


;//! \htmlinclude TextToSpeech-request.msg.html

(cl:defclass <TextToSpeech-request> (roslisp-msg-protocol:ros-message)
  ((text
    :reader text
    :initarg :text
    :type cl:string
    :initform "")
   (language
    :reader language
    :initarg :language
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TextToSpeech-request (<TextToSpeech-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TextToSpeech-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TextToSpeech-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_sound-srv:<TextToSpeech-request> is deprecated: use niryo_robot_sound-srv:TextToSpeech-request instead.")))

(cl:ensure-generic-function 'text-val :lambda-list '(m))
(cl:defmethod text-val ((m <TextToSpeech-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_sound-srv:text-val is deprecated.  Use niryo_robot_sound-srv:text instead.")
  (text m))

(cl:ensure-generic-function 'language-val :lambda-list '(m))
(cl:defmethod language-val ((m <TextToSpeech-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_sound-srv:language-val is deprecated.  Use niryo_robot_sound-srv:language instead.")
  (language m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TextToSpeech-request>)))
    "Constants for message type '<TextToSpeech-request>"
  '((:ENGLISH . 0)
    (:FRENCH . 1)
    (:SPANISH . 3)
    (:MANDARIN . 4)
    (:PORTUGUESE . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TextToSpeech-request)))
    "Constants for message type 'TextToSpeech-request"
  '((:ENGLISH . 0)
    (:FRENCH . 1)
    (:SPANISH . 3)
    (:MANDARIN . 4)
    (:PORTUGUESE . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TextToSpeech-request>) ostream)
  "Serializes a message object of type '<TextToSpeech-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'text))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'text))
  (cl:let* ((signed (cl:slot-value msg 'language)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TextToSpeech-request>) istream)
  "Deserializes a message object of type '<TextToSpeech-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'text) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'text) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'language) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TextToSpeech-request>)))
  "Returns string type for a service object of type '<TextToSpeech-request>"
  "niryo_robot_sound/TextToSpeechRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TextToSpeech-request)))
  "Returns string type for a service object of type 'TextToSpeech-request"
  "niryo_robot_sound/TextToSpeechRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TextToSpeech-request>)))
  "Returns md5sum for a message object of type '<TextToSpeech-request>"
  "6f3063fb67f0e8a5e02d9920b53fb537")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TextToSpeech-request)))
  "Returns md5sum for a message object of type 'TextToSpeech-request"
  "6f3063fb67f0e8a5e02d9920b53fb537")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TextToSpeech-request>)))
  "Returns full string definition for message of type '<TextToSpeech-request>"
  (cl:format cl:nil "string text # < 100 char~%~%~%int8 ENGLISH = 0~%int8 FRENCH = 1~%int8 SPANISH = 3~%int8 MANDARIN = 4~%int8 PORTUGUESE = 5~%~%int8 language~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TextToSpeech-request)))
  "Returns full string definition for message of type 'TextToSpeech-request"
  (cl:format cl:nil "string text # < 100 char~%~%~%int8 ENGLISH = 0~%int8 FRENCH = 1~%int8 SPANISH = 3~%int8 MANDARIN = 4~%int8 PORTUGUESE = 5~%~%int8 language~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TextToSpeech-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'text))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TextToSpeech-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TextToSpeech-request
    (cl:cons ':text (text msg))
    (cl:cons ':language (language msg))
))
;//! \htmlinclude TextToSpeech-response.msg.html

(cl:defclass <TextToSpeech-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass TextToSpeech-response (<TextToSpeech-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TextToSpeech-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TextToSpeech-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_sound-srv:<TextToSpeech-response> is deprecated: use niryo_robot_sound-srv:TextToSpeech-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <TextToSpeech-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_sound-srv:success-val is deprecated.  Use niryo_robot_sound-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <TextToSpeech-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_sound-srv:message-val is deprecated.  Use niryo_robot_sound-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TextToSpeech-response>) ostream)
  "Serializes a message object of type '<TextToSpeech-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TextToSpeech-response>) istream)
  "Deserializes a message object of type '<TextToSpeech-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TextToSpeech-response>)))
  "Returns string type for a service object of type '<TextToSpeech-response>"
  "niryo_robot_sound/TextToSpeechResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TextToSpeech-response)))
  "Returns string type for a service object of type 'TextToSpeech-response"
  "niryo_robot_sound/TextToSpeechResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TextToSpeech-response>)))
  "Returns md5sum for a message object of type '<TextToSpeech-response>"
  "6f3063fb67f0e8a5e02d9920b53fb537")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TextToSpeech-response)))
  "Returns md5sum for a message object of type 'TextToSpeech-response"
  "6f3063fb67f0e8a5e02d9920b53fb537")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TextToSpeech-response>)))
  "Returns full string definition for message of type '<TextToSpeech-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TextToSpeech-response)))
  "Returns full string definition for message of type 'TextToSpeech-response"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TextToSpeech-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TextToSpeech-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TextToSpeech-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TextToSpeech)))
  'TextToSpeech-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TextToSpeech)))
  'TextToSpeech-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TextToSpeech)))
  "Returns string type for a service object of type '<TextToSpeech>"
  "niryo_robot_sound/TextToSpeech")