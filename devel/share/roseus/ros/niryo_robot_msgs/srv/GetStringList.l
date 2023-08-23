;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_msgs::GetStringList)
  (if (not (find-package "NIRYO_ROBOT_MSGS"))
    (make-package "NIRYO_ROBOT_MSGS"))
  (shadow 'GetStringList (find-package "NIRYO_ROBOT_MSGS")))
(unless (find-package "NIRYO_ROBOT_MSGS::GETSTRINGLIST")
  (make-package "NIRYO_ROBOT_MSGS::GETSTRINGLIST"))
(unless (find-package "NIRYO_ROBOT_MSGS::GETSTRINGLISTREQUEST")
  (make-package "NIRYO_ROBOT_MSGS::GETSTRINGLISTREQUEST"))
(unless (find-package "NIRYO_ROBOT_MSGS::GETSTRINGLISTRESPONSE")
  (make-package "NIRYO_ROBOT_MSGS::GETSTRINGLISTRESPONSE"))

(in-package "ROS")





(defclass niryo_robot_msgs::GetStringListRequest
  :super ros::object
  :slots ())

(defmethod niryo_robot_msgs::GetStringListRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass niryo_robot_msgs::GetStringListResponse
  :super ros::object
  :slots (_string_list ))

(defmethod niryo_robot_msgs::GetStringListResponse
  (:init
   (&key
    ((:string_list __string_list) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _string_list __string_list)
   self)
  (:string_list
   (&optional __string_list)
   (if __string_list (setq _string_list __string_list)) _string_list)
  (:serialization-length
   ()
   (+
    ;; string[] _string_list
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _string_list)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _string_list
     (write-long (length _string_list) s)
     (dolist (elem _string_list)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _string_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _string_list (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _string_list i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass niryo_robot_msgs::GetStringList
  :super ros::object
  :slots ())

(setf (get niryo_robot_msgs::GetStringList :md5sum-) "b98f2fc9ff4290143d964bc0d59df60a")
(setf (get niryo_robot_msgs::GetStringList :datatype-) "niryo_robot_msgs/GetStringList")
(setf (get niryo_robot_msgs::GetStringList :request) niryo_robot_msgs::GetStringListRequest)
(setf (get niryo_robot_msgs::GetStringList :response) niryo_robot_msgs::GetStringListResponse)

(defmethod niryo_robot_msgs::GetStringListRequest
  (:response () (instance niryo_robot_msgs::GetStringListResponse :init)))

(setf (get niryo_robot_msgs::GetStringListRequest :md5sum-) "b98f2fc9ff4290143d964bc0d59df60a")
(setf (get niryo_robot_msgs::GetStringListRequest :datatype-) "niryo_robot_msgs/GetStringListRequest")
(setf (get niryo_robot_msgs::GetStringListRequest :definition-)
      "---
string[] string_list

")

(setf (get niryo_robot_msgs::GetStringListResponse :md5sum-) "b98f2fc9ff4290143d964bc0d59df60a")
(setf (get niryo_robot_msgs::GetStringListResponse :datatype-) "niryo_robot_msgs/GetStringListResponse")
(setf (get niryo_robot_msgs::GetStringListResponse :definition-)
      "---
string[] string_list

")



(provide :niryo_robot_msgs/GetStringList "b98f2fc9ff4290143d964bc0d59df60a")


