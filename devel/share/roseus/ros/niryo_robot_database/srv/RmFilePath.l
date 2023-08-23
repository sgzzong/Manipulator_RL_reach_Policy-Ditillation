;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_database::RmFilePath)
  (if (not (find-package "NIRYO_ROBOT_DATABASE"))
    (make-package "NIRYO_ROBOT_DATABASE"))
  (shadow 'RmFilePath (find-package "NIRYO_ROBOT_DATABASE")))
(unless (find-package "NIRYO_ROBOT_DATABASE::RMFILEPATH")
  (make-package "NIRYO_ROBOT_DATABASE::RMFILEPATH"))
(unless (find-package "NIRYO_ROBOT_DATABASE::RMFILEPATHREQUEST")
  (make-package "NIRYO_ROBOT_DATABASE::RMFILEPATHREQUEST"))
(unless (find-package "NIRYO_ROBOT_DATABASE::RMFILEPATHRESPONSE")
  (make-package "NIRYO_ROBOT_DATABASE::RMFILEPATHRESPONSE"))

(in-package "ROS")





(defclass niryo_robot_database::RmFilePathRequest
  :super ros::object
  :slots (_id ))

(defmethod niryo_robot_database::RmFilePathRequest
  (:init
   (&key
    ((:id __id) "")
    )
   (send-super :init)
   (setq _id (string __id))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass niryo_robot_database::RmFilePathResponse
  :super ros::object
  :slots (_status _message ))

(defmethod niryo_robot_database::RmFilePathResponse
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

(defclass niryo_robot_database::RmFilePath
  :super ros::object
  :slots ())

(setf (get niryo_robot_database::RmFilePath :md5sum-) "9c7652f8ca86117a5e2260e9a8afa960")
(setf (get niryo_robot_database::RmFilePath :datatype-) "niryo_robot_database/RmFilePath")
(setf (get niryo_robot_database::RmFilePath :request) niryo_robot_database::RmFilePathRequest)
(setf (get niryo_robot_database::RmFilePath :response) niryo_robot_database::RmFilePathResponse)

(defmethod niryo_robot_database::RmFilePathRequest
  (:response () (instance niryo_robot_database::RmFilePathResponse :init)))

(setf (get niryo_robot_database::RmFilePathRequest :md5sum-) "9c7652f8ca86117a5e2260e9a8afa960")
(setf (get niryo_robot_database::RmFilePathRequest :datatype-) "niryo_robot_database/RmFilePathRequest")
(setf (get niryo_robot_database::RmFilePathRequest :definition-)
      "string id
---
int32 status
string message
")

(setf (get niryo_robot_database::RmFilePathResponse :md5sum-) "9c7652f8ca86117a5e2260e9a8afa960")
(setf (get niryo_robot_database::RmFilePathResponse :datatype-) "niryo_robot_database/RmFilePathResponse")
(setf (get niryo_robot_database::RmFilePathResponse :definition-)
      "string id
---
int32 status
string message
")



(provide :niryo_robot_database/RmFilePath "9c7652f8ca86117a5e2260e9a8afa960")


