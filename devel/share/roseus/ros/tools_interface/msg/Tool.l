;; Auto-generated. Do not edit!


(when (boundp 'tools_interface::Tool)
  (if (not (find-package "TOOLS_INTERFACE"))
    (make-package "TOOLS_INTERFACE"))
  (shadow 'Tool (find-package "TOOLS_INTERFACE")))
(unless (find-package "TOOLS_INTERFACE::TOOL")
  (make-package "TOOLS_INTERFACE::TOOL"))

(in-package "ROS")
;;//! \htmlinclude Tool.msg.html


(intern "*NO_MOTOR*" (find-package "TOOLS_INTERFACE::TOOL"))
(shadow '*NO_MOTOR* (find-package "TOOLS_INTERFACE::TOOL"))
(defconstant tools_interface::Tool::*NO_MOTOR* 0)
(intern "*STEPPER*" (find-package "TOOLS_INTERFACE::TOOL"))
(shadow '*STEPPER* (find-package "TOOLS_INTERFACE::TOOL"))
(defconstant tools_interface::Tool::*STEPPER* 1)
(intern "*XL430*" (find-package "TOOLS_INTERFACE::TOOL"))
(shadow '*XL430* (find-package "TOOLS_INTERFACE::TOOL"))
(defconstant tools_interface::Tool::*XL430* 2)
(intern "*XL320*" (find-package "TOOLS_INTERFACE::TOOL"))
(shadow '*XL320* (find-package "TOOLS_INTERFACE::TOOL"))
(defconstant tools_interface::Tool::*XL320* 3)
(intern "*XL330*" (find-package "TOOLS_INTERFACE::TOOL"))
(shadow '*XL330* (find-package "TOOLS_INTERFACE::TOOL"))
(defconstant tools_interface::Tool::*XL330* 4)
(intern "*XC430*" (find-package "TOOLS_INTERFACE::TOOL"))
(shadow '*XC430* (find-package "TOOLS_INTERFACE::TOOL"))
(defconstant tools_interface::Tool::*XC430* 5)
(intern "*XM430*" (find-package "TOOLS_INTERFACE::TOOL"))
(shadow '*XM430* (find-package "TOOLS_INTERFACE::TOOL"))
(defconstant tools_interface::Tool::*XM430* 6)
(intern "*FAKE_DXL_MOTOR*" (find-package "TOOLS_INTERFACE::TOOL"))
(shadow '*FAKE_DXL_MOTOR* (find-package "TOOLS_INTERFACE::TOOL"))
(defconstant tools_interface::Tool::*FAKE_DXL_MOTOR* 20)
(intern "*TOOL_STATE_PING_OK*" (find-package "TOOLS_INTERFACE::TOOL"))
(shadow '*TOOL_STATE_PING_OK* (find-package "TOOLS_INTERFACE::TOOL"))
(defconstant tools_interface::Tool::*TOOL_STATE_PING_OK* 1)
(intern "*TOOL_STATE_PING_ERROR*" (find-package "TOOLS_INTERFACE::TOOL"))
(shadow '*TOOL_STATE_PING_ERROR* (find-package "TOOLS_INTERFACE::TOOL"))
(defconstant tools_interface::Tool::*TOOL_STATE_PING_ERROR* 2)
(intern "*TOOL_STATE_WRONG_ID*" (find-package "TOOLS_INTERFACE::TOOL"))
(shadow '*TOOL_STATE_WRONG_ID* (find-package "TOOLS_INTERFACE::TOOL"))
(defconstant tools_interface::Tool::*TOOL_STATE_WRONG_ID* 3)
(intern "*TOOL_STATE_TIMEOUT*" (find-package "TOOLS_INTERFACE::TOOL"))
(shadow '*TOOL_STATE_TIMEOUT* (find-package "TOOLS_INTERFACE::TOOL"))
(defconstant tools_interface::Tool::*TOOL_STATE_TIMEOUT* 4)
(intern "*GRIPPER_STATE_OPEN*" (find-package "TOOLS_INTERFACE::TOOL"))
(shadow '*GRIPPER_STATE_OPEN* (find-package "TOOLS_INTERFACE::TOOL"))
(defconstant tools_interface::Tool::*GRIPPER_STATE_OPEN* 16)
(intern "*GRIPPER_STATE_CLOSE*" (find-package "TOOLS_INTERFACE::TOOL"))
(shadow '*GRIPPER_STATE_CLOSE* (find-package "TOOLS_INTERFACE::TOOL"))
(defconstant tools_interface::Tool::*GRIPPER_STATE_CLOSE* 17)
(intern "*VACUUM_PUMP_STATE_PULLED*" (find-package "TOOLS_INTERFACE::TOOL"))
(shadow '*VACUUM_PUMP_STATE_PULLED* (find-package "TOOLS_INTERFACE::TOOL"))
(defconstant tools_interface::Tool::*VACUUM_PUMP_STATE_PULLED* 32)
(intern "*VACUUM_PUMP_STATE_PUSHED*" (find-package "TOOLS_INTERFACE::TOOL"))
(shadow '*VACUUM_PUMP_STATE_PUSHED* (find-package "TOOLS_INTERFACE::TOOL"))
(defconstant tools_interface::Tool::*VACUUM_PUMP_STATE_PUSHED* 33)

(defun tools_interface::Tool-to-symbol (const)
  (cond
        ((= const 0) 'tools_interface::Tool::*NO_MOTOR*)
        ((= const 1) 'tools_interface::Tool::*STEPPER*)
        ((= const 2) 'tools_interface::Tool::*XL430*)
        ((= const 3) 'tools_interface::Tool::*XL320*)
        ((= const 4) 'tools_interface::Tool::*XL330*)
        ((= const 5) 'tools_interface::Tool::*XC430*)
        ((= const 6) 'tools_interface::Tool::*XM430*)
        ((= const 20) 'tools_interface::Tool::*FAKE_DXL_MOTOR*)
        ((= const 1) 'tools_interface::Tool::*TOOL_STATE_PING_OK*)
        ((= const 2) 'tools_interface::Tool::*TOOL_STATE_PING_ERROR*)
        ((= const 3) 'tools_interface::Tool::*TOOL_STATE_WRONG_ID*)
        ((= const 4) 'tools_interface::Tool::*TOOL_STATE_TIMEOUT*)
        ((= const 16) 'tools_interface::Tool::*GRIPPER_STATE_OPEN*)
        ((= const 17) 'tools_interface::Tool::*GRIPPER_STATE_CLOSE*)
        ((= const 32) 'tools_interface::Tool::*VACUUM_PUMP_STATE_PULLED*)
        ((= const 33) 'tools_interface::Tool::*VACUUM_PUMP_STATE_PUSHED*)
        (t nil)))

(defclass tools_interface::Tool
  :super ros::object
  :slots (_id _motor_type _position _state ))

(defmethod tools_interface::Tool
  (:init
   (&key
    ((:id __id) 0)
    ((:motor_type __motor_type) 0)
    ((:position __position) 0)
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _motor_type (round __motor_type))
   (setq _position (round __position))
   (setq _state (round __state))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:motor_type
   (&optional __motor_type)
   (if __motor_type (setq _motor_type __motor_type)) _motor_type)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; int8 _id
    1
    ;; int8 _motor_type
    1
    ;; int16 _position
    2
    ;; int8 _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _id
       (write-byte _id s)
     ;; int8 _motor_type
       (write-byte _motor_type s)
     ;; int16 _position
       (write-word _position s)
     ;; int8 _state
       (write-byte _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _id 127) (setq _id (- _id 256)))
   ;; int8 _motor_type
     (setq _motor_type (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _motor_type 127) (setq _motor_type (- _motor_type 256)))
   ;; int16 _position
     (setq _position (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _state 127) (setq _state (- _state 256)))
   ;;
   self)
  )

(setf (get tools_interface::Tool :md5sum-) "830c50232809d26b16dfe357c84d738a")
(setf (get tools_interface::Tool :datatype-) "tools_interface/Tool")
(setf (get tools_interface::Tool :definition-)
      "int8 id

int8 NO_MOTOR = 0
int8 STEPPER = 1
int8 XL430 = 2
int8 XL320 = 3
int8 XL330 = 4
int8 XC430 = 5
int8 XM430 = 6
int8 FAKE_DXL_MOTOR = 20

int8 motor_type

int16 position

int8 TOOL_STATE_PING_OK       = 1
int8 TOOL_STATE_PING_ERROR    = 2
int8 TOOL_STATE_WRONG_ID      = 3
int8 TOOL_STATE_TIMEOUT       = 4

int8 GRIPPER_STATE_OPEN       = 16
int8 GRIPPER_STATE_CLOSE      = 17

int8 VACUUM_PUMP_STATE_PULLED = 32
int8 VACUUM_PUMP_STATE_PUSHED = 33

int8 state

")



(provide :tools_interface/Tool "830c50232809d26b16dfe357c84d738a")


