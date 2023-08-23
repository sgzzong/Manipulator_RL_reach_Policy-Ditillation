;; Auto-generated. Do not edit!


(when (boundp 'ttl_driver::MotorHardwareStatus)
  (if (not (find-package "TTL_DRIVER"))
    (make-package "TTL_DRIVER"))
  (shadow 'MotorHardwareStatus (find-package "TTL_DRIVER")))
(unless (find-package "TTL_DRIVER::MOTORHARDWARESTATUS")
  (make-package "TTL_DRIVER::MOTORHARDWARESTATUS"))

(in-package "ROS")
;;//! \htmlinclude MotorHardwareStatus.msg.html
(if (not (find-package "NIRYO_ROBOT_MSGS"))
  (ros::roseus-add-msgs "niryo_robot_msgs"))


(defclass ttl_driver::MotorHardwareStatus
  :super ros::object
  :slots (_motor_identity _firmware_version _temperature _voltage _error _error_msg ))

(defmethod ttl_driver::MotorHardwareStatus
  (:init
   (&key
    ((:motor_identity __motor_identity) (instance niryo_robot_msgs::MotorHeader :init))
    ((:firmware_version __firmware_version) "")
    ((:temperature __temperature) 0)
    ((:voltage __voltage) 0.0)
    ((:error __error) 0)
    ((:error_msg __error_msg) "")
    )
   (send-super :init)
   (setq _motor_identity __motor_identity)
   (setq _firmware_version (string __firmware_version))
   (setq _temperature (round __temperature))
   (setq _voltage (float __voltage))
   (setq _error (round __error))
   (setq _error_msg (string __error_msg))
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
  (:error_msg
   (&optional __error_msg)
   (if __error_msg (setq _error_msg __error_msg)) _error_msg)
  (:serialization-length
   ()
   (+
    ;; niryo_robot_msgs/MotorHeader _motor_identity
    (send _motor_identity :serialization-length)
    ;; string _firmware_version
    4 (length _firmware_version)
    ;; uint32 _temperature
    4
    ;; float64 _voltage
    8
    ;; uint32 _error
    4
    ;; string _error_msg
    4 (length _error_msg)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; niryo_robot_msgs/MotorHeader _motor_identity
       (send _motor_identity :serialize s)
     ;; string _firmware_version
       (write-long (length _firmware_version) s) (princ _firmware_version s)
     ;; uint32 _temperature
       (write-long _temperature s)
     ;; float64 _voltage
       (sys::poke _voltage (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint32 _error
       (write-long _error s)
     ;; string _error_msg
       (write-long (length _error_msg) s) (princ _error_msg s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; niryo_robot_msgs/MotorHeader _motor_identity
     (send _motor_identity :deserialize buf ptr-) (incf ptr- (send _motor_identity :serialization-length))
   ;; string _firmware_version
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _firmware_version (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _temperature
     (setq _temperature (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _voltage
     (setq _voltage (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint32 _error
     (setq _error (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _error_msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _error_msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get ttl_driver::MotorHardwareStatus :md5sum-) "d38a5d35efbee481425ca6e864f50fce")
(setf (get ttl_driver::MotorHardwareStatus :datatype-) "ttl_driver/MotorHardwareStatus")
(setf (get ttl_driver::MotorHardwareStatus :definition-)
      "niryo_robot_msgs/MotorHeader motor_identity

string firmware_version
uint32 temperature
float64 voltage
uint32 error
string error_msg

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



(provide :ttl_driver/MotorHardwareStatus "d38a5d35efbee481425ca6e864f50fce")


