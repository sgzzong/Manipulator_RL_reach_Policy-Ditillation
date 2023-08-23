;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_vision::SetImageParameter)
  (if (not (find-package "NIRYO_ROBOT_VISION"))
    (make-package "NIRYO_ROBOT_VISION"))
  (shadow 'SetImageParameter (find-package "NIRYO_ROBOT_VISION")))
(unless (find-package "NIRYO_ROBOT_VISION::SETIMAGEPARAMETER")
  (make-package "NIRYO_ROBOT_VISION::SETIMAGEPARAMETER"))
(unless (find-package "NIRYO_ROBOT_VISION::SETIMAGEPARAMETERREQUEST")
  (make-package "NIRYO_ROBOT_VISION::SETIMAGEPARAMETERREQUEST"))
(unless (find-package "NIRYO_ROBOT_VISION::SETIMAGEPARAMETERRESPONSE")
  (make-package "NIRYO_ROBOT_VISION::SETIMAGEPARAMETERRESPONSE"))

(in-package "ROS")





(defclass niryo_robot_vision::SetImageParameterRequest
  :super ros::object
  :slots (_factor ))

(defmethod niryo_robot_vision::SetImageParameterRequest
  (:init
   (&key
    ((:factor __factor) 0.0)
    )
   (send-super :init)
   (setq _factor (float __factor))
   self)
  (:factor
   (&optional __factor)
   (if __factor (setq _factor __factor)) _factor)
  (:serialization-length
   ()
   (+
    ;; float64 _factor
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _factor
       (sys::poke _factor (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _factor
     (setq _factor (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass niryo_robot_vision::SetImageParameterResponse
  :super ros::object
  :slots (_status _message ))

(defmethod niryo_robot_vision::SetImageParameterResponse
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

(defclass niryo_robot_vision::SetImageParameter
  :super ros::object
  :slots ())

(setf (get niryo_robot_vision::SetImageParameter :md5sum-) "79e36a79455733779ca17a0bc2617f46")
(setf (get niryo_robot_vision::SetImageParameter :datatype-) "niryo_robot_vision/SetImageParameter")
(setf (get niryo_robot_vision::SetImageParameter :request) niryo_robot_vision::SetImageParameterRequest)
(setf (get niryo_robot_vision::SetImageParameter :response) niryo_robot_vision::SetImageParameterResponse)

(defmethod niryo_robot_vision::SetImageParameterRequest
  (:response () (instance niryo_robot_vision::SetImageParameterResponse :init)))

(setf (get niryo_robot_vision::SetImageParameterRequest :md5sum-) "79e36a79455733779ca17a0bc2617f46")
(setf (get niryo_robot_vision::SetImageParameterRequest :datatype-) "niryo_robot_vision/SetImageParameterRequest")
(setf (get niryo_robot_vision::SetImageParameterRequest :definition-)
      "float64 factor
---
int32 status
string message

")

(setf (get niryo_robot_vision::SetImageParameterResponse :md5sum-) "79e36a79455733779ca17a0bc2617f46")
(setf (get niryo_robot_vision::SetImageParameterResponse :datatype-) "niryo_robot_vision/SetImageParameterResponse")
(setf (get niryo_robot_vision::SetImageParameterResponse :definition-)
      "float64 factor
---
int32 status
string message

")



(provide :niryo_robot_vision/SetImageParameter "79e36a79455733779ca17a0bc2617f46")


