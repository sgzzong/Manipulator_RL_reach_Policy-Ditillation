;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_led_ring::LedRingAnimation)
  (if (not (find-package "NIRYO_ROBOT_LED_RING"))
    (make-package "NIRYO_ROBOT_LED_RING"))
  (shadow 'LedRingAnimation (find-package "NIRYO_ROBOT_LED_RING")))
(unless (find-package "NIRYO_ROBOT_LED_RING::LEDRINGANIMATION")
  (make-package "NIRYO_ROBOT_LED_RING::LEDRINGANIMATION"))

(in-package "ROS")
;;//! \htmlinclude LedRingAnimation.msg.html


(intern "*NONE*" (find-package "NIRYO_ROBOT_LED_RING::LEDRINGANIMATION"))
(shadow '*NONE* (find-package "NIRYO_ROBOT_LED_RING::LEDRINGANIMATION"))
(defconstant niryo_robot_led_ring::LedRingAnimation::*NONE* -1)
(intern "*SOLID*" (find-package "NIRYO_ROBOT_LED_RING::LEDRINGANIMATION"))
(shadow '*SOLID* (find-package "NIRYO_ROBOT_LED_RING::LEDRINGANIMATION"))
(defconstant niryo_robot_led_ring::LedRingAnimation::*SOLID* 1)
(intern "*FLASHING*" (find-package "NIRYO_ROBOT_LED_RING::LEDRINGANIMATION"))
(shadow '*FLASHING* (find-package "NIRYO_ROBOT_LED_RING::LEDRINGANIMATION"))
(defconstant niryo_robot_led_ring::LedRingAnimation::*FLASHING* 2)
(intern "*ALTERNATE*" (find-package "NIRYO_ROBOT_LED_RING::LEDRINGANIMATION"))
(shadow '*ALTERNATE* (find-package "NIRYO_ROBOT_LED_RING::LEDRINGANIMATION"))
(defconstant niryo_robot_led_ring::LedRingAnimation::*ALTERNATE* 3)
(intern "*CHASE*" (find-package "NIRYO_ROBOT_LED_RING::LEDRINGANIMATION"))
(shadow '*CHASE* (find-package "NIRYO_ROBOT_LED_RING::LEDRINGANIMATION"))
(defconstant niryo_robot_led_ring::LedRingAnimation::*CHASE* 4)
(intern "*COLOR_WIPE*" (find-package "NIRYO_ROBOT_LED_RING::LEDRINGANIMATION"))
(shadow '*COLOR_WIPE* (find-package "NIRYO_ROBOT_LED_RING::LEDRINGANIMATION"))
(defconstant niryo_robot_led_ring::LedRingAnimation::*COLOR_WIPE* 5)
(intern "*RAINBOW*" (find-package "NIRYO_ROBOT_LED_RING::LEDRINGANIMATION"))
(shadow '*RAINBOW* (find-package "NIRYO_ROBOT_LED_RING::LEDRINGANIMATION"))
(defconstant niryo_robot_led_ring::LedRingAnimation::*RAINBOW* 6)
(intern "*RAINBOW_CYLE*" (find-package "NIRYO_ROBOT_LED_RING::LEDRINGANIMATION"))
(shadow '*RAINBOW_CYLE* (find-package "NIRYO_ROBOT_LED_RING::LEDRINGANIMATION"))
(defconstant niryo_robot_led_ring::LedRingAnimation::*RAINBOW_CYLE* 7)
(intern "*RAINBOW_CHASE*" (find-package "NIRYO_ROBOT_LED_RING::LEDRINGANIMATION"))
(shadow '*RAINBOW_CHASE* (find-package "NIRYO_ROBOT_LED_RING::LEDRINGANIMATION"))
(defconstant niryo_robot_led_ring::LedRingAnimation::*RAINBOW_CHASE* 8)
(intern "*GO_UP*" (find-package "NIRYO_ROBOT_LED_RING::LEDRINGANIMATION"))
(shadow '*GO_UP* (find-package "NIRYO_ROBOT_LED_RING::LEDRINGANIMATION"))
(defconstant niryo_robot_led_ring::LedRingAnimation::*GO_UP* 9)
(intern "*GO_UP_AND_DOWN*" (find-package "NIRYO_ROBOT_LED_RING::LEDRINGANIMATION"))
(shadow '*GO_UP_AND_DOWN* (find-package "NIRYO_ROBOT_LED_RING::LEDRINGANIMATION"))
(defconstant niryo_robot_led_ring::LedRingAnimation::*GO_UP_AND_DOWN* 10)
(intern "*BREATH*" (find-package "NIRYO_ROBOT_LED_RING::LEDRINGANIMATION"))
(shadow '*BREATH* (find-package "NIRYO_ROBOT_LED_RING::LEDRINGANIMATION"))
(defconstant niryo_robot_led_ring::LedRingAnimation::*BREATH* 11)
(intern "*SNAKE*" (find-package "NIRYO_ROBOT_LED_RING::LEDRINGANIMATION"))
(shadow '*SNAKE* (find-package "NIRYO_ROBOT_LED_RING::LEDRINGANIMATION"))
(defconstant niryo_robot_led_ring::LedRingAnimation::*SNAKE* 12)
(intern "*CUSTOM*" (find-package "NIRYO_ROBOT_LED_RING::LEDRINGANIMATION"))
(shadow '*CUSTOM* (find-package "NIRYO_ROBOT_LED_RING::LEDRINGANIMATION"))
(defconstant niryo_robot_led_ring::LedRingAnimation::*CUSTOM* 13)

(defun niryo_robot_led_ring::LedRingAnimation-to-symbol (const)
  (cond
        ((= const -1) 'niryo_robot_led_ring::LedRingAnimation::*NONE*)
        ((= const 1) 'niryo_robot_led_ring::LedRingAnimation::*SOLID*)
        ((= const 2) 'niryo_robot_led_ring::LedRingAnimation::*FLASHING*)
        ((= const 3) 'niryo_robot_led_ring::LedRingAnimation::*ALTERNATE*)
        ((= const 4) 'niryo_robot_led_ring::LedRingAnimation::*CHASE*)
        ((= const 5) 'niryo_robot_led_ring::LedRingAnimation::*COLOR_WIPE*)
        ((= const 6) 'niryo_robot_led_ring::LedRingAnimation::*RAINBOW*)
        ((= const 7) 'niryo_robot_led_ring::LedRingAnimation::*RAINBOW_CYLE*)
        ((= const 8) 'niryo_robot_led_ring::LedRingAnimation::*RAINBOW_CHASE*)
        ((= const 9) 'niryo_robot_led_ring::LedRingAnimation::*GO_UP*)
        ((= const 10) 'niryo_robot_led_ring::LedRingAnimation::*GO_UP_AND_DOWN*)
        ((= const 11) 'niryo_robot_led_ring::LedRingAnimation::*BREATH*)
        ((= const 12) 'niryo_robot_led_ring::LedRingAnimation::*SNAKE*)
        ((= const 13) 'niryo_robot_led_ring::LedRingAnimation::*CUSTOM*)
        (t nil)))

(defclass niryo_robot_led_ring::LedRingAnimation
  :super ros::object
  :slots (_animation ))

(defmethod niryo_robot_led_ring::LedRingAnimation
  (:init
   (&key
    ((:animation __animation) 0)
    )
   (send-super :init)
   (setq _animation (round __animation))
   self)
  (:animation
   (&optional __animation)
   (if __animation (setq _animation __animation)) _animation)
  (:serialization-length
   ()
   (+
    ;; int32 _animation
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _animation
       (write-long _animation s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _animation
     (setq _animation (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get niryo_robot_led_ring::LedRingAnimation :md5sum-) "2988219586581fda2dc251a25b0a4d08")
(setf (get niryo_robot_led_ring::LedRingAnimation :datatype-) "niryo_robot_led_ring/LedRingAnimation")
(setf (get niryo_robot_led_ring::LedRingAnimation :definition-)
      "int32 NONE = -1
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
")



(provide :niryo_robot_led_ring/LedRingAnimation "2988219586581fda2dc251a25b0a4d08")


