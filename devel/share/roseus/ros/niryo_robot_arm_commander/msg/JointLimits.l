;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_arm_commander::JointLimits)
  (if (not (find-package "NIRYO_ROBOT_ARM_COMMANDER"))
    (make-package "NIRYO_ROBOT_ARM_COMMANDER"))
  (shadow 'JointLimits (find-package "NIRYO_ROBOT_ARM_COMMANDER")))
(unless (find-package "NIRYO_ROBOT_ARM_COMMANDER::JOINTLIMITS")
  (make-package "NIRYO_ROBOT_ARM_COMMANDER::JOINTLIMITS"))

(in-package "ROS")
;;//! \htmlinclude JointLimits.msg.html


(defclass niryo_robot_arm_commander::JointLimits
  :super ros::object
  :slots (_name _min _max ))

(defmethod niryo_robot_arm_commander::JointLimits
  (:init
   (&key
    ((:name __name) "")
    ((:min __min) 0.0)
    ((:max __max) 0.0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _min (float __min))
   (setq _max (float __max))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:min
   (&optional __min)
   (if __min (setq _min __min)) _min)
  (:max
   (&optional __max)
   (if __max (setq _max __max)) _max)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; float64 _min
    8
    ;; float64 _max
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float64 _min
       (sys::poke _min (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max
       (sys::poke _max (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _min
     (setq _min (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max
     (setq _max (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get niryo_robot_arm_commander::JointLimits :md5sum-) "ef2fdc304582ee66b1e713dcd141f286")
(setf (get niryo_robot_arm_commander::JointLimits :datatype-) "niryo_robot_arm_commander/JointLimits")
(setf (get niryo_robot_arm_commander::JointLimits :definition-)
      "string name
float64 min
float64 max
")



(provide :niryo_robot_arm_commander/JointLimits "ef2fdc304582ee66b1e713dcd141f286")


