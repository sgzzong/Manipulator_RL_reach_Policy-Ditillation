;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_reports::Service)
  (if (not (find-package "NIRYO_ROBOT_REPORTS"))
    (make-package "NIRYO_ROBOT_REPORTS"))
  (shadow 'Service (find-package "NIRYO_ROBOT_REPORTS")))
(unless (find-package "NIRYO_ROBOT_REPORTS::SERVICE")
  (make-package "NIRYO_ROBOT_REPORTS::SERVICE"))

(in-package "ROS")
;;//! \htmlinclude Service.msg.html


(intern "*DAILY_REPORTS*" (find-package "NIRYO_ROBOT_REPORTS::SERVICE"))
(shadow '*DAILY_REPORTS* (find-package "NIRYO_ROBOT_REPORTS::SERVICE"))
(defconstant niryo_robot_reports::Service::*DAILY_REPORTS* 0)
(intern "*TEST_REPORTS*" (find-package "NIRYO_ROBOT_REPORTS::SERVICE"))
(shadow '*TEST_REPORTS* (find-package "NIRYO_ROBOT_REPORTS::SERVICE"))
(defconstant niryo_robot_reports::Service::*TEST_REPORTS* 1)
(intern "*ALERT_REPORTS*" (find-package "NIRYO_ROBOT_REPORTS::SERVICE"))
(shadow '*ALERT_REPORTS* (find-package "NIRYO_ROBOT_REPORTS::SERVICE"))
(defconstant niryo_robot_reports::Service::*ALERT_REPORTS* 2)
(intern "*AUTO_DIAGNOSIS_REPORTS*" (find-package "NIRYO_ROBOT_REPORTS::SERVICE"))
(shadow '*AUTO_DIAGNOSIS_REPORTS* (find-package "NIRYO_ROBOT_REPORTS::SERVICE"))
(defconstant niryo_robot_reports::Service::*AUTO_DIAGNOSIS_REPORTS* 3)

(defun niryo_robot_reports::Service-to-symbol (const)
  (cond
        ((= const 0) 'niryo_robot_reports::Service::*DAILY_REPORTS*)
        ((= const 1) 'niryo_robot_reports::Service::*TEST_REPORTS*)
        ((= const 2) 'niryo_robot_reports::Service::*ALERT_REPORTS*)
        ((= const 3) 'niryo_robot_reports::Service::*AUTO_DIAGNOSIS_REPORTS*)
        (t nil)))

(defclass niryo_robot_reports::Service
  :super ros::object
  :slots (_to_test ))

(defmethod niryo_robot_reports::Service
  (:init
   (&key
    ((:to_test __to_test) 0)
    )
   (send-super :init)
   (setq _to_test (round __to_test))
   self)
  (:to_test
   (&optional __to_test)
   (if __to_test (setq _to_test __to_test)) _to_test)
  (:serialization-length
   ()
   (+
    ;; int8 _to_test
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _to_test
       (write-byte _to_test s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _to_test
     (setq _to_test (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _to_test 127) (setq _to_test (- _to_test 256)))
   ;;
   self)
  )

(setf (get niryo_robot_reports::Service :md5sum-) "2398aef25e17f178de798f7c32631bee")
(setf (get niryo_robot_reports::Service :datatype-) "niryo_robot_reports/Service")
(setf (get niryo_robot_reports::Service :definition-)
      "int8 DAILY_REPORTS = 0
int8 TEST_REPORTS = 1
int8 ALERT_REPORTS = 2
int8 AUTO_DIAGNOSIS_REPORTS = 3

int8 to_test
")



(provide :niryo_robot_reports/Service "2398aef25e17f178de798f7c32631bee")


