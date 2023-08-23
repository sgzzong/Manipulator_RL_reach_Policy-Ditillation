;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_msgs::BusState)
  (if (not (find-package "NIRYO_ROBOT_MSGS"))
    (make-package "NIRYO_ROBOT_MSGS"))
  (shadow 'BusState (find-package "NIRYO_ROBOT_MSGS")))
(unless (find-package "NIRYO_ROBOT_MSGS::BUSSTATE")
  (make-package "NIRYO_ROBOT_MSGS::BUSSTATE"))

(in-package "ROS")
;;//! \htmlinclude BusState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass niryo_robot_msgs::BusState
  :super ros::object
  :slots (_header _connection_status _motor_id_connected _error ))

(defmethod niryo_robot_msgs::BusState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:connection_status __connection_status) nil)
    ((:motor_id_connected __motor_id_connected) (make-array 0 :initial-element 0 :element-type :char))
    ((:error __error) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _connection_status __connection_status)
   (setq _motor_id_connected __motor_id_connected)
   (setq _error (string __error))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:connection_status
   (&optional (__connection_status :null))
   (if (not (eq __connection_status :null)) (setq _connection_status __connection_status)) _connection_status)
  (:motor_id_connected
   (&optional __motor_id_connected)
   (if __motor_id_connected (setq _motor_id_connected __motor_id_connected)) _motor_id_connected)
  (:error
   (&optional __error)
   (if __error (setq _error __error)) _error)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _connection_status
    1
    ;; uint8[] _motor_id_connected
    (* 1    (length _motor_id_connected)) 4
    ;; string _error
    4 (length _error)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _connection_status
       (if _connection_status (write-byte -1 s) (write-byte 0 s))
     ;; uint8[] _motor_id_connected
     (write-long (length _motor_id_connected) s)
     (princ _motor_id_connected s)
     ;; string _error
       (write-long (length _error) s) (princ _error s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _connection_status
     (setq _connection_status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8[] _motor_id_connected
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _motor_id_connected (make-array n :element-type :char))
     (replace _motor_id_connected buf :start2 ptr-) (incf ptr- n))
   ;; string _error
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _error (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get niryo_robot_msgs::BusState :md5sum-) "213bd57ffacf403dd0100cbc0fd4d698")
(setf (get niryo_robot_msgs::BusState :datatype-) "niryo_robot_msgs/BusState")
(setf (get niryo_robot_msgs::BusState :definition-)
      "std_msgs/Header header
bool connection_status
uint8[] motor_id_connected
string error
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

")



(provide :niryo_robot_msgs/BusState "213bd57ffacf403dd0100cbc0fd4d698")


