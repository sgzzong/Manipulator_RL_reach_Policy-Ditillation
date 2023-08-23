;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_msgs::HardwareStatus)
  (if (not (find-package "NIRYO_ROBOT_MSGS"))
    (make-package "NIRYO_ROBOT_MSGS"))
  (shadow 'HardwareStatus (find-package "NIRYO_ROBOT_MSGS")))
(unless (find-package "NIRYO_ROBOT_MSGS::HARDWARESTATUS")
  (make-package "NIRYO_ROBOT_MSGS::HARDWARESTATUS"))

(in-package "ROS")
;;//! \htmlinclude HardwareStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*ERROR*" (find-package "NIRYO_ROBOT_MSGS::HARDWARESTATUS"))
(shadow '*ERROR* (find-package "NIRYO_ROBOT_MSGS::HARDWARESTATUS"))
(defconstant niryo_robot_msgs::HardwareStatus::*ERROR* -1)
(intern "*NORMAL*" (find-package "NIRYO_ROBOT_MSGS::HARDWARESTATUS"))
(shadow '*NORMAL* (find-package "NIRYO_ROBOT_MSGS::HARDWARESTATUS"))
(defconstant niryo_robot_msgs::HardwareStatus::*NORMAL* 0)
(intern "*DEBUG*" (find-package "NIRYO_ROBOT_MSGS::HARDWARESTATUS"))
(shadow '*DEBUG* (find-package "NIRYO_ROBOT_MSGS::HARDWARESTATUS"))
(defconstant niryo_robot_msgs::HardwareStatus::*DEBUG* 1)
(intern "*REBOOT*" (find-package "NIRYO_ROBOT_MSGS::HARDWARESTATUS"))
(shadow '*REBOOT* (find-package "NIRYO_ROBOT_MSGS::HARDWARESTATUS"))
(defconstant niryo_robot_msgs::HardwareStatus::*REBOOT* 2)

(defun niryo_robot_msgs::HardwareStatus-to-symbol (const)
  (cond
        ((= const -1) 'niryo_robot_msgs::HardwareStatus::*ERROR*)
        ((= const 0) 'niryo_robot_msgs::HardwareStatus::*NORMAL*)
        ((= const 1) 'niryo_robot_msgs::HardwareStatus::*DEBUG*)
        ((= const 2) 'niryo_robot_msgs::HardwareStatus::*REBOOT*)
        (t nil)))

(defclass niryo_robot_msgs::HardwareStatus
  :super ros::object
  :slots (_header _rpi_temperature _hardware_version _hardware_state _connection_up _error_message _calibration_needed _calibration_in_progress _motor_names _motor_types _temperatures _voltages _hardware_errors _hardware_errors_message ))

(defmethod niryo_robot_msgs::HardwareStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:rpi_temperature __rpi_temperature) 0)
    ((:hardware_version __hardware_version) "")
    ((:hardware_state __hardware_state) 0)
    ((:connection_up __connection_up) nil)
    ((:error_message __error_message) "")
    ((:calibration_needed __calibration_needed) nil)
    ((:calibration_in_progress __calibration_in_progress) nil)
    ((:motor_names __motor_names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:motor_types __motor_types) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:temperatures __temperatures) (make-array 0 :initial-element 0 :element-type :integer))
    ((:voltages __voltages) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:hardware_errors __hardware_errors) (make-array 0 :initial-element 0 :element-type :integer))
    ((:hardware_errors_message __hardware_errors_message) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _rpi_temperature (round __rpi_temperature))
   (setq _hardware_version (string __hardware_version))
   (setq _hardware_state (round __hardware_state))
   (setq _connection_up __connection_up)
   (setq _error_message (string __error_message))
   (setq _calibration_needed __calibration_needed)
   (setq _calibration_in_progress __calibration_in_progress)
   (setq _motor_names __motor_names)
   (setq _motor_types __motor_types)
   (setq _temperatures __temperatures)
   (setq _voltages __voltages)
   (setq _hardware_errors __hardware_errors)
   (setq _hardware_errors_message __hardware_errors_message)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:rpi_temperature
   (&optional __rpi_temperature)
   (if __rpi_temperature (setq _rpi_temperature __rpi_temperature)) _rpi_temperature)
  (:hardware_version
   (&optional __hardware_version)
   (if __hardware_version (setq _hardware_version __hardware_version)) _hardware_version)
  (:hardware_state
   (&optional __hardware_state)
   (if __hardware_state (setq _hardware_state __hardware_state)) _hardware_state)
  (:connection_up
   (&optional (__connection_up :null))
   (if (not (eq __connection_up :null)) (setq _connection_up __connection_up)) _connection_up)
  (:error_message
   (&optional __error_message)
   (if __error_message (setq _error_message __error_message)) _error_message)
  (:calibration_needed
   (&optional (__calibration_needed :null))
   (if (not (eq __calibration_needed :null)) (setq _calibration_needed __calibration_needed)) _calibration_needed)
  (:calibration_in_progress
   (&optional (__calibration_in_progress :null))
   (if (not (eq __calibration_in_progress :null)) (setq _calibration_in_progress __calibration_in_progress)) _calibration_in_progress)
  (:motor_names
   (&optional __motor_names)
   (if __motor_names (setq _motor_names __motor_names)) _motor_names)
  (:motor_types
   (&optional __motor_types)
   (if __motor_types (setq _motor_types __motor_types)) _motor_types)
  (:temperatures
   (&optional __temperatures)
   (if __temperatures (setq _temperatures __temperatures)) _temperatures)
  (:voltages
   (&optional __voltages)
   (if __voltages (setq _voltages __voltages)) _voltages)
  (:hardware_errors
   (&optional __hardware_errors)
   (if __hardware_errors (setq _hardware_errors __hardware_errors)) _hardware_errors)
  (:hardware_errors_message
   (&optional __hardware_errors_message)
   (if __hardware_errors_message (setq _hardware_errors_message __hardware_errors_message)) _hardware_errors_message)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _rpi_temperature
    4
    ;; string _hardware_version
    4 (length _hardware_version)
    ;; int8 _hardware_state
    1
    ;; bool _connection_up
    1
    ;; string _error_message
    4 (length _error_message)
    ;; bool _calibration_needed
    1
    ;; bool _calibration_in_progress
    1
    ;; string[] _motor_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _motor_names)) 4
    ;; string[] _motor_types
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _motor_types)) 4
    ;; int32[] _temperatures
    (* 4    (length _temperatures)) 4
    ;; float64[] _voltages
    (* 8    (length _voltages)) 4
    ;; int32[] _hardware_errors
    (* 4    (length _hardware_errors)) 4
    ;; string[] _hardware_errors_message
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _hardware_errors_message)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _rpi_temperature
       (write-long _rpi_temperature s)
     ;; string _hardware_version
       (write-long (length _hardware_version) s) (princ _hardware_version s)
     ;; int8 _hardware_state
       (write-byte _hardware_state s)
     ;; bool _connection_up
       (if _connection_up (write-byte -1 s) (write-byte 0 s))
     ;; string _error_message
       (write-long (length _error_message) s) (princ _error_message s)
     ;; bool _calibration_needed
       (if _calibration_needed (write-byte -1 s) (write-byte 0 s))
     ;; bool _calibration_in_progress
       (if _calibration_in_progress (write-byte -1 s) (write-byte 0 s))
     ;; string[] _motor_names
     (write-long (length _motor_names) s)
     (dolist (elem _motor_names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _motor_types
     (write-long (length _motor_types) s)
     (dolist (elem _motor_types)
       (write-long (length elem) s) (princ elem s)
       )
     ;; int32[] _temperatures
     (write-long (length _temperatures) s)
     (dotimes (i (length _temperatures))
       (write-long (elt _temperatures i) s)
       )
     ;; float64[] _voltages
     (write-long (length _voltages) s)
     (dotimes (i (length _voltages))
       (sys::poke (elt _voltages i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; int32[] _hardware_errors
     (write-long (length _hardware_errors) s)
     (dotimes (i (length _hardware_errors))
       (write-long (elt _hardware_errors i) s)
       )
     ;; string[] _hardware_errors_message
     (write-long (length _hardware_errors_message) s)
     (dolist (elem _hardware_errors_message)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _rpi_temperature
     (setq _rpi_temperature (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _hardware_version
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _hardware_version (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int8 _hardware_state
     (setq _hardware_state (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _hardware_state 127) (setq _hardware_state (- _hardware_state 256)))
   ;; bool _connection_up
     (setq _connection_up (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _error_message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _error_message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _calibration_needed
     (setq _calibration_needed (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _calibration_in_progress
     (setq _calibration_in_progress (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string[] _motor_names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motor_names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _motor_names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _motor_types
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motor_types (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _motor_types i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; int32[] _temperatures
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _temperatures (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _temperatures i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float64[] _voltages
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _voltages (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _voltages i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; int32[] _hardware_errors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _hardware_errors (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _hardware_errors i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; string[] _hardware_errors_message
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _hardware_errors_message (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _hardware_errors_message i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get niryo_robot_msgs::HardwareStatus :md5sum-) "9ebcaa8958a2bb480c482b67e9dd2b63")
(setf (get niryo_robot_msgs::HardwareStatus :datatype-) "niryo_robot_msgs/HardwareStatus")
(setf (get niryo_robot_msgs::HardwareStatus :definition-)
      "std_msgs/Header header

# Raspberry Pi board
int32 rpi_temperature

# Ned, One, ....
string hardware_version

# Hardware State
int8 ERROR = -1
int8 NORMAL = 0
int8 DEBUG = 1
int8 REBOOT = 2

int8 hardware_state

# Motors
bool connection_up
string error_message
bool calibration_needed
bool calibration_in_progress

string[] motor_names
string[] motor_types

int32[] temperatures
float64[] voltages
int32[] hardware_errors
string[] hardware_errors_message

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :niryo_robot_msgs/HardwareStatus "9ebcaa8958a2bb480c482b67e9dd2b63")


