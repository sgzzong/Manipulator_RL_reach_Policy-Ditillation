;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_reports::RunAutoDiagnosis)
  (if (not (find-package "NIRYO_ROBOT_REPORTS"))
    (make-package "NIRYO_ROBOT_REPORTS"))
  (shadow 'RunAutoDiagnosis (find-package "NIRYO_ROBOT_REPORTS")))
(unless (find-package "NIRYO_ROBOT_REPORTS::RUNAUTODIAGNOSIS")
  (make-package "NIRYO_ROBOT_REPORTS::RUNAUTODIAGNOSIS"))
(unless (find-package "NIRYO_ROBOT_REPORTS::RUNAUTODIAGNOSISREQUEST")
  (make-package "NIRYO_ROBOT_REPORTS::RUNAUTODIAGNOSISREQUEST"))
(unless (find-package "NIRYO_ROBOT_REPORTS::RUNAUTODIAGNOSISRESPONSE")
  (make-package "NIRYO_ROBOT_REPORTS::RUNAUTODIAGNOSISRESPONSE"))

(in-package "ROS")





(defclass niryo_robot_reports::RunAutoDiagnosisRequest
  :super ros::object
  :slots ())

(defmethod niryo_robot_reports::RunAutoDiagnosisRequest
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

(defclass niryo_robot_reports::RunAutoDiagnosisResponse
  :super ros::object
  :slots (_status _result ))

(defmethod niryo_robot_reports::RunAutoDiagnosisResponse
  (:init
   (&key
    ((:status __status) 0)
    ((:result __result) "")
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _result (string __result))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; int32 _status
    4
    ;; string _result
    4 (length _result)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;; string _result
       (write-long (length _result) s) (princ _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _result
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _result (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass niryo_robot_reports::RunAutoDiagnosis
  :super ros::object
  :slots ())

(setf (get niryo_robot_reports::RunAutoDiagnosis :md5sum-) "5409a1706eceafd303fc08b7f8118535")
(setf (get niryo_robot_reports::RunAutoDiagnosis :datatype-) "niryo_robot_reports/RunAutoDiagnosis")
(setf (get niryo_robot_reports::RunAutoDiagnosis :request) niryo_robot_reports::RunAutoDiagnosisRequest)
(setf (get niryo_robot_reports::RunAutoDiagnosis :response) niryo_robot_reports::RunAutoDiagnosisResponse)

(defmethod niryo_robot_reports::RunAutoDiagnosisRequest
  (:response () (instance niryo_robot_reports::RunAutoDiagnosisResponse :init)))

(setf (get niryo_robot_reports::RunAutoDiagnosisRequest :md5sum-) "5409a1706eceafd303fc08b7f8118535")
(setf (get niryo_robot_reports::RunAutoDiagnosisRequest :datatype-) "niryo_robot_reports/RunAutoDiagnosisRequest")
(setf (get niryo_robot_reports::RunAutoDiagnosisRequest :definition-)
      "---
int32 status
string result
")

(setf (get niryo_robot_reports::RunAutoDiagnosisResponse :md5sum-) "5409a1706eceafd303fc08b7f8118535")
(setf (get niryo_robot_reports::RunAutoDiagnosisResponse :datatype-) "niryo_robot_reports/RunAutoDiagnosisResponse")
(setf (get niryo_robot_reports::RunAutoDiagnosisResponse :definition-)
      "---
int32 status
string result
")



(provide :niryo_robot_reports/RunAutoDiagnosis "5409a1706eceafd303fc08b7f8118535")


