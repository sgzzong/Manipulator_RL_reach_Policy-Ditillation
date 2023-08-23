;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_database::AddFilePath)
  (if (not (find-package "NIRYO_ROBOT_DATABASE"))
    (make-package "NIRYO_ROBOT_DATABASE"))
  (shadow 'AddFilePath (find-package "NIRYO_ROBOT_DATABASE")))
(unless (find-package "NIRYO_ROBOT_DATABASE::ADDFILEPATH")
  (make-package "NIRYO_ROBOT_DATABASE::ADDFILEPATH"))
(unless (find-package "NIRYO_ROBOT_DATABASE::ADDFILEPATHREQUEST")
  (make-package "NIRYO_ROBOT_DATABASE::ADDFILEPATHREQUEST"))
(unless (find-package "NIRYO_ROBOT_DATABASE::ADDFILEPATHRESPONSE")
  (make-package "NIRYO_ROBOT_DATABASE::ADDFILEPATHRESPONSE"))

(in-package "ROS")





(defclass niryo_robot_database::AddFilePathRequest
  :super ros::object
  :slots (_type _name _path ))

(defmethod niryo_robot_database::AddFilePathRequest
  (:init
   (&key
    ((:type __type) "")
    ((:name __name) "")
    ((:path __path) "")
    )
   (send-super :init)
   (setq _type (string __type))
   (setq _name (string __name))
   (setq _path (string __path))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:path
   (&optional __path)
   (if __path (setq _path __path)) _path)
  (:serialization-length
   ()
   (+
    ;; string _type
    4 (length _type)
    ;; string _name
    4 (length _name)
    ;; string _path
    4 (length _path)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _path
       (write-long (length _path) s) (princ _path s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass niryo_robot_database::AddFilePathResponse
  :super ros::object
  :slots (_status _message ))

(defmethod niryo_robot_database::AddFilePathResponse
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

(defclass niryo_robot_database::AddFilePath
  :super ros::object
  :slots ())

(setf (get niryo_robot_database::AddFilePath :md5sum-) "9b37d66f02e489bae639ec70c5dd2e80")
(setf (get niryo_robot_database::AddFilePath :datatype-) "niryo_robot_database/AddFilePath")
(setf (get niryo_robot_database::AddFilePath :request) niryo_robot_database::AddFilePathRequest)
(setf (get niryo_robot_database::AddFilePath :response) niryo_robot_database::AddFilePathResponse)

(defmethod niryo_robot_database::AddFilePathRequest
  (:response () (instance niryo_robot_database::AddFilePathResponse :init)))

(setf (get niryo_robot_database::AddFilePathRequest :md5sum-) "9b37d66f02e489bae639ec70c5dd2e80")
(setf (get niryo_robot_database::AddFilePathRequest :datatype-) "niryo_robot_database/AddFilePathRequest")
(setf (get niryo_robot_database::AddFilePathRequest :definition-)
      "string type
string name
string path
---
int32 status
string message
")

(setf (get niryo_robot_database::AddFilePathResponse :md5sum-) "9b37d66f02e489bae639ec70c5dd2e80")
(setf (get niryo_robot_database::AddFilePathResponse :datatype-) "niryo_robot_database/AddFilePathResponse")
(setf (get niryo_robot_database::AddFilePathResponse :definition-)
      "string type
string name
string path
---
int32 status
string message
")



(provide :niryo_robot_database/AddFilePath "9b37d66f02e489bae639ec70c5dd2e80")


