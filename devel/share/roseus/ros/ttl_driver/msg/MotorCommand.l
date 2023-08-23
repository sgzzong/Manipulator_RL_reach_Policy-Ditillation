;; Auto-generated. Do not edit!


(when (boundp 'ttl_driver::MotorCommand)
  (if (not (find-package "TTL_DRIVER"))
    (make-package "TTL_DRIVER"))
  (shadow 'MotorCommand (find-package "TTL_DRIVER")))
(unless (find-package "TTL_DRIVER::MOTORCOMMAND")
  (make-package "TTL_DRIVER::MOTORCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude MotorCommand.msg.html


(intern "*CMD_TYPE_POSITION*" (find-package "TTL_DRIVER::MOTORCOMMAND"))
(shadow '*CMD_TYPE_POSITION* (find-package "TTL_DRIVER::MOTORCOMMAND"))
(defconstant ttl_driver::MotorCommand::*CMD_TYPE_POSITION* 1)
(intern "*CMD_TYPE_VELOCITY*" (find-package "TTL_DRIVER::MOTORCOMMAND"))
(shadow '*CMD_TYPE_VELOCITY* (find-package "TTL_DRIVER::MOTORCOMMAND"))
(defconstant ttl_driver::MotorCommand::*CMD_TYPE_VELOCITY* 2)
(intern "*CMD_TYPE_EFFORT*" (find-package "TTL_DRIVER::MOTORCOMMAND"))
(shadow '*CMD_TYPE_EFFORT* (find-package "TTL_DRIVER::MOTORCOMMAND"))
(defconstant ttl_driver::MotorCommand::*CMD_TYPE_EFFORT* 3)
(intern "*CMD_TYPE_TORQUE*" (find-package "TTL_DRIVER::MOTORCOMMAND"))
(shadow '*CMD_TYPE_TORQUE* (find-package "TTL_DRIVER::MOTORCOMMAND"))
(defconstant ttl_driver::MotorCommand::*CMD_TYPE_TORQUE* 4)

(defun ttl_driver::MotorCommand-to-symbol (const)
  (cond
        ((= const 1) 'ttl_driver::MotorCommand::*CMD_TYPE_POSITION*)
        ((= const 2) 'ttl_driver::MotorCommand::*CMD_TYPE_VELOCITY*)
        ((= const 3) 'ttl_driver::MotorCommand::*CMD_TYPE_EFFORT*)
        ((= const 4) 'ttl_driver::MotorCommand::*CMD_TYPE_TORQUE*)
        (t nil)))

(defclass ttl_driver::MotorCommand
  :super ros::object
  :slots (_cmd_type _motors_id _params ))

(defmethod ttl_driver::MotorCommand
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
    ;; uint32[] _params
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
     ;; uint32[] _params
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
   ;; uint32[] _params
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _params (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _params i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get ttl_driver::MotorCommand :md5sum-) "1fd0ce1ecaa67db6efa4b24d2606e47b")
(setf (get ttl_driver::MotorCommand :datatype-) "ttl_driver/MotorCommand")
(setf (get ttl_driver::MotorCommand :definition-)
      "uint8 cmd_type
uint8 CMD_TYPE_POSITION=1
uint8 CMD_TYPE_VELOCITY=2
uint8 CMD_TYPE_EFFORT=3
uint8 CMD_TYPE_TORQUE=4

uint8[] motors_id
uint32[] params
")



(provide :ttl_driver/MotorCommand "1fd0ce1ecaa67db6efa4b24d2606e47b")


