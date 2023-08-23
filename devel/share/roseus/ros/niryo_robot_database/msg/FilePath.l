;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_database::FilePath)
  (if (not (find-package "NIRYO_ROBOT_DATABASE"))
    (make-package "NIRYO_ROBOT_DATABASE"))
  (shadow 'FilePath (find-package "NIRYO_ROBOT_DATABASE")))
(unless (find-package "NIRYO_ROBOT_DATABASE::FILEPATH")
  (make-package "NIRYO_ROBOT_DATABASE::FILEPATH"))

(in-package "ROS")
;;//! \htmlinclude FilePath.msg.html


(defclass niryo_robot_database::FilePath
  :super ros::object
  :slots (_id _type _name _date _path ))

(defmethod niryo_robot_database::FilePath
  (:init
   (&key
    ((:id __id) "")
    ((:type __type) "")
    ((:name __name) "")
    ((:date __date) "")
    ((:path __path) "")
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _type (string __type))
   (setq _name (string __name))
   (setq _date (string __date))
   (setq _path (string __path))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:date
   (&optional __date)
   (if __date (setq _date __date)) _date)
  (:path
   (&optional __path)
   (if __path (setq _path __path)) _path)
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; string _type
    4 (length _type)
    ;; string _name
    4 (length _name)
    ;; string _date
    4 (length _date)
    ;; string _path
    4 (length _path)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _date
       (write-long (length _date) s) (princ _date s)
     ;; string _path
       (write-long (length _path) s) (princ _path s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _date
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _date (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get niryo_robot_database::FilePath :md5sum-) "6014ba6d7fb42c93ee97c2dc539153ab")
(setf (get niryo_robot_database::FilePath :datatype-) "niryo_robot_database/FilePath")
(setf (get niryo_robot_database::FilePath :definition-)
      "string id
string type
string name
string date
string path
")



(provide :niryo_robot_database/FilePath "6014ba6d7fb42c93ee97c2dc539153ab")


