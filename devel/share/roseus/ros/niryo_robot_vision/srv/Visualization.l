;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_vision::Visualization)
  (if (not (find-package "NIRYO_ROBOT_VISION"))
    (make-package "NIRYO_ROBOT_VISION"))
  (shadow 'Visualization (find-package "NIRYO_ROBOT_VISION")))
(unless (find-package "NIRYO_ROBOT_VISION::VISUALIZATION")
  (make-package "NIRYO_ROBOT_VISION::VISUALIZATION"))
(unless (find-package "NIRYO_ROBOT_VISION::VISUALIZATIONREQUEST")
  (make-package "NIRYO_ROBOT_VISION::VISUALIZATIONREQUEST"))
(unless (find-package "NIRYO_ROBOT_VISION::VISUALIZATIONRESPONSE")
  (make-package "NIRYO_ROBOT_VISION::VISUALIZATIONRESPONSE"))

(in-package "ROS")





(defclass niryo_robot_vision::VisualizationRequest
  :super ros::object
  :slots (_workspace _clearing ))

(defmethod niryo_robot_vision::VisualizationRequest
  (:init
   (&key
    ((:workspace __workspace) "")
    ((:clearing __clearing) nil)
    )
   (send-super :init)
   (setq _workspace (string __workspace))
   (setq _clearing __clearing)
   self)
  (:workspace
   (&optional __workspace)
   (if __workspace (setq _workspace __workspace)) _workspace)
  (:clearing
   (&optional (__clearing :null))
   (if (not (eq __clearing :null)) (setq _clearing __clearing)) _clearing)
  (:serialization-length
   ()
   (+
    ;; string _workspace
    4 (length _workspace)
    ;; bool _clearing
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _workspace
       (write-long (length _workspace) s) (princ _workspace s)
     ;; bool _clearing
       (if _clearing (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _workspace
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _workspace (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _clearing
     (setq _clearing (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass niryo_robot_vision::VisualizationResponse
  :super ros::object
  :slots (_status ))

(defmethod niryo_robot_vision::VisualizationResponse
  (:init
   (&key
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _status (round __status))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; int32 _status
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass niryo_robot_vision::Visualization
  :super ros::object
  :slots ())

(setf (get niryo_robot_vision::Visualization :md5sum-) "137ed21db0b20a9ae0eba8eb8afcd908")
(setf (get niryo_robot_vision::Visualization :datatype-) "niryo_robot_vision/Visualization")
(setf (get niryo_robot_vision::Visualization :request) niryo_robot_vision::VisualizationRequest)
(setf (get niryo_robot_vision::Visualization :response) niryo_robot_vision::VisualizationResponse)

(defmethod niryo_robot_vision::VisualizationRequest
  (:response () (instance niryo_robot_vision::VisualizationResponse :init)))

(setf (get niryo_robot_vision::VisualizationRequest :md5sum-) "137ed21db0b20a9ae0eba8eb8afcd908")
(setf (get niryo_robot_vision::VisualizationRequest :datatype-) "niryo_robot_vision/VisualizationRequest")
(setf (get niryo_robot_vision::VisualizationRequest :definition-)
      "string workspace
bool clearing
---
int32 status

")

(setf (get niryo_robot_vision::VisualizationResponse :md5sum-) "137ed21db0b20a9ae0eba8eb8afcd908")
(setf (get niryo_robot_vision::VisualizationResponse :datatype-) "niryo_robot_vision/VisualizationResponse")
(setf (get niryo_robot_vision::VisualizationResponse :definition-)
      "string workspace
bool clearing
---
int32 status

")



(provide :niryo_robot_vision/Visualization "137ed21db0b20a9ae0eba8eb8afcd908")


