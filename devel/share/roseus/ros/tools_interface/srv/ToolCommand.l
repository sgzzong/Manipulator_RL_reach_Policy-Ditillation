;; Auto-generated. Do not edit!


(when (boundp 'tools_interface::ToolCommand)
  (if (not (find-package "TOOLS_INTERFACE"))
    (make-package "TOOLS_INTERFACE"))
  (shadow 'ToolCommand (find-package "TOOLS_INTERFACE")))
(unless (find-package "TOOLS_INTERFACE::TOOLCOMMAND")
  (make-package "TOOLS_INTERFACE::TOOLCOMMAND"))
(unless (find-package "TOOLS_INTERFACE::TOOLCOMMANDREQUEST")
  (make-package "TOOLS_INTERFACE::TOOLCOMMANDREQUEST"))
(unless (find-package "TOOLS_INTERFACE::TOOLCOMMANDRESPONSE")
  (make-package "TOOLS_INTERFACE::TOOLCOMMANDRESPONSE"))

(in-package "ROS")





(defclass tools_interface::ToolCommandRequest
  :super ros::object
  :slots (_id _position _speed _hold_torque _max_torque ))

(defmethod tools_interface::ToolCommandRequest
  (:init
   (&key
    ((:id __id) 0)
    ((:position __position) 0)
    ((:speed __speed) 0)
    ((:hold_torque __hold_torque) 0)
    ((:max_torque __max_torque) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _position (round __position))
   (setq _speed (round __speed))
   (setq _hold_torque (round __hold_torque))
   (setq _max_torque (round __max_torque))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:hold_torque
   (&optional __hold_torque)
   (if __hold_torque (setq _hold_torque __hold_torque)) _hold_torque)
  (:max_torque
   (&optional __max_torque)
   (if __max_torque (setq _max_torque __max_torque)) _max_torque)
  (:serialization-length
   ()
   (+
    ;; uint8 _id
    1
    ;; uint16 _position
    2
    ;; uint16 _speed
    2
    ;; int16 _hold_torque
    2
    ;; int16 _max_torque
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id
       (write-byte _id s)
     ;; uint16 _position
       (write-word _position s)
     ;; uint16 _speed
       (write-word _speed s)
     ;; int16 _hold_torque
       (write-word _hold_torque s)
     ;; int16 _max_torque
       (write-word _max_torque s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _position
     (setq _position (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _speed
     (setq _speed (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _hold_torque
     (setq _hold_torque (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _max_torque
     (setq _max_torque (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass tools_interface::ToolCommandResponse
  :super ros::object
  :slots (_state ))

(defmethod tools_interface::ToolCommandResponse
  (:init
   (&key
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _state (round __state))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; uint8 _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _state
       (write-byte _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass tools_interface::ToolCommand
  :super ros::object
  :slots ())

(setf (get tools_interface::ToolCommand :md5sum-) "470ae100e520424cd89af3569b932d47")
(setf (get tools_interface::ToolCommand :datatype-) "tools_interface/ToolCommand")
(setf (get tools_interface::ToolCommand :request) tools_interface::ToolCommandRequest)
(setf (get tools_interface::ToolCommand :response) tools_interface::ToolCommandResponse)

(defmethod tools_interface::ToolCommandRequest
  (:response () (instance tools_interface::ToolCommandResponse :init)))

(setf (get tools_interface::ToolCommandRequest :md5sum-) "470ae100e520424cd89af3569b932d47")
(setf (get tools_interface::ToolCommandRequest :datatype-) "tools_interface/ToolCommandRequest")
(setf (get tools_interface::ToolCommandRequest :definition-)
      "uint8 id

uint16 position
uint16 speed
int16 hold_torque
int16 max_torque
---
uint8 state

")

(setf (get tools_interface::ToolCommandResponse :md5sum-) "470ae100e520424cd89af3569b932d47")
(setf (get tools_interface::ToolCommandResponse :datatype-) "tools_interface/ToolCommandResponse")
(setf (get tools_interface::ToolCommandResponse :definition-)
      "uint8 id

uint16 position
uint16 speed
int16 hold_torque
int16 max_torque
---
uint8 state

")



(provide :tools_interface/ToolCommand "470ae100e520424cd89af3569b932d47")


