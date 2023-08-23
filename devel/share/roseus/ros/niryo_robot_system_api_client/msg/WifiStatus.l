;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_system_api_client::WifiStatus)
  (if (not (find-package "NIRYO_ROBOT_SYSTEM_API_CLIENT"))
    (make-package "NIRYO_ROBOT_SYSTEM_API_CLIENT"))
  (shadow 'WifiStatus (find-package "NIRYO_ROBOT_SYSTEM_API_CLIENT")))
(unless (find-package "NIRYO_ROBOT_SYSTEM_API_CLIENT::WIFISTATUS")
  (make-package "NIRYO_ROBOT_SYSTEM_API_CLIENT::WIFISTATUS"))

(in-package "ROS")
;;//! \htmlinclude WifiStatus.msg.html


(intern "*UNKNOWN*" (find-package "NIRYO_ROBOT_SYSTEM_API_CLIENT::WIFISTATUS"))
(shadow '*UNKNOWN* (find-package "NIRYO_ROBOT_SYSTEM_API_CLIENT::WIFISTATUS"))
(defconstant niryo_robot_system_api_client::WifiStatus::*UNKNOWN* 0)
(intern "*HOTSPOT*" (find-package "NIRYO_ROBOT_SYSTEM_API_CLIENT::WIFISTATUS"))
(shadow '*HOTSPOT* (find-package "NIRYO_ROBOT_SYSTEM_API_CLIENT::WIFISTATUS"))
(defconstant niryo_robot_system_api_client::WifiStatus::*HOTSPOT* 1)
(intern "*DISABLED*" (find-package "NIRYO_ROBOT_SYSTEM_API_CLIENT::WIFISTATUS"))
(shadow '*DISABLED* (find-package "NIRYO_ROBOT_SYSTEM_API_CLIENT::WIFISTATUS"))
(defconstant niryo_robot_system_api_client::WifiStatus::*DISABLED* 2)
(intern "*CONNECTED*" (find-package "NIRYO_ROBOT_SYSTEM_API_CLIENT::WIFISTATUS"))
(shadow '*CONNECTED* (find-package "NIRYO_ROBOT_SYSTEM_API_CLIENT::WIFISTATUS"))
(defconstant niryo_robot_system_api_client::WifiStatus::*CONNECTED* 3)
(intern "*DISCONNECTED*" (find-package "NIRYO_ROBOT_SYSTEM_API_CLIENT::WIFISTATUS"))
(shadow '*DISCONNECTED* (find-package "NIRYO_ROBOT_SYSTEM_API_CLIENT::WIFISTATUS"))
(defconstant niryo_robot_system_api_client::WifiStatus::*DISCONNECTED* 4)

(defun niryo_robot_system_api_client::WifiStatus-to-symbol (const)
  (cond
        ((= const 0) 'niryo_robot_system_api_client::WifiStatus::*UNKNOWN*)
        ((= const 1) 'niryo_robot_system_api_client::WifiStatus::*HOTSPOT*)
        ((= const 2) 'niryo_robot_system_api_client::WifiStatus::*DISABLED*)
        ((= const 3) 'niryo_robot_system_api_client::WifiStatus::*CONNECTED*)
        ((= const 4) 'niryo_robot_system_api_client::WifiStatus::*DISCONNECTED*)
        (t nil)))

(defclass niryo_robot_system_api_client::WifiStatus
  :super ros::object
  :slots (_status ))

(defmethod niryo_robot_system_api_client::WifiStatus
  (:init
   (&key
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _status (round __status))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; int8 _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _status
       (write-byte _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _status 127) (setq _status (- _status 256)))
   ;;
   self)
  )

(setf (get niryo_robot_system_api_client::WifiStatus :md5sum-) "bd2f5ccbbf459aac04ecaee46d455e92")
(setf (get niryo_robot_system_api_client::WifiStatus :datatype-) "niryo_robot_system_api_client/WifiStatus")
(setf (get niryo_robot_system_api_client::WifiStatus :definition-)
      "int8 UNKNOWN = 0
int8 HOTSPOT = 1
int8 DISABLED = 2
int8 CONNECTED = 3
int8 DISCONNECTED = 4

int8 status
")



(provide :niryo_robot_system_api_client/WifiStatus "bd2f5ccbbf459aac04ecaee46d455e92")


