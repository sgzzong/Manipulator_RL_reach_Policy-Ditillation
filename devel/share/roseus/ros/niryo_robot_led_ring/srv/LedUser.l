;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_led_ring::LedUser)
  (if (not (find-package "NIRYO_ROBOT_LED_RING"))
    (make-package "NIRYO_ROBOT_LED_RING"))
  (shadow 'LedUser (find-package "NIRYO_ROBOT_LED_RING")))
(unless (find-package "NIRYO_ROBOT_LED_RING::LEDUSER")
  (make-package "NIRYO_ROBOT_LED_RING::LEDUSER"))
(unless (find-package "NIRYO_ROBOT_LED_RING::LEDUSERREQUEST")
  (make-package "NIRYO_ROBOT_LED_RING::LEDUSERREQUEST"))
(unless (find-package "NIRYO_ROBOT_LED_RING::LEDUSERRESPONSE")
  (make-package "NIRYO_ROBOT_LED_RING::LEDUSERRESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))




(defclass niryo_robot_led_ring::LedUserRequest
  :super ros::object
  :slots (_animation_mode _colors _period _iterations _wait_end ))

(defmethod niryo_robot_led_ring::LedUserRequest
  (:init
   (&key
    ((:animation_mode __animation_mode) (instance niryo_robot_led_ring::LedRingAnimation :init))
    ((:colors __colors) ())
    ((:period __period) 0.0)
    ((:iterations __iterations) 0)
    ((:wait_end __wait_end) nil)
    )
   (send-super :init)
   (setq _animation_mode __animation_mode)
   (setq _colors __colors)
   (setq _period (float __period))
   (setq _iterations (round __iterations))
   (setq _wait_end __wait_end)
   self)
  (:animation_mode
   (&rest __animation_mode)
   (if (keywordp (car __animation_mode))
       (send* _animation_mode __animation_mode)
     (progn
       (if __animation_mode (setq _animation_mode (car __animation_mode)))
       _animation_mode)))
  (:colors
   (&rest __colors)
   (if (keywordp (car __colors))
       (send* _colors __colors)
     (progn
       (if __colors (setq _colors (car __colors)))
       _colors)))
  (:period
   (&optional __period)
   (if __period (setq _period __period)) _period)
  (:iterations
   (&optional __iterations)
   (if __iterations (setq _iterations __iterations)) _iterations)
  (:wait_end
   (&optional (__wait_end :null))
   (if (not (eq __wait_end :null)) (setq _wait_end __wait_end)) _wait_end)
  (:serialization-length
   ()
   (+
    ;; niryo_robot_led_ring/LedRingAnimation _animation_mode
    (send _animation_mode :serialization-length)
    ;; std_msgs/ColorRGBA[] _colors
    (apply #'+ (send-all _colors :serialization-length)) 4
    ;; float64 _period
    8
    ;; int16 _iterations
    2
    ;; bool _wait_end
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; niryo_robot_led_ring/LedRingAnimation _animation_mode
       (send _animation_mode :serialize s)
     ;; std_msgs/ColorRGBA[] _colors
     (write-long (length _colors) s)
     (dolist (elem _colors)
       (send elem :serialize s)
       )
     ;; float64 _period
       (sys::poke _period (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int16 _iterations
       (write-word _iterations s)
     ;; bool _wait_end
       (if _wait_end (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; niryo_robot_led_ring/LedRingAnimation _animation_mode
     (send _animation_mode :deserialize buf ptr-) (incf ptr- (send _animation_mode :serialization-length))
   ;; std_msgs/ColorRGBA[] _colors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _colors (let (r) (dotimes (i n) (push (instance std_msgs::ColorRGBA :init) r)) r))
     (dolist (elem- _colors)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float64 _period
     (setq _period (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int16 _iterations
     (setq _iterations (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _wait_end
     (setq _wait_end (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass niryo_robot_led_ring::LedUserResponse
  :super ros::object
  :slots (_status _message ))

(defmethod niryo_robot_led_ring::LedUserResponse
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

(defclass niryo_robot_led_ring::LedUser
  :super ros::object
  :slots ())

(setf (get niryo_robot_led_ring::LedUser :md5sum-) "037e34fbf8489405d7b114484d01022f")
(setf (get niryo_robot_led_ring::LedUser :datatype-) "niryo_robot_led_ring/LedUser")
(setf (get niryo_robot_led_ring::LedUser :request) niryo_robot_led_ring::LedUserRequest)
(setf (get niryo_robot_led_ring::LedUser :response) niryo_robot_led_ring::LedUserResponse)

(defmethod niryo_robot_led_ring::LedUserRequest
  (:response () (instance niryo_robot_led_ring::LedUserResponse :init)))

(setf (get niryo_robot_led_ring::LedUserRequest :md5sum-) "037e34fbf8489405d7b114484d01022f")
(setf (get niryo_robot_led_ring::LedUserRequest :datatype-) "niryo_robot_led_ring/LedUserRequest")
(setf (get niryo_robot_led_ring::LedUserRequest :definition-)
      "niryo_robot_led_ring/LedRingAnimation animation_mode

std_msgs/ColorRGBA[] colors
float64 period         # Time of 1 iteration in seconds
int16 iterations

# The service either wait for the iterations to finish to answer, 
# or answer immediatly a Success after launching the function of Led Ring control. 
# if iterations is 0, answer immediatly in any case, because the function never
# stops.
bool wait_end


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
---
int32 status
string message
")

(setf (get niryo_robot_led_ring::LedUserResponse :md5sum-) "037e34fbf8489405d7b114484d01022f")
(setf (get niryo_robot_led_ring::LedUserResponse :datatype-) "niryo_robot_led_ring/LedUserResponse")
(setf (get niryo_robot_led_ring::LedUserResponse :definition-)
      "niryo_robot_led_ring/LedRingAnimation animation_mode

std_msgs/ColorRGBA[] colors
float64 period         # Time of 1 iteration in seconds
int16 iterations

# The service either wait for the iterations to finish to answer, 
# or answer immediatly a Success after launching the function of Led Ring control. 
# if iterations is 0, answer immediatly in any case, because the function never
# stops.
bool wait_end


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
---
int32 status
string message
")



(provide :niryo_robot_led_ring/LedUser "037e34fbf8489405d7b114484d01022f")


