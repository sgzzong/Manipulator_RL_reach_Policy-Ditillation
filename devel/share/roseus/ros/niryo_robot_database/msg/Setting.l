;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_database::Setting)
  (if (not (find-package "NIRYO_ROBOT_DATABASE"))
    (make-package "NIRYO_ROBOT_DATABASE"))
  (shadow 'Setting (find-package "NIRYO_ROBOT_DATABASE")))
(unless (find-package "NIRYO_ROBOT_DATABASE::SETTING")
  (make-package "NIRYO_ROBOT_DATABASE::SETTING"))

(in-package "ROS")
;;//! \htmlinclude Setting.msg.html


(defclass niryo_robot_database::Setting
  :super ros::object
  :slots (_name _value _type ))

(defmethod niryo_robot_database::Setting
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

(setf (get niryo_robot_database::Setting :md5sum-) "4851756ee6b781982d167580edb0773b")
(setf (get niryo_robot_database::Setting :datatype-) "niryo_robot_database/Setting")
(setf (get niryo_robot_database::Setting :definition-)
      "string name
string value
string type

")



(provide :niryo_robot_database/Setting "4851756ee6b781982d167580edb0773b")


