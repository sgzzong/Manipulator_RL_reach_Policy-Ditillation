;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_led_ring::LedRingStatus)
  (if (not (find-package "NIRYO_ROBOT_LED_RING"))
    (make-package "NIRYO_ROBOT_LED_RING"))
  (shadow 'LedRingStatus (find-package "NIRYO_ROBOT_LED_RING")))
(unless (find-package "NIRYO_ROBOT_LED_RING::LEDRINGSTATUS")
  (make-package "NIRYO_ROBOT_LED_RING::LEDRINGSTATUS"))

(in-package "ROS")
;;//! \htmlinclude LedRingStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*ROBOT_STATUS*" (find-package "NIRYO_ROBOT_LED_RING::LEDRINGSTATUS"))
(shadow '*ROBOT_STATUS* (find-package "NIRYO_ROBOT_LED_RING::LEDRINGSTATUS"))
(defconstant niryo_robot_led_ring::LedRingStatus::*ROBOT_STATUS* 1)
(intern "*USER*" (find-package "NIRYO_ROBOT_LED_RING::LEDRINGSTATUS"))
(shadow '*USER* (find-package "NIRYO_ROBOT_LED_RING::LEDRINGSTATUS"))
(defconstant niryo_robot_led_ring::LedRingStatus::*USER* 2)

(defun niryo_robot_led_ring::LedRingStatus-to-symbol (const)
  (cond
        ((= const 1) 'niryo_robot_led_ring::LedRingStatus::*ROBOT_STATUS*)
        ((= const 2) 'niryo_robot_led_ring::LedRingStatus::*USER*)
        (t nil)))

(defclass niryo_robot_led_ring::LedRingStatus
  :super ros::object
  :slots (_led_mode _animation_mode _animation_color ))

(defmethod niryo_robot_led_ring::LedRingStatus
  (:init
   (&key
    ((:led_mode __led_mode) 0)
    ((:animation_mode __animation_mode) (instance niryo_robot_led_ring::LedRingAnimation :init))
    ((:animation_color __animation_color) (instance std_msgs::ColorRGBA :init))
    )
   (send-super :init)
   (setq _led_mode (round __led_mode))
   (setq _animation_mode __animation_mode)
   (setq _animation_color __animation_color)
   self)
  (:led_mode
   (&optional __led_mode)
   (if __led_mode (setq _led_mode __led_mode)) _led_mode)
  (:animation_mode
   (&rest __animation_mode)
   (if (keywordp (car __animation_mode))
       (send* _animation_mode __animation_mode)
     (progn
       (if __animation_mode (setq _animation_mode (car __animation_mode)))
       _animation_mode)))
  (:animation_color
   (&rest __animation_color)
   (if (keywordp (car __animation_color))
       (send* _animation_color __animation_color)
     (progn
       (if __animation_color (setq _animation_color (car __animation_color)))
       _animation_color)))
  (:serialization-length
   ()
   (+
    ;; int32 _led_mode
    4
    ;; niryo_robot_led_ring/LedRingAnimation _animation_mode
    (send _animation_mode :serialization-length)
    ;; std_msgs/ColorRGBA _animation_color
    (send _animation_color :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _led_mode
       (write-long _led_mode s)
     ;; niryo_robot_led_ring/LedRingAnimation _animation_mode
       (send _animation_mode :serialize s)
     ;; std_msgs/ColorRGBA _animation_color
       (send _animation_color :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _led_mode
     (setq _led_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; niryo_robot_led_ring/LedRingAnimation _animation_mode
     (send _animation_mode :deserialize buf ptr-) (incf ptr- (send _animation_mode :serialization-length))
   ;; std_msgs/ColorRGBA _animation_color
     (send _animation_color :deserialize buf ptr-) (incf ptr- (send _animation_color :serialization-length))
   ;;
   self)
  )

(setf (get niryo_robot_led_ring::LedRingStatus :md5sum-) "8451a2850ab998f7e23e7fb04868d7d0")
(setf (get niryo_robot_led_ring::LedRingStatus :datatype-) "niryo_robot_led_ring/LedRingStatus")
(setf (get niryo_robot_led_ring::LedRingStatus :definition-)
      "int32 ROBOT_STATUS = 1
int32 USER = 2

int32 led_mode

niryo_robot_led_ring/LedRingAnimation animation_mode

std_msgs/ColorRGBA animation_color # except for rainbow related animation

================================================================================
MSG: niryo_robot_led_ring/LedRingAnimation
int32 NONE = -1
int32 SOLID = 1
int32 FLASHING = 2   
int32 ALTERNATE = 3  
int32 CHASE = 4       
int32 COLOR_WIPE = 5   
int32 RAINBOW = 6
int32 RAINBOW_CYLE = 7
int32 RAINBOW_CHASE = 8
int32 GO_UP = 9
int32 GO_UP_AND_DOWN = 10
int32 BREATH = 11
int32 SNAKE = 12
int32 CUSTOM = 13

int32 animation
================================================================================
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a

")



(provide :niryo_robot_led_ring/LedRingStatus "8451a2850ab998f7e23e7fb04868d7d0")


