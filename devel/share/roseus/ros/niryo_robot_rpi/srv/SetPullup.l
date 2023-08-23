;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_rpi::SetPullup)
  (if (not (find-package "NIRYO_ROBOT_RPI"))
    (make-package "NIRYO_ROBOT_RPI"))
  (shadow 'SetPullup (find-package "NIRYO_ROBOT_RPI")))
(unless (find-package "NIRYO_ROBOT_RPI::SETPULLUP")
  (make-package "NIRYO_ROBOT_RPI::SETPULLUP"))
(unless (find-package "NIRYO_ROBOT_RPI::SETPULLUPREQUEST")
  (make-package "NIRYO_ROBOT_RPI::SETPULLUPREQUEST"))
(unless (find-package "NIRYO_ROBOT_RPI::SETPULLUPRESPONSE")
  (make-package "NIRYO_ROBOT_RPI::SETPULLUPRESPONSE"))

(in-package "ROS")





(defclass niryo_robot_rpi::SetPullupRequest
  :super ros::object
  :slots (_name _enable ))

(defmethod niryo_robot_rpi::SetPullupRequest
  (:init
   (&key
    ((:name __name) "")
    ((:enable __enable) nil)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _enable __enable)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:enable
   (&optional (__enable :null))
   (if (not (eq __enable :null)) (setq _enable __enable)) _enable)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; bool _enable
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; bool _enable
       (if _enable (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _enable
     (setq _enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass niryo_robot_rpi::SetPullupResponse
  :super ros::object
  :slots (_status _message ))

(defmethod niryo_robot_rpi::SetPullupResponse
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

(defclass niryo_robot_rpi::SetPullup
  :super ros::object
  :slots ())

(setf (get niryo_robot_rpi::SetPullup :md5sum-) "d13517c619d7e12dd61126d0d18d4c6b")
(setf (get niryo_robot_rpi::SetPullup :datatype-) "niryo_robot_rpi/SetPullup")
(setf (get niryo_robot_rpi::SetPullup :request) niryo_robot_rpi::SetPullupRequest)
(setf (get niryo_robot_rpi::SetPullup :response) niryo_robot_rpi::SetPullupResponse)

(defmethod niryo_robot_rpi::SetPullupRequest
  (:response () (instance niryo_robot_rpi::SetPullupResponse :init)))

(setf (get niryo_robot_rpi::SetPullupRequest :md5sum-) "d13517c619d7e12dd61126d0d18d4c6b")
(setf (get niryo_robot_rpi::SetPullupRequest :datatype-) "niryo_robot_rpi/SetPullupRequest")
(setf (get niryo_robot_rpi::SetPullupRequest :definition-)
      "string name
bool enable

---
int32 status
string message

")

(setf (get niryo_robot_rpi::SetPullupResponse :md5sum-) "d13517c619d7e12dd61126d0d18d4c6b")
(setf (get niryo_robot_rpi::SetPullupResponse :datatype-) "niryo_robot_rpi/SetPullupResponse")
(setf (get niryo_robot_rpi::SetPullupResponse :definition-)
      "string name
bool enable

---
int32 status
string message

")



(provide :niryo_robot_rpi/SetPullup "d13517c619d7e12dd61126d0d18d4c6b")


