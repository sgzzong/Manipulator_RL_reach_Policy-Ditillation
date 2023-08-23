;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_reports::CheckConnection)
  (if (not (find-package "NIRYO_ROBOT_REPORTS"))
    (make-package "NIRYO_ROBOT_REPORTS"))
  (shadow 'CheckConnection (find-package "NIRYO_ROBOT_REPORTS")))
(unless (find-package "NIRYO_ROBOT_REPORTS::CHECKCONNECTION")
  (make-package "NIRYO_ROBOT_REPORTS::CHECKCONNECTION"))
(unless (find-package "NIRYO_ROBOT_REPORTS::CHECKCONNECTIONREQUEST")
  (make-package "NIRYO_ROBOT_REPORTS::CHECKCONNECTIONREQUEST"))
(unless (find-package "NIRYO_ROBOT_REPORTS::CHECKCONNECTIONRESPONSE")
  (make-package "NIRYO_ROBOT_REPORTS::CHECKCONNECTIONRESPONSE"))

(in-package "ROS")





(defclass niryo_robot_reports::CheckConnectionRequest
  :super ros::object
  :slots (_service ))

(defmethod niryo_robot_reports::CheckConnectionRequest
  (:init
   (&key
    ((:service __service) (instance niryo_robot_reports::Service :init))
    )
   (send-super :init)
   (setq _service __service)
   self)
  (:service
   (&rest __service)
   (if (keywordp (car __service))
       (send* _service __service)
     (progn
       (if __service (setq _service (car __service)))
       _service)))
  (:serialization-length
   ()
   (+
    ;; niryo_robot_reports/Service _service
    (send _service :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; niryo_robot_reports/Service _service
       (send _service :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; niryo_robot_reports/Service _service
     (send _service :deserialize buf ptr-) (incf ptr- (send _service :serialization-length))
   ;;
   self)
  )

(defclass niryo_robot_reports::CheckConnectionResponse
  :super ros::object
  :slots (_status _result ))

(defmethod niryo_robot_reports::CheckConnectionResponse
  (:init
   (&key
    ((:status __status) 0)
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _result __result)
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:result
   (&optional (__result :null))
   (if (not (eq __result :null)) (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; int32 _status
    4
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass niryo_robot_reports::CheckConnection
  :super ros::object
  :slots ())

(setf (get niryo_robot_reports::CheckConnection :md5sum-) "601967d72fd39c22f6ae4773c148bd17")
(setf (get niryo_robot_reports::CheckConnection :datatype-) "niryo_robot_reports/CheckConnection")
(setf (get niryo_robot_reports::CheckConnection :request) niryo_robot_reports::CheckConnectionRequest)
(setf (get niryo_robot_reports::CheckConnection :response) niryo_robot_reports::CheckConnectionResponse)

(defmethod niryo_robot_reports::CheckConnectionRequest
  (:response () (instance niryo_robot_reports::CheckConnectionResponse :init)))

(setf (get niryo_robot_reports::CheckConnectionRequest :md5sum-) "601967d72fd39c22f6ae4773c148bd17")
(setf (get niryo_robot_reports::CheckConnectionRequest :datatype-) "niryo_robot_reports/CheckConnectionRequest")
(setf (get niryo_robot_reports::CheckConnectionRequest :definition-)
      "Service service

================================================================================
MSG: niryo_robot_reports/Service
int8 DAILY_REPORTS = 0
int8 TEST_REPORTS = 1
int8 ALERT_REPORTS = 2
int8 AUTO_DIAGNOSIS_REPORTS = 3

---
int32 status
bool result
")

(setf (get niryo_robot_reports::CheckConnectionResponse :md5sum-) "601967d72fd39c22f6ae4773c148bd17")
(setf (get niryo_robot_reports::CheckConnectionResponse :datatype-) "niryo_robot_reports/CheckConnectionResponse")
(setf (get niryo_robot_reports::CheckConnectionResponse :definition-)
      "Service service

================================================================================
MSG: niryo_robot_reports/Service
int8 DAILY_REPORTS = 0
int8 TEST_REPORTS = 1
int8 ALERT_REPORTS = 2
int8 AUTO_DIAGNOSIS_REPORTS = 3

---
int32 status
bool result
")



(provide :niryo_robot_reports/CheckConnection "601967d72fd39c22f6ae4773c148bd17")


