;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_database::GetSettings)
  (if (not (find-package "NIRYO_ROBOT_DATABASE"))
    (make-package "NIRYO_ROBOT_DATABASE"))
  (shadow 'GetSettings (find-package "NIRYO_ROBOT_DATABASE")))
(unless (find-package "NIRYO_ROBOT_DATABASE::GETSETTINGS")
  (make-package "NIRYO_ROBOT_DATABASE::GETSETTINGS"))
(unless (find-package "NIRYO_ROBOT_DATABASE::GETSETTINGSREQUEST")
  (make-package "NIRYO_ROBOT_DATABASE::GETSETTINGSREQUEST"))
(unless (find-package "NIRYO_ROBOT_DATABASE::GETSETTINGSRESPONSE")
  (make-package "NIRYO_ROBOT_DATABASE::GETSETTINGSRESPONSE"))

(in-package "ROS")





(defclass niryo_robot_database::GetSettingsRequest
  :super ros::object
  :slots (_name ))

(defmethod niryo_robot_database::GetSettingsRequest
  (:init
   (&key
    ((:name __name) "")
    )
   (send-super :init)
   (setq _name (string __name))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass niryo_robot_database::GetSettingsResponse
  :super ros::object
  :slots (_status _value _type ))

(defmethod niryo_robot_database::GetSettingsResponse
  (:init
   (&key
    ((:status __status) 0)
    ((:value __value) "")
    ((:type __type) "")
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _value (string __value))
   (setq _type (string __type))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; int32 _status
    4
    ;; string _value
    4 (length _value)
    ;; string _type
    4 (length _type)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;; string _value
       (write-long (length _value) s) (princ _value s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _value
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _value (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass niryo_robot_database::GetSettings
  :super ros::object
  :slots ())

(setf (get niryo_robot_database::GetSettings :md5sum-) "7cf0f7925d72841bac86144a95c7aee5")
(setf (get niryo_robot_database::GetSettings :datatype-) "niryo_robot_database/GetSettings")
(setf (get niryo_robot_database::GetSettings :request) niryo_robot_database::GetSettingsRequest)
(setf (get niryo_robot_database::GetSettings :response) niryo_robot_database::GetSettingsResponse)

(defmethod niryo_robot_database::GetSettingsRequest
  (:response () (instance niryo_robot_database::GetSettingsResponse :init)))

(setf (get niryo_robot_database::GetSettingsRequest :md5sum-) "7cf0f7925d72841bac86144a95c7aee5")
(setf (get niryo_robot_database::GetSettingsRequest :datatype-) "niryo_robot_database/GetSettingsRequest")
(setf (get niryo_robot_database::GetSettingsRequest :definition-)
      "string name
---
int32 status
string value
string type
")

(setf (get niryo_robot_database::GetSettingsResponse :md5sum-) "7cf0f7925d72841bac86144a95c7aee5")
(setf (get niryo_robot_database::GetSettingsResponse :datatype-) "niryo_robot_database/GetSettingsResponse")
(setf (get niryo_robot_database::GetSettingsResponse :definition-)
      "string name
---
int32 status
string value
string type
")



(provide :niryo_robot_database/GetSettings "7cf0f7925d72841bac86144a95c7aee5")


