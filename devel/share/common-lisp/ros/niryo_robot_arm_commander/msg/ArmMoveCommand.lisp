; Auto-generated. Do not edit!


(cl:in-package niryo_robot_arm_commander-msg)


;//! \htmlinclude ArmMoveCommand.msg.html

(cl:defclass <ArmMoveCommand> (roslisp-msg-protocol:ros-message)
  ((cmd_type
    :reader cmd_type
    :initarg :cmd_type
    :type cl:integer
    :initform 0)
   (joints
    :reader joints
    :initarg :joints
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (rpy
    :reader rpy
    :initarg :rpy
    :type niryo_robot_msgs-msg:RPY
    :initform (cl:make-instance 'niryo_robot_msgs-msg:RPY))
   (orientation
    :reader orientation
    :initarg :orientation
    :type geometry_msgs-msg:Quaternion
    :initform (cl:make-instance 'geometry_msgs-msg:Quaternion))
   (shift
    :reader shift
    :initarg :shift
    :type niryo_robot_arm_commander-msg:ShiftPose
    :initform (cl:make-instance 'niryo_robot_arm_commander-msg:ShiftPose))
   (list_poses
    :reader list_poses
    :initarg :list_poses
    :type (cl:vector geometry_msgs-msg:Pose)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Pose :initial-element (cl:make-instance 'geometry_msgs-msg:Pose)))
   (dist_smoothing
    :reader dist_smoothing
    :initarg :dist_smoothing
    :type cl:float
    :initform 0.0)
   (trajectory
    :reader trajectory
    :initarg :trajectory
    :type trajectory_msgs-msg:JointTrajectory
    :initform (cl:make-instance 'trajectory_msgs-msg:JointTrajectory))
   (args
    :reader args
    :initarg :args
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass ArmMoveCommand (<ArmMoveCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArmMoveCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArmMoveCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name niryo_robot_arm_commander-msg:<ArmMoveCommand> is deprecated: use niryo_robot_arm_commander-msg:ArmMoveCommand instead.")))

(cl:ensure-generic-function 'cmd_type-val :lambda-list '(m))
(cl:defmethod cmd_type-val ((m <ArmMoveCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_arm_commander-msg:cmd_type-val is deprecated.  Use niryo_robot_arm_commander-msg:cmd_type instead.")
  (cmd_type m))

(cl:ensure-generic-function 'joints-val :lambda-list '(m))
(cl:defmethod joints-val ((m <ArmMoveCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_arm_commander-msg:joints-val is deprecated.  Use niryo_robot_arm_commander-msg:joints instead.")
  (joints m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <ArmMoveCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_arm_commander-msg:position-val is deprecated.  Use niryo_robot_arm_commander-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'rpy-val :lambda-list '(m))
(cl:defmethod rpy-val ((m <ArmMoveCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_arm_commander-msg:rpy-val is deprecated.  Use niryo_robot_arm_commander-msg:rpy instead.")
  (rpy m))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <ArmMoveCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_arm_commander-msg:orientation-val is deprecated.  Use niryo_robot_arm_commander-msg:orientation instead.")
  (orientation m))

(cl:ensure-generic-function 'shift-val :lambda-list '(m))
(cl:defmethod shift-val ((m <ArmMoveCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_arm_commander-msg:shift-val is deprecated.  Use niryo_robot_arm_commander-msg:shift instead.")
  (shift m))

(cl:ensure-generic-function 'list_poses-val :lambda-list '(m))
(cl:defmethod list_poses-val ((m <ArmMoveCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_arm_commander-msg:list_poses-val is deprecated.  Use niryo_robot_arm_commander-msg:list_poses instead.")
  (list_poses m))

(cl:ensure-generic-function 'dist_smoothing-val :lambda-list '(m))
(cl:defmethod dist_smoothing-val ((m <ArmMoveCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_arm_commander-msg:dist_smoothing-val is deprecated.  Use niryo_robot_arm_commander-msg:dist_smoothing instead.")
  (dist_smoothing m))

(cl:ensure-generic-function 'trajectory-val :lambda-list '(m))
(cl:defmethod trajectory-val ((m <ArmMoveCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_arm_commander-msg:trajectory-val is deprecated.  Use niryo_robot_arm_commander-msg:trajectory instead.")
  (trajectory m))

(cl:ensure-generic-function 'args-val :lambda-list '(m))
(cl:defmethod args-val ((m <ArmMoveCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader niryo_robot_arm_commander-msg:args-val is deprecated.  Use niryo_robot_arm_commander-msg:args instead.")
  (args m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ArmMoveCommand>)))
    "Constants for message type '<ArmMoveCommand>"
  '((:JOINTS . 0)
    (:POSE . 1)
    (:POSITION . 2)
    (:RPY . 3)
    (:POSE_QUAT . 4)
    (:LINEAR_POSE . 5)
    (:SHIFT_POSE . 6)
    (:SHIFT_LINEAR_POSE . 7)
    (:EXECUTE_TRAJ . 8)
    (:DRAW_SPIRAL . 9)
    (:DRAW_CIRCLE . 10)
    (:EXECUTE_FULL_TRAJ . 11)
    (:EXECUTE_RAW_TRAJ . 12))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ArmMoveCommand)))
    "Constants for message type 'ArmMoveCommand"
  '((:JOINTS . 0)
    (:POSE . 1)
    (:POSITION . 2)
    (:RPY . 3)
    (:POSE_QUAT . 4)
    (:LINEAR_POSE . 5)
    (:SHIFT_POSE . 6)
    (:SHIFT_LINEAR_POSE . 7)
    (:EXECUTE_TRAJ . 8)
    (:DRAW_SPIRAL . 9)
    (:DRAW_CIRCLE . 10)
    (:EXECUTE_FULL_TRAJ . 11)
    (:EXECUTE_RAW_TRAJ . 12))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArmMoveCommand>) ostream)
  "Serializes a message object of type '<ArmMoveCommand>"
  (cl:let* ((signed (cl:slot-value msg 'cmd_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'joints))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rpy) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'orientation) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'shift) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'list_poses))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'list_poses))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dist_smoothing))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'trajectory) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'args))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'args))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArmMoveCommand>) istream)
  "Deserializes a message object of type '<ArmMoveCommand>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cmd_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rpy) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'orientation) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'shift) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'list_poses) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'list_poses)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Pose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dist_smoothing) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'trajectory) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'args) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'args)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArmMoveCommand>)))
  "Returns string type for a message object of type '<ArmMoveCommand>"
  "niryo_robot_arm_commander/ArmMoveCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArmMoveCommand)))
  "Returns string type for a message object of type 'ArmMoveCommand"
  "niryo_robot_arm_commander/ArmMoveCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArmMoveCommand>)))
  "Returns md5sum for a message object of type '<ArmMoveCommand>"
  "63a3b03d75e1e8dce75aa338009e327c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArmMoveCommand)))
  "Returns md5sum for a message object of type 'ArmMoveCommand"
  "63a3b03d75e1e8dce75aa338009e327c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArmMoveCommand>)))
  "Returns full string definition for message of type '<ArmMoveCommand>"
  (cl:format cl:nil "int32 JOINTS = 0            # uses joints ~%int32 POSE = 1              # uses position and rpy ~%int32 POSITION = 2          # uses position~%int32 RPY = 3               # uses rpy~%int32 POSE_QUAT = 4         # uses position and orientation~%int32 LINEAR_POSE = 5       # uses position and rpy~%int32 SHIFT_POSE = 6        # uses shift~%int32 SHIFT_LINEAR_POSE = 7 # uses shift~%int32 EXECUTE_TRAJ = 8      # uses dist_smoothing, list_poses~%int32 DRAW_SPIRAL = 9~%int32 DRAW_CIRCLE = 10~%int32 EXECUTE_FULL_TRAJ = 11~%int32 EXECUTE_RAW_TRAJ = 12~%~%int32 cmd_type~%~%float64[] joints~%geometry_msgs/Point position~%niryo_robot_msgs/RPY rpy~%geometry_msgs/Quaternion orientation~%niryo_robot_arm_commander/ShiftPose shift~%~%geometry_msgs/Pose[] list_poses~%float32 dist_smoothing~%~%trajectory_msgs/JointTrajectory trajectory~%~%float64[] args~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: niryo_robot_msgs/RPY~%# roll, pitch and yaw~%~%float64 roll~%float64 pitch~%float64 yaw~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: niryo_robot_arm_commander/ShiftPose~%int32 axis_number~%float64 value~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectory~%Header header~%string[] joint_names~%JointTrajectoryPoint[] points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArmMoveCommand)))
  "Returns full string definition for message of type 'ArmMoveCommand"
  (cl:format cl:nil "int32 JOINTS = 0            # uses joints ~%int32 POSE = 1              # uses position and rpy ~%int32 POSITION = 2          # uses position~%int32 RPY = 3               # uses rpy~%int32 POSE_QUAT = 4         # uses position and orientation~%int32 LINEAR_POSE = 5       # uses position and rpy~%int32 SHIFT_POSE = 6        # uses shift~%int32 SHIFT_LINEAR_POSE = 7 # uses shift~%int32 EXECUTE_TRAJ = 8      # uses dist_smoothing, list_poses~%int32 DRAW_SPIRAL = 9~%int32 DRAW_CIRCLE = 10~%int32 EXECUTE_FULL_TRAJ = 11~%int32 EXECUTE_RAW_TRAJ = 12~%~%int32 cmd_type~%~%float64[] joints~%geometry_msgs/Point position~%niryo_robot_msgs/RPY rpy~%geometry_msgs/Quaternion orientation~%niryo_robot_arm_commander/ShiftPose shift~%~%geometry_msgs/Pose[] list_poses~%float32 dist_smoothing~%~%trajectory_msgs/JointTrajectory trajectory~%~%float64[] args~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: niryo_robot_msgs/RPY~%# roll, pitch and yaw~%~%float64 roll~%float64 pitch~%float64 yaw~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: niryo_robot_arm_commander/ShiftPose~%int32 axis_number~%float64 value~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectory~%Header header~%string[] joint_names~%JointTrajectoryPoint[] points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArmMoveCommand>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rpy))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'orientation))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'shift))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'list_poses) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'trajectory))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'args) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArmMoveCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'ArmMoveCommand
    (cl:cons ':cmd_type (cmd_type msg))
    (cl:cons ':joints (joints msg))
    (cl:cons ':position (position msg))
    (cl:cons ':rpy (rpy msg))
    (cl:cons ':orientation (orientation msg))
    (cl:cons ':shift (shift msg))
    (cl:cons ':list_poses (list_poses msg))
    (cl:cons ':dist_smoothing (dist_smoothing msg))
    (cl:cons ':trajectory (trajectory msg))
    (cl:cons ':args (args msg))
))
