;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_msgs::Ping)
  (if (not (find-package "NIRYO_ROBOT_MSGS"))
    (make-package "NIRYO_ROBOT_MSGS"))
  (shadow 'Ping (find-package "NIRYO_ROBOT_MSGS")))
(unless (find-package "NIRYO_ROBOT_MSGS::PING")
  (make-package "NIRYO_ROBOT_MSGS::PING"))
(unless (find-package "NIRYO_ROBOT_MSGS::PINGREQUEST")
  (make-package "NIRYO_ROBOT_MSGS::PINGREQUEST"))
(unless (find-package "NIRYO_ROBOT_MSGS::PINGRESPONSE")
  (make-package "NIRYO_ROBOT_MSGS::PINGRESPONSE"))

(in-package "ROS")





(defclass niryo_robot_msgs::PingRequest
  :super ros::object
  :slots (_name _state ))

(defmethod niryo_robot_msgs::PingRequest
  (:init
   (&key
    ((:name __name) "")
    ((:state __state) nil)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _state __state)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:state
   (&optional (__state :null))
   (if (not (eq __state :null)) (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; bool _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; bool _state
       (if _state (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _state
     (setq _state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass niryo_robot_msgs::PingResponse
  :super ros::object
  :slots ())

(defmethod niryo_robot_msgs::PingResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass niryo_robot_msgs::Ping
  :super ros::object
  :slots ())

(setf (get niryo_robot_msgs::Ping :md5sum-) "a02bbd4704518df654c6d45037dfc59f")
(setf (get niryo_robot_msgs::Ping :datatype-) "niryo_robot_msgs/Ping")
(setf (get niryo_robot_msgs::Ping :request) niryo_robot_msgs::PingRequest)
(setf (get niryo_robot_msgs::Ping :response) niryo_robot_msgs::PingResponse)

(defmethod niryo_robot_msgs::PingRequest
  (:response () (instance niryo_robot_msgs::PingResponse :init)))

(setf (get niryo_robot_msgs::PingRequest :md5sum-) "a02bbd4704518df654c6d45037dfc59f")
(setf (get niryo_robot_msgs::PingRequest :datatype-) "niryo_robot_msgs/PingRequest")
(setf (get niryo_robot_msgs::PingRequest :definition-)
      "string name
bool state
---

")

(setf (get niryo_robot_msgs::PingResponse :md5sum-) "a02bbd4704518df654c6d45037dfc59f")
(setf (get niryo_robot_msgs::PingResponse :datatype-) "niryo_robot_msgs/PingResponse")
(setf (get niryo_robot_msgs::PingResponse :definition-)
      "string name
bool state
---

")



(provide :niryo_robot_msgs/Ping "a02bbd4704518df654c6d45037dfc59f")


