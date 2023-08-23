;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_database::GetAllByType)
  (if (not (find-package "NIRYO_ROBOT_DATABASE"))
    (make-package "NIRYO_ROBOT_DATABASE"))
  (shadow 'GetAllByType (find-package "NIRYO_ROBOT_DATABASE")))
(unless (find-package "NIRYO_ROBOT_DATABASE::GETALLBYTYPE")
  (make-package "NIRYO_ROBOT_DATABASE::GETALLBYTYPE"))
(unless (find-package "NIRYO_ROBOT_DATABASE::GETALLBYTYPEREQUEST")
  (make-package "NIRYO_ROBOT_DATABASE::GETALLBYTYPEREQUEST"))
(unless (find-package "NIRYO_ROBOT_DATABASE::GETALLBYTYPERESPONSE")
  (make-package "NIRYO_ROBOT_DATABASE::GETALLBYTYPERESPONSE"))

(in-package "ROS")





(defclass niryo_robot_database::GetAllByTypeRequest
  :super ros::object
  :slots (_type ))

(defmethod niryo_robot_database::GetAllByTypeRequest
  (:init
   (&key
    ((:type __type) "")
    )
   (send-super :init)
   (setq _type (string __type))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; string _type
    4 (length _type)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass niryo_robot_database::GetAllByTypeResponse
  :super ros::object
  :slots (_status _filepaths ))

(defmethod niryo_robot_database::GetAllByTypeResponse
  (:init
   (&key
    ((:status __status) 0)
    ((:filepaths __filepaths) ())
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _filepaths __filepaths)
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:filepaths
   (&rest __filepaths)
   (if (keywordp (car __filepaths))
       (send* _filepaths __filepaths)
     (progn
       (if __filepaths (setq _filepaths (car __filepaths)))
       _filepaths)))
  (:serialization-length
   ()
   (+
    ;; int32 _status
    4
    ;; niryo_robot_database/FilePath[] _filepaths
    (apply #'+ (send-all _filepaths :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;; niryo_robot_database/FilePath[] _filepaths
     (write-long (length _filepaths) s)
     (dolist (elem _filepaths)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; niryo_robot_database/FilePath[] _filepaths
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _filepaths (let (r) (dotimes (i n) (push (instance niryo_robot_database::FilePath :init) r)) r))
     (dolist (elem- _filepaths)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass niryo_robot_database::GetAllByType
  :super ros::object
  :slots ())

(setf (get niryo_robot_database::GetAllByType :md5sum-) "d0918913b1da75a353e2e08189fdf5e5")
(setf (get niryo_robot_database::GetAllByType :datatype-) "niryo_robot_database/GetAllByType")
(setf (get niryo_robot_database::GetAllByType :request) niryo_robot_database::GetAllByTypeRequest)
(setf (get niryo_robot_database::GetAllByType :response) niryo_robot_database::GetAllByTypeResponse)

(defmethod niryo_robot_database::GetAllByTypeRequest
  (:response () (instance niryo_robot_database::GetAllByTypeResponse :init)))

(setf (get niryo_robot_database::GetAllByTypeRequest :md5sum-) "d0918913b1da75a353e2e08189fdf5e5")
(setf (get niryo_robot_database::GetAllByTypeRequest :datatype-) "niryo_robot_database/GetAllByTypeRequest")
(setf (get niryo_robot_database::GetAllByTypeRequest :definition-)
      "string type
---
int32 status
FilePath[] filepaths

================================================================================
MSG: niryo_robot_database/FilePath
string id
string type
string name
string date
")

(setf (get niryo_robot_database::GetAllByTypeResponse :md5sum-) "d0918913b1da75a353e2e08189fdf5e5")
(setf (get niryo_robot_database::GetAllByTypeResponse :datatype-) "niryo_robot_database/GetAllByTypeResponse")
(setf (get niryo_robot_database::GetAllByTypeResponse :definition-)
      "string type
---
int32 status
FilePath[] filepaths

================================================================================
MSG: niryo_robot_database/FilePath
string id
string type
string name
string date
")



(provide :niryo_robot_database/GetAllByType "d0918913b1da75a353e2e08189fdf5e5")


