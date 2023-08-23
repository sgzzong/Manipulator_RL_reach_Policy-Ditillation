;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_rpi::SetIOMode)
  (if (not (find-package "NIRYO_ROBOT_RPI"))
    (make-package "NIRYO_ROBOT_RPI"))
  (shadow 'SetIOMode (find-package "NIRYO_ROBOT_RPI")))
(unless (find-package "NIRYO_ROBOT_RPI::SETIOMODE")
  (make-package "NIRYO_ROBOT_RPI::SETIOMODE"))
(unless (find-package "NIRYO_ROBOT_RPI::SETIOMODEREQUEST")
  (make-package "NIRYO_ROBOT_RPI::SETIOMODEREQUEST"))
(unless (find-package "NIRYO_ROBOT_RPI::SETIOMODERESPONSE")
  (make-package "NIRYO_ROBOT_RPI::SETIOMODERESPONSE"))

(in-package "ROS")





(intern "*OUTPUT*" (find-package "NIRYO_ROBOT_RPI::SETIOMODEREQUEST"))
(shadow '*OUTPUT* (find-package "NIRYO_ROBOT_RPI::SETIOMODEREQUEST"))
(defconstant niryo_robot_rpi::SetIOModeRequest::*OUTPUT* 0)
(intern "*INPUT*" (find-package "NIRYO_ROBOT_RPI::SETIOMODEREQUEST"))
(shadow '*INPUT* (find-package "NIRYO_ROBOT_RPI::SETIOMODEREQUEST"))
(defconstant niryo_robot_rpi::SetIOModeRequest::*INPUT* 1)

(defun niryo_robot_rpi::SetIOModeRequest-to-symbol (const)
  (cond
        ((= const 0) 'niryo_robot_rpi::SetIOModeRequest::*OUTPUT*)
        ((= const 1) 'niryo_robot_rpi::SetIOModeRequest::*INPUT*)
        (t nil)))

(defclass niryo_robot_rpi::SetIOModeRequest
  :super ros::object
  :slots (_name _mode ))

(defmethod niryo_robot_rpi::SetIOModeRequest
  (:init
   (&key
    ((:name __name) "")
    ((:mode __mode) 0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _mode (round __mode))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; int8 _mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; int8 _mode
       (write-byte _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _mode 127) (setq _mode (- _mode 256)))
   ;;
   self)
  )

(defclass niryo_robot_rpi::SetIOModeResponse
  :super ros::object
  :slots (_status _message ))

(defmethod niryo_robot_rpi::SetIOModeResponse
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

(defclass niryo_robot_rpi::SetIOMode
  :super ros::object
  :slots ())

(setf (get niryo_robot_rpi::SetIOMode :md5sum-) "e64256c5a519b664f12a6733e4ed6478")
(setf (get niryo_robot_rpi::SetIOMode :datatype-) "niryo_robot_rpi/SetIOMode")
(setf (get niryo_robot_rpi::SetIOMode :request) niryo_robot_rpi::SetIOModeRequest)
(setf (get niryo_robot_rpi::SetIOMode :response) niryo_robot_rpi::SetIOModeResponse)

(defmethod niryo_robot_rpi::SetIOModeRequest
  (:response () (instance niryo_robot_rpi::SetIOModeResponse :init)))

(setf (get niryo_robot_rpi::SetIOModeRequest :md5sum-) "e64256c5a519b664f12a6733e4ed6478")
(setf (get niryo_robot_rpi::SetIOModeRequest :datatype-) "niryo_robot_rpi/SetIOModeRequest")
(setf (get niryo_robot_rpi::SetIOModeRequest :definition-)
      "string name

int8 OUTPUT = 0
int8 INPUT = 1
int8 mode

---
int32 status
string message

")

(setf (get niryo_robot_rpi::SetIOModeResponse :md5sum-) "e64256c5a519b664f12a6733e4ed6478")
(setf (get niryo_robot_rpi::SetIOModeResponse :datatype-) "niryo_robot_rpi/SetIOModeResponse")
(setf (get niryo_robot_rpi::SetIOModeResponse :definition-)
      "string name

int8 OUTPUT = 0
int8 INPUT = 1
int8 mode

---
int32 status
string message

")



(provide :niryo_robot_rpi/SetIOMode "e64256c5a519b664f12a6733e4ed6478")


