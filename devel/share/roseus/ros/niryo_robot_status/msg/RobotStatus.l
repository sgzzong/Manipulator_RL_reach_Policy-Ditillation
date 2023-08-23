;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_status::RobotStatus)
  (if (not (find-package "NIRYO_ROBOT_STATUS"))
    (make-package "NIRYO_ROBOT_STATUS"))
  (shadow 'RobotStatus (find-package "NIRYO_ROBOT_STATUS")))
(unless (find-package "NIRYO_ROBOT_STATUS::ROBOTSTATUS")
  (make-package "NIRYO_ROBOT_STATUS::ROBOTSTATUS"))

(in-package "ROS")
;;//! \htmlinclude RobotStatus.msg.html


(intern "*UPDATE*" (find-package "NIRYO_ROBOT_STATUS::ROBOTSTATUS"))
(shadow '*UPDATE* (find-package "NIRYO_ROBOT_STATUS::ROBOTSTATUS"))
(defconstant niryo_robot_status::RobotStatus::*UPDATE* -7)
(intern "*REBOOT*" (find-package "NIRYO_ROBOT_STATUS::ROBOTSTATUS"))
(shadow '*REBOOT* (find-package "NIRYO_ROBOT_STATUS::ROBOTSTATUS"))
(defconstant niryo_robot_status::RobotStatus::*REBOOT* -6)
(intern "*SHUTDOWN*" (find-package "NIRYO_ROBOT_STATUS::ROBOTSTATUS"))
(shadow '*SHUTDOWN* (find-package "NIRYO_ROBOT_STATUS::ROBOTSTATUS"))
(defconstant niryo_robot_status::RobotStatus::*SHUTDOWN* -5)
(intern "*FATAL_ERROR*" (find-package "NIRYO_ROBOT_STATUS::ROBOTSTATUS"))
(shadow '*FATAL_ERROR* (find-package "NIRYO_ROBOT_STATUS::ROBOTSTATUS"))
(defconstant niryo_robot_status::RobotStatus::*FATAL_ERROR* -4)
(intern "*MOTOR_ERROR*" (find-package "NIRYO_ROBOT_STATUS::ROBOTSTATUS"))
(shadow '*MOTOR_ERROR* (find-package "NIRYO_ROBOT_STATUS::ROBOTSTATUS"))
(defconstant niryo_robot_status::RobotStatus::*MOTOR_ERROR* -3)
(intern "*COLLISION*" (find-package "NIRYO_ROBOT_STATUS::ROBOTSTATUS"))
(shadow '*COLLISION* (find-package "NIRYO_ROBOT_STATUS::ROBOTSTATUS"))
(defconstant niryo_robot_status::RobotStatus::*COLLISION* -2)
(intern "*USER_PROGRAM_ERROR*" (find-package "NIRYO_ROBOT_STATUS::ROBOTSTATUS"))
(shadow '*USER_PROGRAM_ERROR* (find-package "NIRYO_ROBOT_STATUS::ROBOTSTATUS"))
(defconstant niryo_robot_status::RobotStatus::*USER_PROGRAM_ERROR* -1)
(intern "*UNKNOWN*" (find-package "NIRYO_ROBOT_STATUS::ROBOTSTATUS"))
(shadow '*UNKNOWN* (find-package "NIRYO_ROBOT_STATUS::ROBOTSTATUS"))
(defconstant niryo_robot_status::RobotStatus::*UNKNOWN* 0)
(intern "*BOOTING*" (find-package "NIRYO_ROBOT_STATUS::ROBOTSTATUS"))
(shadow '*BOOTING* (find-package "NIRYO_ROBOT_STATUS::ROBOTSTATUS"))
(defconstant niryo_robot_status::RobotStatus::*BOOTING* 1)
(intern "*REBOOT_MOTOR*" (find-package "NIRYO_ROBOT_STATUS::ROBOTSTATUS"))
(shadow '*REBOOT_MOTOR* (find-package "NIRYO_ROBOT_STATUS::ROBOTSTATUS"))
(defconstant niryo_robot_status::RobotStatus::*REBOOT_MOTOR* 2)
(intern "*CALIBRATION_NEEDED*" (find-package "NIRYO_ROBOT_STATUS::ROBOTSTATUS"))
(shadow '*CALIBRATION_NEEDED* (find-package "NIRYO_ROBOT_STATUS::ROBOTSTATUS"))
(defconstant niryo_robot_status::RobotStatus::*CALIBRATION_NEEDED* 3)
(intern "*CALIBRATION_IN_PROGRESS*" (find-package "NIRYO_ROBOT_STATUS::ROBOTSTATUS"))
(shadow '*CALIBRATION_IN_PROGRESS* (find-package "NIRYO_ROBOT_STATUS::ROBOTSTATUS"))
(defconstant niryo_robot_status::RobotStatus::*CALIBRATION_IN_PROGRESS* 4)
(intern "*LEARNING_MODE*" (find-package "NIRYO_ROBOT_STATUS::ROBOTSTATUS"))
(shadow '*LEARNING_MODE* (find-package "NIRYO_ROBOT_STATUS::ROBOTSTATUS"))
(defconstant niryo_robot_status::RobotStatus::*LEARNING_MODE* 5)
(intern "*STANDBY*" (find-package "NIRYO_ROBOT_STATUS::ROBOTSTATUS"))
(shadow '*STANDBY* (find-package "NIRYO_ROBOT_STATUS::ROBOTSTATUS"))
(defconstant niryo_robot_status::RobotStatus::*STANDBY* 6)
(intern "*MOVING*" (find-package "NIRYO_ROBOT_STATUS::ROBOTSTATUS"))
(shadow '*MOVING* (find-package "NIRYO_ROBOT_STATUS::ROBOTSTATUS"))
(defconstant niryo_robot_status::RobotStatus::*MOVING* 7)
(intern "*RUNNING_AUTONOMOUS*" (find-package "NIRYO_ROBOT_STATUS::ROBOTSTATUS"))
(shadow '*RUNNING_AUTONOMOUS* (find-package "NIRYO_ROBOT_STATUS::ROBOTSTATUS"))
(defconstant niryo_robot_status::RobotStatus::*RUNNING_AUTONOMOUS* 8)
(intern "*RUNNING_DEBUG*" (find-package "NIRYO_ROBOT_STATUS::ROBOTSTATUS"))
(shadow '*RUNNING_DEBUG* (find-package "NIRYO_ROBOT_STATUS::ROBOTSTATUS"))
(defconstant niryo_robot_status::RobotStatus::*RUNNING_DEBUG* 9)
(intern "*PAUSE*" (find-package "NIRYO_ROBOT_STATUS::ROBOTSTATUS"))
(shadow '*PAUSE* (find-package "NIRYO_ROBOT_STATUS::ROBOTSTATUS"))
(defconstant niryo_robot_status::RobotStatus::*PAUSE* 10)
(intern "*LEARNING_MODE_AUTONOMOUS*" (find-package "NIRYO_ROBOT_STATUS::ROBOTSTATUS"))
(shadow '*LEARNING_MODE_AUTONOMOUS* (find-package "NIRYO_ROBOT_STATUS::ROBOTSTATUS"))
(defconstant niryo_robot_status::RobotStatus::*LEARNING_MODE_AUTONOMOUS* 11)
(intern "*LEARNING_TRAJECTORY*" (find-package "NIRYO_ROBOT_STATUS::ROBOTSTATUS"))
(shadow '*LEARNING_TRAJECTORY* (find-package "NIRYO_ROBOT_STATUS::ROBOTSTATUS"))
(defconstant niryo_robot_status::RobotStatus::*LEARNING_TRAJECTORY* 12)
(intern "*REBOOT_MOTOR*" (find-package "NIRYO_ROBOT_STATUS::ROBOTSTATUS"))
(shadow '*REBOOT_MOTOR* (find-package "NIRYO_ROBOT_STATUS::ROBOTSTATUS"))
(defconstant niryo_robot_status::RobotStatus::*REBOOT_MOTOR* 13)
(intern "*FATAL*" (find-package "NIRYO_ROBOT_STATUS::ROBOTSTATUS"))
(shadow '*FATAL* (find-package "NIRYO_ROBOT_STATUS::ROBOTSTATUS"))
(defconstant niryo_robot_status::RobotStatus::*FATAL* -3)
(intern "*ERROR*" (find-package "NIRYO_ROBOT_STATUS::ROBOTSTATUS"))
(shadow '*ERROR* (find-package "NIRYO_ROBOT_STATUS::ROBOTSTATUS"))
(defconstant niryo_robot_status::RobotStatus::*ERROR* -2)
(intern "*WARN*" (find-package "NIRYO_ROBOT_STATUS::ROBOTSTATUS"))
(shadow '*WARN* (find-package "NIRYO_ROBOT_STATUS::ROBOTSTATUS"))
(defconstant niryo_robot_status::RobotStatus::*WARN* -1)
(intern "*NONE*" (find-package "NIRYO_ROBOT_STATUS::ROBOTSTATUS"))
(shadow '*NONE* (find-package "NIRYO_ROBOT_STATUS::ROBOTSTATUS"))
(defconstant niryo_robot_status::RobotStatus::*NONE* 0)

(defun niryo_robot_status::RobotStatus-to-symbol (const)
  (cond
        ((= const -7) 'niryo_robot_status::RobotStatus::*UPDATE*)
        ((= const -6) 'niryo_robot_status::RobotStatus::*REBOOT*)
        ((= const -5) 'niryo_robot_status::RobotStatus::*SHUTDOWN*)
        ((= const -4) 'niryo_robot_status::RobotStatus::*FATAL_ERROR*)
        ((= const -3) 'niryo_robot_status::RobotStatus::*MOTOR_ERROR*)
        ((= const -2) 'niryo_robot_status::RobotStatus::*COLLISION*)
        ((= const -1) 'niryo_robot_status::RobotStatus::*USER_PROGRAM_ERROR*)
        ((= const 0) 'niryo_robot_status::RobotStatus::*UNKNOWN*)
        ((= const 1) 'niryo_robot_status::RobotStatus::*BOOTING*)
        ((= const 2) 'niryo_robot_status::RobotStatus::*REBOOT_MOTOR*)
        ((= const 3) 'niryo_robot_status::RobotStatus::*CALIBRATION_NEEDED*)
        ((= const 4) 'niryo_robot_status::RobotStatus::*CALIBRATION_IN_PROGRESS*)
        ((= const 5) 'niryo_robot_status::RobotStatus::*LEARNING_MODE*)
        ((= const 6) 'niryo_robot_status::RobotStatus::*STANDBY*)
        ((= const 7) 'niryo_robot_status::RobotStatus::*MOVING*)
        ((= const 8) 'niryo_robot_status::RobotStatus::*RUNNING_AUTONOMOUS*)
        ((= const 9) 'niryo_robot_status::RobotStatus::*RUNNING_DEBUG*)
        ((= const 10) 'niryo_robot_status::RobotStatus::*PAUSE*)
        ((= const 11) 'niryo_robot_status::RobotStatus::*LEARNING_MODE_AUTONOMOUS*)
        ((= const 12) 'niryo_robot_status::RobotStatus::*LEARNING_TRAJECTORY*)
        ((= const 13) 'niryo_robot_status::RobotStatus::*REBOOT_MOTOR*)
        ((= const -3) 'niryo_robot_status::RobotStatus::*FATAL*)
        ((= const -2) 'niryo_robot_status::RobotStatus::*ERROR*)
        ((= const -1) 'niryo_robot_status::RobotStatus::*WARN*)
        ((= const 0) 'niryo_robot_status::RobotStatus::*NONE*)
        (t nil)))

(defclass niryo_robot_status::RobotStatus
  :super ros::object
  :slots (_robot_status _robot_status_str _robot_message _logs_status _logs_status_str _logs_message _out_of_bounds _rpi_overheating ))

(defmethod niryo_robot_status::RobotStatus
  (:init
   (&key
    ((:robot_status __robot_status) 0)
    ((:robot_status_str __robot_status_str) "")
    ((:robot_message __robot_message) "")
    ((:logs_status __logs_status) 0)
    ((:logs_status_str __logs_status_str) "")
    ((:logs_message __logs_message) "")
    ((:out_of_bounds __out_of_bounds) nil)
    ((:rpi_overheating __rpi_overheating) nil)
    )
   (send-super :init)
   (setq _robot_status (round __robot_status))
   (setq _robot_status_str (string __robot_status_str))
   (setq _robot_message (string __robot_message))
   (setq _logs_status (round __logs_status))
   (setq _logs_status_str (string __logs_status_str))
   (setq _logs_message (string __logs_message))
   (setq _out_of_bounds __out_of_bounds)
   (setq _rpi_overheating __rpi_overheating)
   self)
  (:robot_status
   (&optional __robot_status)
   (if __robot_status (setq _robot_status __robot_status)) _robot_status)
  (:robot_status_str
   (&optional __robot_status_str)
   (if __robot_status_str (setq _robot_status_str __robot_status_str)) _robot_status_str)
  (:robot_message
   (&optional __robot_message)
   (if __robot_message (setq _robot_message __robot_message)) _robot_message)
  (:logs_status
   (&optional __logs_status)
   (if __logs_status (setq _logs_status __logs_status)) _logs_status)
  (:logs_status_str
   (&optional __logs_status_str)
   (if __logs_status_str (setq _logs_status_str __logs_status_str)) _logs_status_str)
  (:logs_message
   (&optional __logs_message)
   (if __logs_message (setq _logs_message __logs_message)) _logs_message)
  (:out_of_bounds
   (&optional (__out_of_bounds :null))
   (if (not (eq __out_of_bounds :null)) (setq _out_of_bounds __out_of_bounds)) _out_of_bounds)
  (:rpi_overheating
   (&optional (__rpi_overheating :null))
   (if (not (eq __rpi_overheating :null)) (setq _rpi_overheating __rpi_overheating)) _rpi_overheating)
  (:serialization-length
   ()
   (+
    ;; int8 _robot_status
    1
    ;; string _robot_status_str
    4 (length _robot_status_str)
    ;; string _robot_message
    4 (length _robot_message)
    ;; int8 _logs_status
    1
    ;; string _logs_status_str
    4 (length _logs_status_str)
    ;; string _logs_message
    4 (length _logs_message)
    ;; bool _out_of_bounds
    1
    ;; bool _rpi_overheating
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _robot_status
       (write-byte _robot_status s)
     ;; string _robot_status_str
       (write-long (length _robot_status_str) s) (princ _robot_status_str s)
     ;; string _robot_message
       (write-long (length _robot_message) s) (princ _robot_message s)
     ;; int8 _logs_status
       (write-byte _logs_status s)
     ;; string _logs_status_str
       (write-long (length _logs_status_str) s) (princ _logs_status_str s)
     ;; string _logs_message
       (write-long (length _logs_message) s) (princ _logs_message s)
     ;; bool _out_of_bounds
       (if _out_of_bounds (write-byte -1 s) (write-byte 0 s))
     ;; bool _rpi_overheating
       (if _rpi_overheating (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _robot_status
     (setq _robot_status (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _robot_status 127) (setq _robot_status (- _robot_status 256)))
   ;; string _robot_status_str
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_status_str (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _robot_message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int8 _logs_status
     (setq _logs_status (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _logs_status 127) (setq _logs_status (- _logs_status 256)))
   ;; string _logs_status_str
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _logs_status_str (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _logs_message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _logs_message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _out_of_bounds
     (setq _out_of_bounds (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _rpi_overheating
     (setq _rpi_overheating (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get niryo_robot_status::RobotStatus :md5sum-) "348f86f9a8f05f5136ecc49809ffebf2")
(setf (get niryo_robot_status::RobotStatus :datatype-) "niryo_robot_status/RobotStatus")
(setf (get niryo_robot_status::RobotStatus :definition-)
      "int8 UPDATE=-7
int8 REBOOT=-6
int8 SHUTDOWN=-5
int8 FATAL_ERROR=-4     # Node crash
int8 MOTOR_ERROR=-3     # Electrical/overload or disconnected motor error
int8 COLLISION=-2
int8 USER_PROGRAM_ERROR=-1
int8 UNKNOWN=0
int8 BOOTING=1          # Robot is booting
int8 REBOOT_MOTOR=2
int8 CALIBRATION_NEEDED=3
int8 CALIBRATION_IN_PROGRESS=4
int8 LEARNING_MODE=5
int8 STANDBY=6          # Torque ON
int8 MOVING=7           # Moving with NiryoStudio interface or ros topics without user program
int8 RUNNING_AUTONOMOUS=8   # User program is running
int8 RUNNING_DEBUG=9    # Debug program is running
int8 PAUSE=10           # User program paused
int8 LEARNING_MODE_AUTONOMOUS=11    # User program is running + Learning mode activated
int8 LEARNING_TRAJECTORY = 12
int8 REBOOT_MOTOR=13

int8 robot_status
string robot_status_str
string robot_message

int8 FATAL=-3
int8 ERROR=-2
int8 WARN=-1
int8 NONE=0

int8 logs_status
string logs_status_str
string logs_message

bool out_of_bounds
bool rpi_overheating
")



(provide :niryo_robot_status/RobotStatus "348f86f9a8f05f5136ecc49809ffebf2")


