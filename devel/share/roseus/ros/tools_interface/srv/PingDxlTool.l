;; Auto-generated. Do not edit!


(when (boundp 'tools_interface::PingDxlTool)
  (if (not (find-package "TOOLS_INTERFACE"))
    (make-package "TOOLS_INTERFACE"))
  (shadow 'PingDxlTool (find-package "TOOLS_INTERFACE")))
(unless (find-package "TOOLS_INTERFACE::PINGDXLTOOL")
  (make-package "TOOLS_INTERFACE::PINGDXLTOOL"))
(unless (find-package "TOOLS_INTERFACE::PINGDXLTOOLREQUEST")
  (make-package "TOOLS_INTERFACE::PINGDXLTOOLREQUEST"))
(unless (find-package "TOOLS_INTERFACE::PINGDXLTOOLRESPONSE")
  (make-package "TOOLS_INTERFACE::PINGDXLTOOLRESPONSE"))

(in-package "ROS")





(defclass tools_interface::PingDxlToolRequest
  :super ros::object
  :slots ())

(defmethod tools_interface::PingDxlToolRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass tools_interface::PingDxlToolResponse
  :super ros::object
  :slots (_state _tool ))

(defmethod tools_interface::PingDxlToolResponse
  (:init
   (&key
    ((:state __state) 0)
    ((:tool __tool) (instance tools_interface::Tool :init))
    )
   (send-super :init)
   (setq _state (round __state))
   (setq _tool __tool)
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:tool
   (&rest __tool)
   (if (keywordp (car __tool))
       (send* _tool __tool)
     (progn
       (if __tool (setq _tool (car __tool)))
       _tool)))
  (:serialization-length
   ()
   (+
    ;; int8 _state
    1
    ;; tools_interface/Tool _tool
    (send _tool :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _state
       (write-byte _state s)
     ;; tools_interface/Tool _tool
       (send _tool :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _state 127) (setq _state (- _state 256)))
   ;; tools_interface/Tool _tool
     (send _tool :deserialize buf ptr-) (incf ptr- (send _tool :serialization-length))
   ;;
   self)
  )

(defclass tools_interface::PingDxlTool
  :super ros::object
  :slots ())

(setf (get tools_interface::PingDxlTool :md5sum-) "79430720584434ee5ae66073bc65cdba")
(setf (get tools_interface::PingDxlTool :datatype-) "tools_interface/PingDxlTool")
(setf (get tools_interface::PingDxlTool :request) tools_interface::PingDxlToolRequest)
(setf (get tools_interface::PingDxlTool :response) tools_interface::PingDxlToolResponse)

(defmethod tools_interface::PingDxlToolRequest
  (:response () (instance tools_interface::PingDxlToolResponse :init)))

(setf (get tools_interface::PingDxlToolRequest :md5sum-) "79430720584434ee5ae66073bc65cdba")
(setf (get tools_interface::PingDxlToolRequest :datatype-) "tools_interface/PingDxlToolRequest")
(setf (get tools_interface::PingDxlToolRequest :definition-)
      "---
int8 state
tools_interface/Tool tool


================================================================================
MSG: tools_interface/Tool
int8 id

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

(setf (get tools_interface::PingDxlToolResponse :md5sum-) "79430720584434ee5ae66073bc65cdba")
(setf (get tools_interface::PingDxlToolResponse :datatype-) "tools_interface/PingDxlToolResponse")
(setf (get tools_interface::PingDxlToolResponse :definition-)
      "---
int8 state
tools_interface/Tool tool


================================================================================
MSG: tools_interface/Tool
int8 id

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



(provide :tools_interface/PingDxlTool "79430720584434ee5ae66073bc65cdba")


