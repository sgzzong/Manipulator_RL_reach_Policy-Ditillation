;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_database::SetSettings)
  (if (not (find-package "NIRYO_ROBOT_DATABASE"))
    (make-package "NIRYO_ROBOT_DATABASE"))
  (shadow 'SetSettings (find-package "NIRYO_ROBOT_DATABASE")))
(unless (find-package "NIRYO_ROBOT_DATABASE::SETSETTINGS")
  (make-package "NIRYO_ROBOT_DATABASE::SETSETTINGS"))
(unless (find-package "NIRYO_ROBOT_DATABASE::SETSETTINGSREQUEST")
  (make-package "NIRYO_ROBOT_DATABASE::SETSETTINGSREQUEST"))
(unless (find-package "NIRYO_ROBOT_DATABASE::SETSETTINGSRESPONSE")
  (make-package "NIRYO_ROBOT_DATABASE::SETSETTINGSRESPONSE"))

(in-package "ROS")





(defclass niryo_robot_database::SetSettingsRequest
  :super ros::object
  :slots (_name _value _type ))

(defmethod niryo_robot_database::SetSettingsRequest
  (:init
   (&key
    ((:name __name) "")
    ((:value __value) "")
    ((:type __type) "")
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _value (string __value))
   (setq _type (string __type))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _value
    4 (length _value)
    ;; string _type
    4 (length _type)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _value
       (write-long (length _value) s) (princ _value s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _value
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _value (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass niryo_robot_database::SetSettingsResponse
  :super ros::object
  :slots (_status _message ))

(defmethod niryo_robot_database::SetSettingsResponse
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

(defclass niryo_robot_database::SetSettings
  :super ros::object
  :slots ())

(setf (get niryo_robot_database::SetSettings :md5sum-) "a322e71ecc5fde1d925d824e1734795f")
(setf (get niryo_robot_database::SetSettings :datatype-) "niryo_robot_database/SetSettings")
(setf (get niryo_robot_database::SetSettings :request) niryo_robot_database::SetSettingsRequest)
(setf (get niryo_robot_database::SetSettings :response) niryo_robot_database::SetSettingsResponse)

(defmethod niryo_robot_database::SetSettingsRequest
  (:response () (instance niryo_robot_database::SetSettingsResponse :init)))

(setf (get niryo_robot_database::SetSettingsRequest :md5sum-) "a322e71ecc5fde1d925d824e1734795f")
(setf (get niryo_robot_database::SetSettingsRequest :datatype-) "niryo_robot_database/SetSettingsRequest")
(setf (get niryo_robot_database::SetSettingsRequest :definition-)
      "string name
string value
string type
---
int32 status
string message
")

(setf (get niryo_robot_database::SetSettingsResponse :md5sum-) "a322e71ecc5fde1d925d824e1734795f")
(setf (get niryo_robot_database::SetSettingsResponse :datatype-) "niryo_robot_database/SetSettingsResponse")
(setf (get niryo_robot_database::SetSettingsResponse :definition-)
      "string name
string value
string type
---
int32 status
string message
")



(provide :niryo_robot_database/SetSettings "a322e71ecc5fde1d925d824e1734795f")


