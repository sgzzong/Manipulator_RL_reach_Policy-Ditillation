;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_system_api_client::ManageEthernet)
  (if (not (find-package "NIRYO_ROBOT_SYSTEM_API_CLIENT"))
    (make-package "NIRYO_ROBOT_SYSTEM_API_CLIENT"))
  (shadow 'ManageEthernet (find-package "NIRYO_ROBOT_SYSTEM_API_CLIENT")))
(unless (find-package "NIRYO_ROBOT_SYSTEM_API_CLIENT::MANAGEETHERNET")
  (make-package "NIRYO_ROBOT_SYSTEM_API_CLIENT::MANAGEETHERNET"))
(unless (find-package "NIRYO_ROBOT_SYSTEM_API_CLIENT::MANAGEETHERNETREQUEST")
  (make-package "NIRYO_ROBOT_SYSTEM_API_CLIENT::MANAGEETHERNETREQUEST"))
(unless (find-package "NIRYO_ROBOT_SYSTEM_API_CLIENT::MANAGEETHERNETRESPONSE")
  (make-package "NIRYO_ROBOT_SYSTEM_API_CLIENT::MANAGEETHERNETRESPONSE"))

(in-package "ROS")





(intern "*STATIC*" (find-package "NIRYO_ROBOT_SYSTEM_API_CLIENT::MANAGEETHERNETREQUEST"))
(shadow '*STATIC* (find-package "NIRYO_ROBOT_SYSTEM_API_CLIENT::MANAGEETHERNETREQUEST"))
(defconstant niryo_robot_system_api_client::ManageEthernetRequest::*STATIC* 1)
(intern "*AUTO*" (find-package "NIRYO_ROBOT_SYSTEM_API_CLIENT::MANAGEETHERNETREQUEST"))
(shadow '*AUTO* (find-package "NIRYO_ROBOT_SYSTEM_API_CLIENT::MANAGEETHERNETREQUEST"))
(defconstant niryo_robot_system_api_client::ManageEthernetRequest::*AUTO* 2)
(intern "*CUSTOM*" (find-package "NIRYO_ROBOT_SYSTEM_API_CLIENT::MANAGEETHERNETREQUEST"))
(shadow '*CUSTOM* (find-package "NIRYO_ROBOT_SYSTEM_API_CLIENT::MANAGEETHERNETREQUEST"))
(defconstant niryo_robot_system_api_client::ManageEthernetRequest::*CUSTOM* 3)

(defun niryo_robot_system_api_client::ManageEthernetRequest-to-symbol (const)
  (cond
        ((= const 1) 'niryo_robot_system_api_client::ManageEthernetRequest::*STATIC*)
        ((= const 2) 'niryo_robot_system_api_client::ManageEthernetRequest::*AUTO*)
        ((= const 3) 'niryo_robot_system_api_client::ManageEthernetRequest::*CUSTOM*)
        (t nil)))

(defclass niryo_robot_system_api_client::ManageEthernetRequest
  :super ros::object
  :slots (_profile _ip _mask _gateway _dns ))

(defmethod niryo_robot_system_api_client::ManageEthernetRequest
  (:init
   (&key
    ((:profile __profile) 0)
    ((:ip __ip) "")
    ((:mask __mask) "")
    ((:gateway __gateway) "")
    ((:dns __dns) "")
    )
   (send-super :init)
   (setq _profile (round __profile))
   (setq _ip (string __ip))
   (setq _mask (string __mask))
   (setq _gateway (string __gateway))
   (setq _dns (string __dns))
   self)
  (:profile
   (&optional __profile)
   (if __profile (setq _profile __profile)) _profile)
  (:ip
   (&optional __ip)
   (if __ip (setq _ip __ip)) _ip)
  (:mask
   (&optional __mask)
   (if __mask (setq _mask __mask)) _mask)
  (:gateway
   (&optional __gateway)
   (if __gateway (setq _gateway __gateway)) _gateway)
  (:dns
   (&optional __dns)
   (if __dns (setq _dns __dns)) _dns)
  (:serialization-length
   ()
   (+
    ;; int8 _profile
    1
    ;; string _ip
    4 (length _ip)
    ;; string _mask
    4 (length _mask)
    ;; string _gateway
    4 (length _gateway)
    ;; string _dns
    4 (length _dns)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _profile
       (write-byte _profile s)
     ;; string _ip
       (write-long (length _ip) s) (princ _ip s)
     ;; string _mask
       (write-long (length _mask) s) (princ _mask s)
     ;; string _gateway
       (write-long (length _gateway) s) (princ _gateway s)
     ;; string _dns
       (write-long (length _dns) s) (princ _dns s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _profile
     (setq _profile (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _profile 127) (setq _profile (- _profile 256)))
   ;; string _ip
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ip (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _mask
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mask (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _gateway
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _gateway (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _dns
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _dns (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass niryo_robot_system_api_client::ManageEthernetResponse
  :super ros::object
  :slots (_status _message ))

(defmethod niryo_robot_system_api_client::ManageEthernetResponse
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

(defclass niryo_robot_system_api_client::ManageEthernet
  :super ros::object
  :slots ())

(setf (get niryo_robot_system_api_client::ManageEthernet :md5sum-) "0a76b4b10cb91c7af82dd73375850740")
(setf (get niryo_robot_system_api_client::ManageEthernet :datatype-) "niryo_robot_system_api_client/ManageEthernet")
(setf (get niryo_robot_system_api_client::ManageEthernet :request) niryo_robot_system_api_client::ManageEthernetRequest)
(setf (get niryo_robot_system_api_client::ManageEthernet :response) niryo_robot_system_api_client::ManageEthernetResponse)

(defmethod niryo_robot_system_api_client::ManageEthernetRequest
  (:response () (instance niryo_robot_system_api_client::ManageEthernetResponse :init)))

(setf (get niryo_robot_system_api_client::ManageEthernetRequest :md5sum-) "0a76b4b10cb91c7af82dd73375850740")
(setf (get niryo_robot_system_api_client::ManageEthernetRequest :datatype-) "niryo_robot_system_api_client/ManageEthernetRequest")
(setf (get niryo_robot_system_api_client::ManageEthernetRequest :definition-)
      "int8 STATIC = 1
int8 AUTO = 2
int8 CUSTOM = 3

int8 profile

# Only for the custom profile
string ip       # ex: '192.168.1.73'
string mask     # ex: '255.255.255.0'
string gateway  # ex: '192.168.1.1'
# Optional
string dns      # ex: '8.8.8.8 4.4.4.4' separated by spaces

---
int32 status
string message

")

(setf (get niryo_robot_system_api_client::ManageEthernetResponse :md5sum-) "0a76b4b10cb91c7af82dd73375850740")
(setf (get niryo_robot_system_api_client::ManageEthernetResponse :datatype-) "niryo_robot_system_api_client/ManageEthernetResponse")
(setf (get niryo_robot_system_api_client::ManageEthernetResponse :definition-)
      "int8 STATIC = 1
int8 AUTO = 2
int8 CUSTOM = 3

int8 profile

# Only for the custom profile
string ip       # ex: '192.168.1.73'
string mask     # ex: '255.255.255.0'
string gateway  # ex: '192.168.1.1'
# Optional
string dns      # ex: '8.8.8.8 4.4.4.4' separated by spaces

---
int32 status
string message

")



(provide :niryo_robot_system_api_client/ManageEthernet "0a76b4b10cb91c7af82dd73375850740")


