;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_tools_commander::ToolCommand)
  (if (not (find-package "NIRYO_ROBOT_TOOLS_COMMANDER"))
    (make-package "NIRYO_ROBOT_TOOLS_COMMANDER"))
  (shadow 'ToolCommand (find-package "NIRYO_ROBOT_TOOLS_COMMANDER")))
(unless (find-package "NIRYO_ROBOT_TOOLS_COMMANDER::TOOLCOMMAND")
  (make-package "NIRYO_ROBOT_TOOLS_COMMANDER::TOOLCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude ToolCommand.msg.html


(intern "*OPEN_GRIPPER*" (find-package "NIRYO_ROBOT_TOOLS_COMMANDER::TOOLCOMMAND"))
(shadow '*OPEN_GRIPPER* (find-package "NIRYO_ROBOT_TOOLS_COMMANDER::TOOLCOMMAND"))
(defconstant niryo_robot_tools_commander::ToolCommand::*OPEN_GRIPPER* 1)
(intern "*CLOSE_GRIPPER*" (find-package "NIRYO_ROBOT_TOOLS_COMMANDER::TOOLCOMMAND"))
(shadow '*CLOSE_GRIPPER* (find-package "NIRYO_ROBOT_TOOLS_COMMANDER::TOOLCOMMAND"))
(defconstant niryo_robot_tools_commander::ToolCommand::*CLOSE_GRIPPER* 2)
(intern "*PULL_AIR_VACUUM_PUMP*" (find-package "NIRYO_ROBOT_TOOLS_COMMANDER::TOOLCOMMAND"))
(shadow '*PULL_AIR_VACUUM_PUMP* (find-package "NIRYO_ROBOT_TOOLS_COMMANDER::TOOLCOMMAND"))
(defconstant niryo_robot_tools_commander::ToolCommand::*PULL_AIR_VACUUM_PUMP* 10)
(intern "*PUSH_AIR_VACUUM_PUMP*" (find-package "NIRYO_ROBOT_TOOLS_COMMANDER::TOOLCOMMAND"))
(shadow '*PUSH_AIR_VACUUM_PUMP* (find-package "NIRYO_ROBOT_TOOLS_COMMANDER::TOOLCOMMAND"))
(defconstant niryo_robot_tools_commander::ToolCommand::*PUSH_AIR_VACUUM_PUMP* 11)
(intern "*SETUP_DIGITAL_IO*" (find-package "NIRYO_ROBOT_TOOLS_COMMANDER::TOOLCOMMAND"))
(shadow '*SETUP_DIGITAL_IO* (find-package "NIRYO_ROBOT_TOOLS_COMMANDER::TOOLCOMMAND"))
(defconstant niryo_robot_tools_commander::ToolCommand::*SETUP_DIGITAL_IO* 20)
(intern "*ACTIVATE_DIGITAL_IO*" (find-package "NIRYO_ROBOT_TOOLS_COMMANDER::TOOLCOMMAND"))
(shadow '*ACTIVATE_DIGITAL_IO* (find-package "NIRYO_ROBOT_TOOLS_COMMANDER::TOOLCOMMAND"))
(defconstant niryo_robot_tools_commander::ToolCommand::*ACTIVATE_DIGITAL_IO* 21)
(intern "*DEACTIVATE_DIGITAL_IO*" (find-package "NIRYO_ROBOT_TOOLS_COMMANDER::TOOLCOMMAND"))
(shadow '*DEACTIVATE_DIGITAL_IO* (find-package "NIRYO_ROBOT_TOOLS_COMMANDER::TOOLCOMMAND"))
(defconstant niryo_robot_tools_commander::ToolCommand::*DEACTIVATE_DIGITAL_IO* 22)

(defun niryo_robot_tools_commander::ToolCommand-to-symbol (const)
  (cond
        ((= const 1) 'niryo_robot_tools_commander::ToolCommand::*OPEN_GRIPPER*)
        ((= const 2) 'niryo_robot_tools_commander::ToolCommand::*CLOSE_GRIPPER*)
        ((= const 10) 'niryo_robot_tools_commander::ToolCommand::*PULL_AIR_VACUUM_PUMP*)
        ((= const 11) 'niryo_robot_tools_commander::ToolCommand::*PUSH_AIR_VACUUM_PUMP*)
        ((= const 20) 'niryo_robot_tools_commander::ToolCommand::*SETUP_DIGITAL_IO*)
        ((= const 21) 'niryo_robot_tools_commander::ToolCommand::*ACTIVATE_DIGITAL_IO*)
        ((= const 22) 'niryo_robot_tools_commander::ToolCommand::*DEACTIVATE_DIGITAL_IO*)
        (t nil)))

(defclass niryo_robot_tools_commander::ToolCommand
  :super ros::object
  :slots (_cmd_type _tool_id _speed _max_torque_percentage _hold_torque_percentage _activate _gpio ))

(defmethod niryo_robot_tools_commander::ToolCommand
  (:init
   (&key
    ((:cmd_type __cmd_type) 0)
    ((:tool_id __tool_id) 0)
    ((:speed __speed) 0)
    ((:max_torque_percentage __max_torque_percentage) 0)
    ((:hold_torque_percentage __hold_torque_percentage) 0)
    ((:activate __activate) nil)
    ((:gpio __gpio) "")
    )
   (send-super :init)
   (setq _cmd_type (round __cmd_type))
   (setq _tool_id (round __tool_id))
   (setq _speed (round __speed))
   (setq _max_torque_percentage (round __max_torque_percentage))
   (setq _hold_torque_percentage (round __hold_torque_percentage))
   (setq _activate __activate)
   (setq _gpio (string __gpio))
   self)
  (:cmd_type
   (&optional __cmd_type)
   (if __cmd_type (setq _cmd_type __cmd_type)) _cmd_type)
  (:tool_id
   (&optional __tool_id)
   (if __tool_id (setq _tool_id __tool_id)) _tool_id)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:max_torque_percentage
   (&optional __max_torque_percentage)
   (if __max_torque_percentage (setq _max_torque_percentage __max_torque_percentage)) _max_torque_percentage)
  (:hold_torque_percentage
   (&optional __hold_torque_percentage)
   (if __hold_torque_percentage (setq _hold_torque_percentage __hold_torque_percentage)) _hold_torque_percentage)
  (:activate
   (&optional (__activate :null))
   (if (not (eq __activate :null)) (setq _activate __activate)) _activate)
  (:gpio
   (&optional __gpio)
   (if __gpio (setq _gpio __gpio)) _gpio)
  (:serialization-length
   ()
   (+
    ;; uint8 _cmd_type
    1
    ;; int8 _tool_id
    1
    ;; uint16 _speed
    2
    ;; uint8 _max_torque_percentage
    1
    ;; uint8 _hold_torque_percentage
    1
    ;; bool _activate
    1
    ;; string _gpio
    4 (length _gpio)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _cmd_type
       (write-byte _cmd_type s)
     ;; int8 _tool_id
       (write-byte _tool_id s)
     ;; uint16 _speed
       (write-word _speed s)
     ;; uint8 _max_torque_percentage
       (write-byte _max_torque_percentage s)
     ;; uint8 _hold_torque_percentage
       (write-byte _hold_torque_percentage s)
     ;; bool _activate
       (if _activate (write-byte -1 s) (write-byte 0 s))
     ;; string _gpio
       (write-long (length _gpio) s) (princ _gpio s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _cmd_type
     (setq _cmd_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int8 _tool_id
     (setq _tool_id (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _tool_id 127) (setq _tool_id (- _tool_id 256)))
   ;; uint16 _speed
     (setq _speed (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _max_torque_percentage
     (setq _max_torque_percentage (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _hold_torque_percentage
     (setq _hold_torque_percentage (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _activate
     (setq _activate (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _gpio
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _gpio (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get niryo_robot_tools_commander::ToolCommand :md5sum-) "e9d67503aca2a9d01b00faeb26e2fad7")
(setf (get niryo_robot_tools_commander::ToolCommand :datatype-) "niryo_robot_tools_commander/ToolCommand")
(setf (get niryo_robot_tools_commander::ToolCommand :definition-)
      "# Gripper
int8 OPEN_GRIPPER = 1
int8 CLOSE_GRIPPER = 2

# Vacuump pump
int8 PULL_AIR_VACUUM_PUMP = 10
int8 PUSH_AIR_VACUUM_PUMP = 11

# Tools controlled by digital I/Os
int8 SETUP_DIGITAL_IO = 20
int8 ACTIVATE_DIGITAL_IO = 21
int8 DEACTIVATE_DIGITAL_IO = 22

uint8 cmd_type

# Gripper1= 11, Gripper2=12, Gripper3=13, VaccuumPump=31, Electromagnet=30
int8 tool_id

# if gripper Ned1/One
uint16 speed

# if gripper Ned2
uint8 max_torque_percentage
uint8 hold_torque_percentage

# if vacuum pump or electromagnet grove
bool activate

# if tool is set by digital outputs (electromagnet)
string gpio

")



(provide :niryo_robot_tools_commander/ToolCommand "e9d67503aca2a9d01b00faeb26e2fad7")


