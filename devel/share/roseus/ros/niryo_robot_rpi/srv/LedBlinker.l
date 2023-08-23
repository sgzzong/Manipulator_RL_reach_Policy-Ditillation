;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_rpi::LedBlinker)
  (if (not (find-package "NIRYO_ROBOT_RPI"))
    (make-package "NIRYO_ROBOT_RPI"))
  (shadow 'LedBlinker (find-package "NIRYO_ROBOT_RPI")))
(unless (find-package "NIRYO_ROBOT_RPI::LEDBLINKER")
  (make-package "NIRYO_ROBOT_RPI::LEDBLINKER"))
(unless (find-package "NIRYO_ROBOT_RPI::LEDBLINKERREQUEST")
  (make-package "NIRYO_ROBOT_RPI::LEDBLINKERREQUEST"))
(unless (find-package "NIRYO_ROBOT_RPI::LEDBLINKERRESPONSE")
  (make-package "NIRYO_ROBOT_RPI::LEDBLINKERRESPONSE"))

(in-package "ROS")





(intern "*LED_OFF*" (find-package "NIRYO_ROBOT_RPI::LEDBLINKERREQUEST"))
(shadow '*LED_OFF* (find-package "NIRYO_ROBOT_RPI::LEDBLINKERREQUEST"))
(defconstant niryo_robot_rpi::LedBlinkerRequest::*LED_OFF* 0)
(intern "*LED_BLUE*" (find-package "NIRYO_ROBOT_RPI::LEDBLINKERREQUEST"))
(shadow '*LED_BLUE* (find-package "NIRYO_ROBOT_RPI::LEDBLINKERREQUEST"))
(defconstant niryo_robot_rpi::LedBlinkerRequest::*LED_BLUE* 1)
(intern "*LED_GREEN*" (find-package "NIRYO_ROBOT_RPI::LEDBLINKERREQUEST"))
(shadow '*LED_GREEN* (find-package "NIRYO_ROBOT_RPI::LEDBLINKERREQUEST"))
(defconstant niryo_robot_rpi::LedBlinkerRequest::*LED_GREEN* 2)
(intern "*LED_BLUE_GREEN*" (find-package "NIRYO_ROBOT_RPI::LEDBLINKERREQUEST"))
(shadow '*LED_BLUE_GREEN* (find-package "NIRYO_ROBOT_RPI::LEDBLINKERREQUEST"))
(defconstant niryo_robot_rpi::LedBlinkerRequest::*LED_BLUE_GREEN* 3)
(intern "*LED_RED*" (find-package "NIRYO_ROBOT_RPI::LEDBLINKERREQUEST"))
(shadow '*LED_RED* (find-package "NIRYO_ROBOT_RPI::LEDBLINKERREQUEST"))
(defconstant niryo_robot_rpi::LedBlinkerRequest::*LED_RED* 4)
(intern "*LED_PURPLE*" (find-package "NIRYO_ROBOT_RPI::LEDBLINKERREQUEST"))
(shadow '*LED_PURPLE* (find-package "NIRYO_ROBOT_RPI::LEDBLINKERREQUEST"))
(defconstant niryo_robot_rpi::LedBlinkerRequest::*LED_PURPLE* 5)
(intern "*LED_RED_GREEN*" (find-package "NIRYO_ROBOT_RPI::LEDBLINKERREQUEST"))
(shadow '*LED_RED_GREEN* (find-package "NIRYO_ROBOT_RPI::LEDBLINKERREQUEST"))
(defconstant niryo_robot_rpi::LedBlinkerRequest::*LED_RED_GREEN* 6)
(intern "*LED_WHITE*" (find-package "NIRYO_ROBOT_RPI::LEDBLINKERREQUEST"))
(shadow '*LED_WHITE* (find-package "NIRYO_ROBOT_RPI::LEDBLINKERREQUEST"))
(defconstant niryo_robot_rpi::LedBlinkerRequest::*LED_WHITE* 7)

(defun niryo_robot_rpi::LedBlinkerRequest-to-symbol (const)
  (cond
        ((= const 0) 'niryo_robot_rpi::LedBlinkerRequest::*LED_OFF*)
        ((= const 1) 'niryo_robot_rpi::LedBlinkerRequest::*LED_BLUE*)
        ((= const 2) 'niryo_robot_rpi::LedBlinkerRequest::*LED_GREEN*)
        ((= const 3) 'niryo_robot_rpi::LedBlinkerRequest::*LED_BLUE_GREEN*)
        ((= const 4) 'niryo_robot_rpi::LedBlinkerRequest::*LED_RED*)
        ((= const 5) 'niryo_robot_rpi::LedBlinkerRequest::*LED_PURPLE*)
        ((= const 6) 'niryo_robot_rpi::LedBlinkerRequest::*LED_RED_GREEN*)
        ((= const 7) 'niryo_robot_rpi::LedBlinkerRequest::*LED_WHITE*)
        (t nil)))

(defclass niryo_robot_rpi::LedBlinkerRequest
  :super ros::object
  :slots (_activate _frequency _color _blinker_duration ))

(defmethod niryo_robot_rpi::LedBlinkerRequest
  (:init
   (&key
    ((:activate __activate) nil)
    ((:frequency __frequency) 0)
    ((:color __color) 0)
    ((:blinker_duration __blinker_duration) 0.0)
    )
   (send-super :init)
   (setq _activate __activate)
   (setq _frequency (round __frequency))
   (setq _color (round __color))
   (setq _blinker_duration (float __blinker_duration))
   self)
  (:activate
   (&optional (__activate :null))
   (if (not (eq __activate :null)) (setq _activate __activate)) _activate)
  (:frequency
   (&optional __frequency)
   (if __frequency (setq _frequency __frequency)) _frequency)
  (:color
   (&optional __color)
   (if __color (setq _color __color)) _color)
  (:blinker_duration
   (&optional __blinker_duration)
   (if __blinker_duration (setq _blinker_duration __blinker_duration)) _blinker_duration)
  (:serialization-length
   ()
   (+
    ;; bool _activate
    1
    ;; uint8 _frequency
    1
    ;; uint8 _color
    1
    ;; float32 _blinker_duration
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _activate
       (if _activate (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _frequency
       (write-byte _frequency s)
     ;; uint8 _color
       (write-byte _color s)
     ;; float32 _blinker_duration
       (sys::poke _blinker_duration (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _activate
     (setq _activate (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _frequency
     (setq _frequency (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _color
     (setq _color (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _blinker_duration
     (setq _blinker_duration (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass niryo_robot_rpi::LedBlinkerResponse
  :super ros::object
  :slots (_status _message ))

(defmethod niryo_robot_rpi::LedBlinkerResponse
  (:init
   (&key
    ((:status __status) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _message (string __message))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; int32 _status
    4
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass niryo_robot_rpi::LedBlinker
  :super ros::object
  :slots ())

(setf (get niryo_robot_rpi::LedBlinker :md5sum-) "a9c225f56e57f38d3097de07bd306c80")
(setf (get niryo_robot_rpi::LedBlinker :datatype-) "niryo_robot_rpi/LedBlinker")
(setf (get niryo_robot_rpi::LedBlinker :request) niryo_robot_rpi::LedBlinkerRequest)
(setf (get niryo_robot_rpi::LedBlinker :response) niryo_robot_rpi::LedBlinkerResponse)

(defmethod niryo_robot_rpi::LedBlinkerRequest
  (:response () (instance niryo_robot_rpi::LedBlinkerResponse :init)))

(setf (get niryo_robot_rpi::LedBlinkerRequest :md5sum-) "a9c225f56e57f38d3097de07bd306c80")
(setf (get niryo_robot_rpi::LedBlinkerRequest :datatype-) "niryo_robot_rpi/LedBlinkerRequest")
(setf (get niryo_robot_rpi::LedBlinkerRequest :definition-)
      "uint8 LED_OFF = 0
uint8 LED_BLUE = 1
uint8 LED_GREEN = 2
uint8 LED_BLUE_GREEN = 3
uint8 LED_RED = 4
uint8 LED_PURPLE = 5
uint8 LED_RED_GREEN = 6
uint8 LED_WHITE = 7

bool activate
uint8 frequency # between 1hz and 100Hz
uint8 color
float32 blinker_duration # 0 for infinite
---
int32 status
string message
")

(setf (get niryo_robot_rpi::LedBlinkerResponse :md5sum-) "a9c225f56e57f38d3097de07bd306c80")
(setf (get niryo_robot_rpi::LedBlinkerResponse :datatype-) "niryo_robot_rpi/LedBlinkerResponse")
(setf (get niryo_robot_rpi::LedBlinkerResponse :definition-)
      "uint8 LED_OFF = 0
uint8 LED_BLUE = 1
uint8 LED_GREEN = 2
uint8 LED_BLUE_GREEN = 3
uint8 LED_RED = 4
uint8 LED_PURPLE = 5
uint8 LED_RED_GREEN = 6
uint8 LED_WHITE = 7

bool activate
uint8 frequency # between 1hz and 100Hz
uint8 color
float32 blinker_duration # 0 for infinite
---
int32 status
string message
")



(provide :niryo_robot_rpi/LedBlinker "a9c225f56e57f38d3097de07bd306c80")


