;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_msgs::MotorHeader)
  (if (not (find-package "NIRYO_ROBOT_MSGS"))
    (make-package "NIRYO_ROBOT_MSGS"))
  (shadow 'MotorHeader (find-package "NIRYO_ROBOT_MSGS")))
(unless (find-package "NIRYO_ROBOT_MSGS::MOTORHEADER")
  (make-package "NIRYO_ROBOT_MSGS::MOTORHEADER"))

(in-package "ROS")
;;//! \htmlinclude MotorHeader.msg.html


(intern "*MOTOR_TYPE_STEPPER*" (find-package "NIRYO_ROBOT_MSGS::MOTORHEADER"))
(shadow '*MOTOR_TYPE_STEPPER* (find-package "NIRYO_ROBOT_MSGS::MOTORHEADER"))
(defconstant niryo_robot_msgs::MotorHeader::*MOTOR_TYPE_STEPPER* 1)
(intern "*MOTOR_TYPE_XL430*" (find-package "NIRYO_ROBOT_MSGS::MOTORHEADER"))
(shadow '*MOTOR_TYPE_XL430* (find-package "NIRYO_ROBOT_MSGS::MOTORHEADER"))
(defconstant niryo_robot_msgs::MotorHeader::*MOTOR_TYPE_XL430* 2)
(intern "*MOTOR_TYPE_XL320*" (find-package "NIRYO_ROBOT_MSGS::MOTORHEADER"))
(shadow '*MOTOR_TYPE_XL320* (find-package "NIRYO_ROBOT_MSGS::MOTORHEADER"))
(defconstant niryo_robot_msgs::MotorHeader::*MOTOR_TYPE_XL320* 3)
(intern "*MOTOR_TYPE_XL330*" (find-package "NIRYO_ROBOT_MSGS::MOTORHEADER"))
(shadow '*MOTOR_TYPE_XL330* (find-package "NIRYO_ROBOT_MSGS::MOTORHEADER"))
(defconstant niryo_robot_msgs::MotorHeader::*MOTOR_TYPE_XL330* 4)
(intern "*MOROR_TYPE_XC430*" (find-package "NIRYO_ROBOT_MSGS::MOTORHEADER"))
(shadow '*MOROR_TYPE_XC430* (find-package "NIRYO_ROBOT_MSGS::MOTORHEADER"))
(defconstant niryo_robot_msgs::MotorHeader::*MOROR_TYPE_XC430* 5)
(intern "*MOTOR_TYPE_END_EFFECTOR*" (find-package "NIRYO_ROBOT_MSGS::MOTORHEADER"))
(shadow '*MOTOR_TYPE_END_EFFECTOR* (find-package "NIRYO_ROBOT_MSGS::MOTORHEADER"))
(defconstant niryo_robot_msgs::MotorHeader::*MOTOR_TYPE_END_EFFECTOR* 10)

(defun niryo_robot_msgs::MotorHeader-to-symbol (const)
  (cond
        ((= const 1) 'niryo_robot_msgs::MotorHeader::*MOTOR_TYPE_STEPPER*)
        ((= const 2) 'niryo_robot_msgs::MotorHeader::*MOTOR_TYPE_XL430*)
        ((= const 3) 'niryo_robot_msgs::MotorHeader::*MOTOR_TYPE_XL320*)
        ((= const 4) 'niryo_robot_msgs::MotorHeader::*MOTOR_TYPE_XL330*)
        ((= const 5) 'niryo_robot_msgs::MotorHeader::*MOROR_TYPE_XC430*)
        ((= const 10) 'niryo_robot_msgs::MotorHeader::*MOTOR_TYPE_END_EFFECTOR*)
        (t nil)))

(defclass niryo_robot_msgs::MotorHeader
  :super ros::object
  :slots (_motor_id _motor_type ))

(defmethod niryo_robot_msgs::MotorHeader
  (:init
   (&key
    ((:motor_id __motor_id) 0)
    ((:motor_type __motor_type) 0)
    )
   (send-super :init)
   (setq _motor_id (round __motor_id))
   (setq _motor_type (round __motor_type))
   self)
  (:motor_id
   (&optional __motor_id)
   (if __motor_id (setq _motor_id __motor_id)) _motor_id)
  (:motor_type
   (&optional __motor_type)
   (if __motor_type (setq _motor_type __motor_type)) _motor_type)
  (:serialization-length
   ()
   (+
    ;; uint8 _motor_id
    1
    ;; uint8 _motor_type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _motor_id
       (write-byte _motor_id s)
     ;; uint8 _motor_type
       (write-byte _motor_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _motor_id
     (setq _motor_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _motor_type
     (setq _motor_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get niryo_robot_msgs::MotorHeader :md5sum-) "37f646768b4675df61058ccaf9b61862")
(setf (get niryo_robot_msgs::MotorHeader :datatype-) "niryo_robot_msgs/MotorHeader")
(setf (get niryo_robot_msgs::MotorHeader :definition-)
      "uint8 motor_id

uint8 motor_type
uint8 MOTOR_TYPE_STEPPER=1
uint8 MOTOR_TYPE_XL430=2
uint8 MOTOR_TYPE_XL320=3
uint8 MOTOR_TYPE_XL330=4
uint8 MOROR_TYPE_XC430=5
uint8 MOTOR_TYPE_END_EFFECTOR=10


")



(provide :niryo_robot_msgs/MotorHeader "37f646768b4675df61058ccaf9b61862")


