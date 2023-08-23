;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_arm_commander::GetJointLimits)
  (if (not (find-package "NIRYO_ROBOT_ARM_COMMANDER"))
    (make-package "NIRYO_ROBOT_ARM_COMMANDER"))
  (shadow 'GetJointLimits (find-package "NIRYO_ROBOT_ARM_COMMANDER")))
(unless (find-package "NIRYO_ROBOT_ARM_COMMANDER::GETJOINTLIMITS")
  (make-package "NIRYO_ROBOT_ARM_COMMANDER::GETJOINTLIMITS"))
(unless (find-package "NIRYO_ROBOT_ARM_COMMANDER::GETJOINTLIMITSREQUEST")
  (make-package "NIRYO_ROBOT_ARM_COMMANDER::GETJOINTLIMITSREQUEST"))
(unless (find-package "NIRYO_ROBOT_ARM_COMMANDER::GETJOINTLIMITSRESPONSE")
  (make-package "NIRYO_ROBOT_ARM_COMMANDER::GETJOINTLIMITSRESPONSE"))

(in-package "ROS")





(defclass niryo_robot_arm_commander::GetJointLimitsRequest
  :super ros::object
  :slots ())

(defmethod niryo_robot_arm_commander::GetJointLimitsRequest
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

(defclass niryo_robot_arm_commander::GetJointLimitsResponse
  :super ros::object
  :slots (_joint_limits ))

(defmethod niryo_robot_arm_commander::GetJointLimitsResponse
  (:init
   (&key
    ((:joint_limits __joint_limits) ())
    )
   (send-super :init)
   (setq _joint_limits __joint_limits)
   self)
  (:joint_limits
   (&rest __joint_limits)
   (if (keywordp (car __joint_limits))
       (send* _joint_limits __joint_limits)
     (progn
       (if __joint_limits (setq _joint_limits (car __joint_limits)))
       _joint_limits)))
  (:serialization-length
   ()
   (+
    ;; niryo_robot_arm_commander/JointLimits[] _joint_limits
    (apply #'+ (send-all _joint_limits :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; niryo_robot_arm_commander/JointLimits[] _joint_limits
     (write-long (length _joint_limits) s)
     (dolist (elem _joint_limits)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; niryo_robot_arm_commander/JointLimits[] _joint_limits
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_limits (let (r) (dotimes (i n) (push (instance niryo_robot_arm_commander::JointLimits :init) r)) r))
     (dolist (elem- _joint_limits)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass niryo_robot_arm_commander::GetJointLimits
  :super ros::object
  :slots ())

(setf (get niryo_robot_arm_commander::GetJointLimits :md5sum-) "8ba7b9bef3b3cda7f3761fd7553bd662")
(setf (get niryo_robot_arm_commander::GetJointLimits :datatype-) "niryo_robot_arm_commander/GetJointLimits")
(setf (get niryo_robot_arm_commander::GetJointLimits :request) niryo_robot_arm_commander::GetJointLimitsRequest)
(setf (get niryo_robot_arm_commander::GetJointLimits :response) niryo_robot_arm_commander::GetJointLimitsResponse)

(defmethod niryo_robot_arm_commander::GetJointLimitsRequest
  (:response () (instance niryo_robot_arm_commander::GetJointLimitsResponse :init)))

(setf (get niryo_robot_arm_commander::GetJointLimitsRequest :md5sum-) "8ba7b9bef3b3cda7f3761fd7553bd662")
(setf (get niryo_robot_arm_commander::GetJointLimitsRequest :datatype-) "niryo_robot_arm_commander/GetJointLimitsRequest")
(setf (get niryo_robot_arm_commander::GetJointLimitsRequest :definition-)
      "---
niryo_robot_arm_commander/JointLimits[] joint_limits

================================================================================
MSG: niryo_robot_arm_commander/JointLimits
string name
float64 min
")

(setf (get niryo_robot_arm_commander::GetJointLimitsResponse :md5sum-) "8ba7b9bef3b3cda7f3761fd7553bd662")
(setf (get niryo_robot_arm_commander::GetJointLimitsResponse :datatype-) "niryo_robot_arm_commander/GetJointLimitsResponse")
(setf (get niryo_robot_arm_commander::GetJointLimitsResponse :definition-)
      "---
niryo_robot_arm_commander/JointLimits[] joint_limits

================================================================================
MSG: niryo_robot_arm_commander/JointLimits
string name
float64 min
")



(provide :niryo_robot_arm_commander/GetJointLimits "8ba7b9bef3b3cda7f3761fd7553bd662")


