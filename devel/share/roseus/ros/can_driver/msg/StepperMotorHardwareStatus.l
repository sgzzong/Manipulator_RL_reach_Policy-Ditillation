;; Auto-generated. Do not edit!


(when (boundp 'can_driver::StepperMotorHardwareStatus)
  (if (not (find-package "CAN_DRIVER"))
    (make-package "CAN_DRIVER"))
  (shadow 'StepperMotorHardwareStatus (find-package "CAN_DRIVER")))
(unless (find-package "CAN_DRIVER::STEPPERMOTORHARDWARESTATUS")
  (make-package "CAN_DRIVER::STEPPERMOTORHARDWARESTATUS"))

(in-package "ROS")
;;//! \htmlinclude StepperMotorHardwareStatus.msg.html
(if (not (find-package "NIRYO_ROBOT_MSGS"))
  (ros::roseus-add-msgs "niryo_robot_msgs"))


(defclass can_driver::StepperMotorHardwareStatus
  :super ros::object
  :slots (_motor_identity _firmware_version _temperature _voltage _error ))

(defmethod can_driver::StepperMotorHardwareStatus
  (:init
   (&key
    ((:motor_identity __motor_identity) (instance niryo_robot_msgs::MotorHeader :init))
    ((:firmware_version __firmware_version) "")
    ((:temperature __temperature) 0)
    ((:voltage __voltage) 0)
    ((:error __error) 0)
    )
   (send-super :init)
   (setq _motor_identity __motor_identity)
   (setq _firmware_version (string __firmware_version))
   (setq _temperature (round __temperature))
   (setq _voltage (round __voltage))
   (setq _error (round __error))
   self)
  (:motor_identity
   (&rest __motor_identity)
   (if (keywordp (car __motor_identity))
       (send* _motor_identity __motor_identity)
     (progn
       (if __motor_identity (setq _motor_identity (car __motor_identity)))
       _motor_identity)))
  (:firmware_version
   (&optional __firmware_version)
   (if __firmware_version (setq _firmware_version __firmware_version)) _firmware_version)
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:voltage
   (&optional __voltage)
   (if __voltage (setq _voltage __voltage)) _voltage)
  (:error
   (&optional __error)
   (if __error (setq _error __error)) _error)
  (:serialization-length
   ()
   (+
    ;; niryo_robot_msgs/MotorHeader _motor_identity
    (send _motor_identity :serialization-length)
    ;; string _firmware_version
    4 (length _firmware_version)
    ;; int32 _temperature
    4
    ;; int32 _voltage
    4
    ;; int32 _error
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; niryo_robot_msgs/MotorHeader _motor_identity
       (send _motor_identity :serialize s)
     ;; string _firmware_version
       (write-long (length _firmware_version) s) (princ _firmware_version s)
     ;; int32 _temperature
       (write-long _temperature s)
     ;; int32 _voltage
       (write-long _voltage s)
     ;; int32 _error
       (write-long _error s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; niryo_robot_msgs/MotorHeader _motor_identity
     (send _motor_identity :deserialize buf ptr-) (incf ptr- (send _motor_identity :serialization-length))
   ;; string _firmware_version
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _firmware_version (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _temperature
     (setq _temperature (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _voltage
     (setq _voltage (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _error
     (setq _error (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get can_driver::StepperMotorHardwareStatus :md5sum-) "dc9f2f633cce4d29f5db57dd384bcf57")
(setf (get can_driver::StepperMotorHardwareStatus :datatype-) "can_driver/StepperMotorHardwareStatus")
(setf (get can_driver::StepperMotorHardwareStatus :definition-)
      "niryo_robot_msgs/MotorHeader motor_identity

string firmware_version
int32 temperature
int32 voltage
int32 error

================================================================================
MSG: niryo_robot_msgs/MotorHeader
uint8 motor_id

uint8 motor_type
uint8 MOTOR_TYPE_STEPPER=1
uint8 MOTOR_TYPE_XL430=2
uint8 MOTOR_TYPE_XL320=3
uint8 MOTOR_TYPE_XL330=4
uint8 MOROR_TYPE_XC430=5
uint8 MOTOR_TYPE_END_EFFECTOR=10


")



(provide :can_driver/StepperMotorHardwareStatus "dc9f2f633cce4d29f5db57dd384bcf57")


