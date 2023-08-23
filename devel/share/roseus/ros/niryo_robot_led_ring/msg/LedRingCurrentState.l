;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_led_ring::LedRingCurrentState)
  (if (not (find-package "NIRYO_ROBOT_LED_RING"))
    (make-package "NIRYO_ROBOT_LED_RING"))
  (shadow 'LedRingCurrentState (find-package "NIRYO_ROBOT_LED_RING")))
(unless (find-package "NIRYO_ROBOT_LED_RING::LEDRINGCURRENTSTATE")
  (make-package "NIRYO_ROBOT_LED_RING::LEDRINGCURRENTSTATE"))

(in-package "ROS")
;;//! \htmlinclude LedRingCurrentState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass niryo_robot_led_ring::LedRingCurrentState
  :super ros::object
  :slots (_header _led_ring_colors ))

(defmethod niryo_robot_led_ring::LedRingCurrentState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:led_ring_colors __led_ring_colors) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _led_ring_colors __led_ring_colors)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:led_ring_colors
   (&rest __led_ring_colors)
   (if (keywordp (car __led_ring_colors))
       (send* _led_ring_colors __led_ring_colors)
     (progn
       (if __led_ring_colors (setq _led_ring_colors (car __led_ring_colors)))
       _led_ring_colors)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; std_msgs/ColorRGBA[] _led_ring_colors
    (apply #'+ (send-all _led_ring_colors :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; std_msgs/ColorRGBA[] _led_ring_colors
     (write-long (length _led_ring_colors) s)
     (dolist (elem _led_ring_colors)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; std_msgs/ColorRGBA[] _led_ring_colors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _led_ring_colors (let (r) (dotimes (i n) (push (instance std_msgs::ColorRGBA :init) r)) r))
     (dolist (elem- _led_ring_colors)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get niryo_robot_led_ring::LedRingCurrentState :md5sum-) "ef53709298b36af9705e7fb4631b8215")
(setf (get niryo_robot_led_ring::LedRingCurrentState :datatype-) "niryo_robot_led_ring/LedRingCurrentState")
(setf (get niryo_robot_led_ring::LedRingCurrentState :definition-)
      "Header header
std_msgs/ColorRGBA[] led_ring_colors
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a

")



(provide :niryo_robot_led_ring/LedRingCurrentState "ef53709298b36af9705e7fb4631b8215")


