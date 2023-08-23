;; Auto-generated. Do not edit!


(when (boundp 'can_driver::StepperCmd)
  (if (not (find-package "CAN_DRIVER"))
    (make-package "CAN_DRIVER"))
  (shadow 'StepperCmd (find-package "CAN_DRIVER")))
(unless (find-package "CAN_DRIVER::STEPPERCMD")
  (make-package "CAN_DRIVER::STEPPERCMD"))
(unless (find-package "CAN_DRIVER::STEPPERCMDREQUEST")
  (make-package "CAN_DRIVER::STEPPERCMDREQUEST"))
(unless (find-package "CAN_DRIVER::STEPPERCMDRESPONSE")
  (make-package "CAN_DRIVER::STEPPERCMDRESPONSE"))

(in-package "ROS")





(intern "*CMD_TYPE_SYNCHRONIZE*" (find-package "CAN_DRIVER::STEPPERCMDREQUEST"))
(shadow '*CMD_TYPE_SYNCHRONIZE* (find-package "CAN_DRIVER::STEPPERCMDREQUEST"))
(defconstant can_driver::StepperCmdRequest::*CMD_TYPE_SYNCHRONIZE* 5)
(intern "*CMD_TYPE_RELATIVE_MOVE*" (find-package "CAN_DRIVER::STEPPERCMDREQUEST"))
(shadow '*CMD_TYPE_RELATIVE_MOVE* (find-package "CAN_DRIVER::STEPPERCMDREQUEST"))
(defconstant can_driver::StepperCmdRequest::*CMD_TYPE_RELATIVE_MOVE* 6)
(intern "*CMD_TYPE_MAX_EFFORT*" (find-package "CAN_DRIVER::STEPPERCMDREQUEST"))
(shadow '*CMD_TYPE_MAX_EFFORT* (find-package "CAN_DRIVER::STEPPERCMDREQUEST"))
(defconstant can_driver::StepperCmdRequest::*CMD_TYPE_MAX_EFFORT* 7)
(intern "*CMD_TYPE_MICRO_STEPS*" (find-package "CAN_DRIVER::STEPPERCMDREQUEST"))
(shadow '*CMD_TYPE_MICRO_STEPS* (find-package "CAN_DRIVER::STEPPERCMDREQUEST"))
(defconstant can_driver::StepperCmdRequest::*CMD_TYPE_MICRO_STEPS* 8)
(intern "*CMD_TYPE_POSITION_OFFSET*" (find-package "CAN_DRIVER::STEPPERCMDREQUEST"))
(shadow '*CMD_TYPE_POSITION_OFFSET* (find-package "CAN_DRIVER::STEPPERCMDREQUEST"))
(defconstant can_driver::StepperCmdRequest::*CMD_TYPE_POSITION_OFFSET* 9)
(intern "*CMD_TYPE_CALIBRATION*" (find-package "CAN_DRIVER::STEPPERCMDREQUEST"))
(shadow '*CMD_TYPE_CALIBRATION* (find-package "CAN_DRIVER::STEPPERCMDREQUEST"))
(defconstant can_driver::StepperCmdRequest::*CMD_TYPE_CALIBRATION* 10)

(defun can_driver::StepperCmdRequest-to-symbol (const)
  (cond
        ((= const 5) 'can_driver::StepperCmdRequest::*CMD_TYPE_SYNCHRONIZE*)
        ((= const 6) 'can_driver::StepperCmdRequest::*CMD_TYPE_RELATIVE_MOVE*)
        ((= const 7) 'can_driver::StepperCmdRequest::*CMD_TYPE_MAX_EFFORT*)
        ((= const 8) 'can_driver::StepperCmdRequest::*CMD_TYPE_MICRO_STEPS*)
        ((= const 9) 'can_driver::StepperCmdRequest::*CMD_TYPE_POSITION_OFFSET*)
        ((= const 10) 'can_driver::StepperCmdRequest::*CMD_TYPE_CALIBRATION*)
        (t nil)))

(defclass can_driver::StepperCmdRequest
  :super ros::object
  :slots (_cmd_type _motors_id _params ))

(defmethod can_driver::StepperCmdRequest
  (:init
   (&key
    ((:cmd_type __cmd_type) 0)
    ((:motors_id __motors_id) (make-array 0 :initial-element 0 :element-type :char))
    ((:params __params) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _cmd_type (round __cmd_type))
   (setq _motors_id __motors_id)
   (setq _params __params)
   self)
  (:cmd_type
   (&optional __cmd_type)
   (if __cmd_type (setq _cmd_type __cmd_type)) _cmd_type)
  (:motors_id
   (&optional __motors_id)
   (if __motors_id (setq _motors_id __motors_id)) _motors_id)
  (:params
   (&optional __params)
   (if __params (setq _params __params)) _params)
  (:serialization-length
   ()
   (+
    ;; uint8 _cmd_type
    1
    ;; uint8[] _motors_id
    (* 1    (length _motors_id)) 4
    ;; int32[] _params
    (* 4    (length _params)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _cmd_type
       (write-byte _cmd_type s)
     ;; uint8[] _motors_id
     (write-long (length _motors_id) s)
     (princ _motors_id s)
     ;; int32[] _params
     (write-long (length _params) s)
     (dotimes (i (length _params))
       (write-long (elt _params i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _cmd_type
     (setq _cmd_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[] _motors_id
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _motors_id (make-array n :element-type :char))
     (replace _motors_id buf :start2 ptr-) (incf ptr- n))
   ;; int32[] _params
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _params (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _params i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass can_driver::StepperCmdResponse
  :super ros::object
  :slots (_result ))

(defmethod can_driver::StepperCmdResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional (__result :null))
   (if (not (eq __result :null)) (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass can_driver::StepperCmd
  :super ros::object
  :slots ())

(setf (get can_driver::StepperCmd :md5sum-) "ba19744f08da796611d9a0fb1a26974e")
(setf (get can_driver::StepperCmd :datatype-) "can_driver/StepperCmd")
(setf (get can_driver::StepperCmd :request) can_driver::StepperCmdRequest)
(setf (get can_driver::StepperCmd :response) can_driver::StepperCmdResponse)

(defmethod can_driver::StepperCmdRequest
  (:response () (instance can_driver::StepperCmdResponse :init)))

(setf (get can_driver::StepperCmdRequest :md5sum-) "ba19744f08da796611d9a0fb1a26974e")
(setf (get can_driver::StepperCmdRequest :datatype-) "can_driver/StepperCmdRequest")
(setf (get can_driver::StepperCmdRequest :definition-)
      "uint8 cmd_type
uint8 CMD_TYPE_SYNCHRONIZE=5
uint8 CMD_TYPE_RELATIVE_MOVE=6
uint8 CMD_TYPE_MAX_EFFORT=7
uint8 CMD_TYPE_MICRO_STEPS=8
uint8 CMD_TYPE_POSITION_OFFSET=9
uint8 CMD_TYPE_CALIBRATION=10

uint8[] motors_id
int32[] params
---
bool result
")

(setf (get can_driver::StepperCmdResponse :md5sum-) "ba19744f08da796611d9a0fb1a26974e")
(setf (get can_driver::StepperCmdResponse :datatype-) "can_driver/StepperCmdResponse")
(setf (get can_driver::StepperCmdResponse :definition-)
      "uint8 cmd_type
uint8 CMD_TYPE_SYNCHRONIZE=5
uint8 CMD_TYPE_RELATIVE_MOVE=6
uint8 CMD_TYPE_MAX_EFFORT=7
uint8 CMD_TYPE_MICRO_STEPS=8
uint8 CMD_TYPE_POSITION_OFFSET=9
uint8 CMD_TYPE_CALIBRATION=10

uint8[] motors_id
int32[] params
---
bool result
")



(provide :can_driver/StepperCmd "ba19744f08da796611d9a0fb1a26974e")


