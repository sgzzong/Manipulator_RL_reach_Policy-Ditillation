;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_led_ring::SetLedColor)
  (if (not (find-package "NIRYO_ROBOT_LED_RING"))
    (make-package "NIRYO_ROBOT_LED_RING"))
  (shadow 'SetLedColor (find-package "NIRYO_ROBOT_LED_RING")))
(unless (find-package "NIRYO_ROBOT_LED_RING::SETLEDCOLOR")
  (make-package "NIRYO_ROBOT_LED_RING::SETLEDCOLOR"))
(unless (find-package "NIRYO_ROBOT_LED_RING::SETLEDCOLORREQUEST")
  (make-package "NIRYO_ROBOT_LED_RING::SETLEDCOLORREQUEST"))
(unless (find-package "NIRYO_ROBOT_LED_RING::SETLEDCOLORRESPONSE")
  (make-package "NIRYO_ROBOT_LED_RING::SETLEDCOLORRESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))




(defclass niryo_robot_led_ring::SetLedColorRequest
  :super ros::object
  :slots (_led_id _color ))

(defmethod niryo_robot_led_ring::SetLedColorRequest
  (:init
   (&key
    ((:led_id __led_id) 0)
    ((:color __color) (instance std_msgs::ColorRGBA :init))
    )
   (send-super :init)
   (setq _led_id (round __led_id))
   (setq _color __color)
   self)
  (:led_id
   (&optional __led_id)
   (if __led_id (setq _led_id __led_id)) _led_id)
  (:color
   (&rest __color)
   (if (keywordp (car __color))
       (send* _color __color)
     (progn
       (if __color (setq _color (car __color)))
       _color)))
  (:serialization-length
   ()
   (+
    ;; int8 _led_id
    1
    ;; std_msgs/ColorRGBA _color
    (send _color :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _led_id
       (write-byte _led_id s)
     ;; std_msgs/ColorRGBA _color
       (send _color :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _led_id
     (setq _led_id (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _led_id 127) (setq _led_id (- _led_id 256)))
   ;; std_msgs/ColorRGBA _color
     (send _color :deserialize buf ptr-) (incf ptr- (send _color :serialization-length))
   ;;
   self)
  )

(defclass niryo_robot_led_ring::SetLedColorResponse
  :super ros::object
  :slots (_status _message ))

(defmethod niryo_robot_led_ring::SetLedColorResponse
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

(defclass niryo_robot_led_ring::SetLedColor
  :super ros::object
  :slots ())

(setf (get niryo_robot_led_ring::SetLedColor :md5sum-) "b86387a305c7fa88645685251c498fb0")
(setf (get niryo_robot_led_ring::SetLedColor :datatype-) "niryo_robot_led_ring/SetLedColor")
(setf (get niryo_robot_led_ring::SetLedColor :request) niryo_robot_led_ring::SetLedColorRequest)
(setf (get niryo_robot_led_ring::SetLedColor :response) niryo_robot_led_ring::SetLedColorResponse)

(defmethod niryo_robot_led_ring::SetLedColorRequest
  (:response () (instance niryo_robot_led_ring::SetLedColorResponse :init)))

(setf (get niryo_robot_led_ring::SetLedColorRequest :md5sum-) "b86387a305c7fa88645685251c498fb0")
(setf (get niryo_robot_led_ring::SetLedColorRequest :datatype-) "niryo_robot_led_ring/SetLedColorRequest")
(setf (get niryo_robot_led_ring::SetLedColorRequest :definition-)
      "int8 led_id
std_msgs/ColorRGBA color


================================================================================
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a
---
int32 status
string message
")

(setf (get niryo_robot_led_ring::SetLedColorResponse :md5sum-) "b86387a305c7fa88645685251c498fb0")
(setf (get niryo_robot_led_ring::SetLedColorResponse :datatype-) "niryo_robot_led_ring/SetLedColorResponse")
(setf (get niryo_robot_led_ring::SetLedColorResponse :definition-)
      "int8 led_id
std_msgs/ColorRGBA color


================================================================================
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a
---
int32 status
string message
")



(provide :niryo_robot_led_ring/SetLedColor "b86387a305c7fa88645685251c498fb0")


