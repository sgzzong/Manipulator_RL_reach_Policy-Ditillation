;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_msgs::GetNameDescriptionList)
  (if (not (find-package "NIRYO_ROBOT_MSGS"))
    (make-package "NIRYO_ROBOT_MSGS"))
  (shadow 'GetNameDescriptionList (find-package "NIRYO_ROBOT_MSGS")))
(unless (find-package "NIRYO_ROBOT_MSGS::GETNAMEDESCRIPTIONLIST")
  (make-package "NIRYO_ROBOT_MSGS::GETNAMEDESCRIPTIONLIST"))
(unless (find-package "NIRYO_ROBOT_MSGS::GETNAMEDESCRIPTIONLISTREQUEST")
  (make-package "NIRYO_ROBOT_MSGS::GETNAMEDESCRIPTIONLISTREQUEST"))
(unless (find-package "NIRYO_ROBOT_MSGS::GETNAMEDESCRIPTIONLISTRESPONSE")
  (make-package "NIRYO_ROBOT_MSGS::GETNAMEDESCRIPTIONLISTRESPONSE"))

(in-package "ROS")





(defclass niryo_robot_msgs::GetNameDescriptionListRequest
  :super ros::object
  :slots ())

(defmethod niryo_robot_msgs::GetNameDescriptionListRequest
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

(defclass niryo_robot_msgs::GetNameDescriptionListResponse
  :super ros::object
  :slots (_name_list _description_list ))

(defmethod niryo_robot_msgs::GetNameDescriptionListResponse
  (:init
   (&key
    ((:name_list __name_list) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:description_list __description_list) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _name_list __name_list)
   (setq _description_list __description_list)
   self)
  (:name_list
   (&optional __name_list)
   (if __name_list (setq _name_list __name_list)) _name_list)
  (:description_list
   (&optional __description_list)
   (if __description_list (setq _description_list __description_list)) _description_list)
  (:serialization-length
   ()
   (+
    ;; string[] _name_list
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _name_list)) 4
    ;; string[] _description_list
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _description_list)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _name_list
     (write-long (length _name_list) s)
     (dolist (elem _name_list)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _description_list
     (write-long (length _description_list) s)
     (dolist (elem _description_list)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _name_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _name_list (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _name_list i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _description_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _description_list (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _description_list i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass niryo_robot_msgs::GetNameDescriptionList
  :super ros::object
  :slots ())

(setf (get niryo_robot_msgs::GetNameDescriptionList :md5sum-) "5361969a38863a729ef2e599380538df")
(setf (get niryo_robot_msgs::GetNameDescriptionList :datatype-) "niryo_robot_msgs/GetNameDescriptionList")
(setf (get niryo_robot_msgs::GetNameDescriptionList :request) niryo_robot_msgs::GetNameDescriptionListRequest)
(setf (get niryo_robot_msgs::GetNameDescriptionList :response) niryo_robot_msgs::GetNameDescriptionListResponse)

(defmethod niryo_robot_msgs::GetNameDescriptionListRequest
  (:response () (instance niryo_robot_msgs::GetNameDescriptionListResponse :init)))

(setf (get niryo_robot_msgs::GetNameDescriptionListRequest :md5sum-) "5361969a38863a729ef2e599380538df")
(setf (get niryo_robot_msgs::GetNameDescriptionListRequest :datatype-) "niryo_robot_msgs/GetNameDescriptionListRequest")
(setf (get niryo_robot_msgs::GetNameDescriptionListRequest :definition-)
      "---
string[] name_list
string[] description_list

")

(setf (get niryo_robot_msgs::GetNameDescriptionListResponse :md5sum-) "5361969a38863a729ef2e599380538df")
(setf (get niryo_robot_msgs::GetNameDescriptionListResponse :datatype-) "niryo_robot_msgs/GetNameDescriptionListResponse")
(setf (get niryo_robot_msgs::GetNameDescriptionListResponse :definition-)
      "---
string[] name_list
string[] description_list

")



(provide :niryo_robot_msgs/GetNameDescriptionList "5361969a38863a729ef2e599380538df")


