;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_system_api_client::ManageWifi)
  (if (not (find-package "NIRYO_ROBOT_SYSTEM_API_CLIENT"))
    (make-package "NIRYO_ROBOT_SYSTEM_API_CLIENT"))
  (shadow 'ManageWifi (find-package "NIRYO_ROBOT_SYSTEM_API_CLIENT")))
(unless (find-package "NIRYO_ROBOT_SYSTEM_API_CLIENT::MANAGEWIFI")
  (make-package "NIRYO_ROBOT_SYSTEM_API_CLIENT::MANAGEWIFI"))
(unless (find-package "NIRYO_ROBOT_SYSTEM_API_CLIENT::MANAGEWIFIREQUEST")
  (make-package "NIRYO_ROBOT_SYSTEM_API_CLIENT::MANAGEWIFIREQUEST"))
(unless (find-package "NIRYO_ROBOT_SYSTEM_API_CLIENT::MANAGEWIFIRESPONSE")
  (make-package "NIRYO_ROBOT_SYSTEM_API_CLIENT::MANAGEWIFIRESPONSE"))

(in-package "ROS")





(intern "*HOTSPOT*" (find-package "NIRYO_ROBOT_SYSTEM_API_CLIENT::MANAGEWIFIREQUEST"))
(shadow '*HOTSPOT* (find-package "NIRYO_ROBOT_SYSTEM_API_CLIENT::MANAGEWIFIREQUEST"))
(defconstant niryo_robot_system_api_client::ManageWifiRequest::*HOTSPOT* 0)
(intern "*RESTART*" (find-package "NIRYO_ROBOT_SYSTEM_API_CLIENT::MANAGEWIFIREQUEST"))
(shadow '*RESTART* (find-package "NIRYO_ROBOT_SYSTEM_API_CLIENT::MANAGEWIFIREQUEST"))
(defconstant niryo_robot_system_api_client::ManageWifiRequest::*RESTART* 1)
(intern "*DEACTIVATE*" (find-package "NIRYO_ROBOT_SYSTEM_API_CLIENT::MANAGEWIFIREQUEST"))
(shadow '*DEACTIVATE* (find-package "NIRYO_ROBOT_SYSTEM_API_CLIENT::MANAGEWIFIREQUEST"))
(defconstant niryo_robot_system_api_client::ManageWifiRequest::*DEACTIVATE* 2)
(intern "*RECONNECT*" (find-package "NIRYO_ROBOT_SYSTEM_API_CLIENT::MANAGEWIFIREQUEST"))
(shadow '*RECONNECT* (find-package "NIRYO_ROBOT_SYSTEM_API_CLIENT::MANAGEWIFIREQUEST"))
(defconstant niryo_robot_system_api_client::ManageWifiRequest::*RECONNECT* 3)

(defun niryo_robot_system_api_client::ManageWifiRequest-to-symbol (const)
  (cond
        ((= const 0) 'niryo_robot_system_api_client::ManageWifiRequest::*HOTSPOT*)
        ((= const 1) 'niryo_robot_system_api_client::ManageWifiRequest::*RESTART*)
        ((= const 2) 'niryo_robot_system_api_client::ManageWifiRequest::*DEACTIVATE*)
        ((= const 3) 'niryo_robot_system_api_client::ManageWifiRequest::*RECONNECT*)
        (t nil)))

(defclass niryo_robot_system_api_client::ManageWifiRequest
  :super ros::object
  :slots (_cmd ))

(defmethod niryo_robot_system_api_client::ManageWifiRequest
  (:init
   (&key
    ((:cmd __cmd) 0)
    )
   (send-super :init)
   (setq _cmd (round __cmd))
   self)
  (:cmd
   (&optional __cmd)
   (if __cmd (setq _cmd __cmd)) _cmd)
  (:serialization-length
   ()
   (+
    ;; int8 _cmd
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _cmd
       (write-byte _cmd s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _cmd
     (setq _cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _cmd 127) (setq _cmd (- _cmd 256)))
   ;;
   self)
  )

(defclass niryo_robot_system_api_client::ManageWifiResponse
  :super ros::object
  :slots (_status _message ))

(defmethod niryo_robot_system_api_client::ManageWifiResponse
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

(defclass niryo_robot_system_api_client::ManageWifi
  :super ros::object
  :slots ())

(setf (get niryo_robot_system_api_client::ManageWifi :md5sum-) "4d5ca4afcd5a152aa9811d5aebf0b66f")
(setf (get niryo_robot_system_api_client::ManageWifi :datatype-) "niryo_robot_system_api_client/ManageWifi")
(setf (get niryo_robot_system_api_client::ManageWifi :request) niryo_robot_system_api_client::ManageWifiRequest)
(setf (get niryo_robot_system_api_client::ManageWifi :response) niryo_robot_system_api_client::ManageWifiResponse)

(defmethod niryo_robot_system_api_client::ManageWifiRequest
  (:response () (instance niryo_robot_system_api_client::ManageWifiResponse :init)))

(setf (get niryo_robot_system_api_client::ManageWifiRequest :md5sum-) "4d5ca4afcd5a152aa9811d5aebf0b66f")
(setf (get niryo_robot_system_api_client::ManageWifiRequest :datatype-) "niryo_robot_system_api_client/ManageWifiRequest")
(setf (get niryo_robot_system_api_client::ManageWifiRequest :definition-)
      "int8 HOTSPOT = 0
int8 RESTART = 1
int8 DEACTIVATE = 2
int8 RECONNECT = 3

int8 cmd
---
int32 status
string message

")

(setf (get niryo_robot_system_api_client::ManageWifiResponse :md5sum-) "4d5ca4afcd5a152aa9811d5aebf0b66f")
(setf (get niryo_robot_system_api_client::ManageWifiResponse :datatype-) "niryo_robot_system_api_client/ManageWifiResponse")
(setf (get niryo_robot_system_api_client::ManageWifiResponse :definition-)
      "int8 HOTSPOT = 0
int8 RESTART = 1
int8 DEACTIVATE = 2
int8 RECONNECT = 3

int8 cmd
---
int32 status
string message

")



(provide :niryo_robot_system_api_client/ManageWifi "4d5ca4afcd5a152aa9811d5aebf0b66f")


