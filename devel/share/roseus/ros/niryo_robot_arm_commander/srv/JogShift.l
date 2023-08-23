;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_arm_commander::JogShift)
  (if (not (find-package "NIRYO_ROBOT_ARM_COMMANDER"))
    (make-package "NIRYO_ROBOT_ARM_COMMANDER"))
  (shadow 'JogShift (find-package "NIRYO_ROBOT_ARM_COMMANDER")))
(unless (find-package "NIRYO_ROBOT_ARM_COMMANDER::JOGSHIFT")
  (make-package "NIRYO_ROBOT_ARM_COMMANDER::JOGSHIFT"))
(unless (find-package "NIRYO_ROBOT_ARM_COMMANDER::JOGSHIFTREQUEST")
  (make-package "NIRYO_ROBOT_ARM_COMMANDER::JOGSHIFTREQUEST"))
(unless (find-package "NIRYO_ROBOT_ARM_COMMANDER::JOGSHIFTRESPONSE")
  (make-package "NIRYO_ROBOT_ARM_COMMANDER::JOGSHIFTRESPONSE"))

(in-package "ROS")





(intern "*JOINTS_SHIFT*" (find-package "NIRYO_ROBOT_ARM_COMMANDER::JOGSHIFTREQUEST"))
(shadow '*JOINTS_SHIFT* (find-package "NIRYO_ROBOT_ARM_COMMANDER::JOGSHIFTREQUEST"))
(defconstant niryo_robot_arm_commander::JogShiftRequest::*JOINTS_SHIFT* 1)
(intern "*POSE_SHIFT*" (find-package "NIRYO_ROBOT_ARM_COMMANDER::JOGSHIFTREQUEST"))
(shadow '*POSE_SHIFT* (find-package "NIRYO_ROBOT_ARM_COMMANDER::JOGSHIFTREQUEST"))
(defconstant niryo_robot_arm_commander::JogShiftRequest::*POSE_SHIFT* 2)

(defun niryo_robot_arm_commander::JogShiftRequest-to-symbol (const)
  (cond
        ((= const 1) 'niryo_robot_arm_commander::JogShiftRequest::*JOINTS_SHIFT*)
        ((= const 2) 'niryo_robot_arm_commander::JogShiftRequest::*POSE_SHIFT*)
        (t nil)))

(defclass niryo_robot_arm_commander::JogShiftRequest
  :super ros::object
  :slots (_cmd _shift_values ))

(defmethod niryo_robot_arm_commander::JogShiftRequest
  (:init
   (&key
    ((:cmd __cmd) 0)
    ((:shift_values __shift_values) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _cmd (round __cmd))
   (setq _shift_values __shift_values)
   self)
  (:cmd
   (&optional __cmd)
   (if __cmd (setq _cmd __cmd)) _cmd)
  (:shift_values
   (&optional __shift_values)
   (if __shift_values (setq _shift_values __shift_values)) _shift_values)
  (:serialization-length
   ()
   (+
    ;; int32 _cmd
    4
    ;; float32[] _shift_values
    (* 4    (length _shift_values)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _cmd
       (write-long _cmd s)
     ;; float32[] _shift_values
     (write-long (length _shift_values) s)
     (dotimes (i (length _shift_values))
       (sys::poke (elt _shift_values i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _cmd
     (setq _cmd (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _shift_values
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _shift_values (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _shift_values i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass niryo_robot_arm_commander::JogShiftResponse
  :super ros::object
  :slots (_status _message ))

(defmethod niryo_robot_arm_commander::JogShiftResponse
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

(defclass niryo_robot_arm_commander::JogShift
  :super ros::object
  :slots ())

(setf (get niryo_robot_arm_commander::JogShift :md5sum-) "63bb8af5051d5e683358a7466dbe2c2c")
(setf (get niryo_robot_arm_commander::JogShift :datatype-) "niryo_robot_arm_commander/JogShift")
(setf (get niryo_robot_arm_commander::JogShift :request) niryo_robot_arm_commander::JogShiftRequest)
(setf (get niryo_robot_arm_commander::JogShift :response) niryo_robot_arm_commander::JogShiftResponse)

(defmethod niryo_robot_arm_commander::JogShiftRequest
  (:response () (instance niryo_robot_arm_commander::JogShiftResponse :init)))

(setf (get niryo_robot_arm_commander::JogShiftRequest :md5sum-) "63bb8af5051d5e683358a7466dbe2c2c")
(setf (get niryo_robot_arm_commander::JogShiftRequest :datatype-) "niryo_robot_arm_commander/JogShiftRequest")
(setf (get niryo_robot_arm_commander::JogShiftRequest :definition-)
      "int32 JOINTS_SHIFT = 1
int32 POSE_SHIFT = 2

int32 cmd

float32[] shift_values

---
int32 status
string message

")

(setf (get niryo_robot_arm_commander::JogShiftResponse :md5sum-) "63bb8af5051d5e683358a7466dbe2c2c")
(setf (get niryo_robot_arm_commander::JogShiftResponse :datatype-) "niryo_robot_arm_commander/JogShiftResponse")
(setf (get niryo_robot_arm_commander::JogShiftResponse :definition-)
      "int32 JOINTS_SHIFT = 1
int32 POSE_SHIFT = 2

int32 cmd

float32[] shift_values

---
int32 status
string message

")



(provide :niryo_robot_arm_commander/JogShift "63bb8af5051d5e683358a7466dbe2c2c")


