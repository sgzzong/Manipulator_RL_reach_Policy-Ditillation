;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_vision::TakePicture)
  (if (not (find-package "NIRYO_ROBOT_VISION"))
    (make-package "NIRYO_ROBOT_VISION"))
  (shadow 'TakePicture (find-package "NIRYO_ROBOT_VISION")))
(unless (find-package "NIRYO_ROBOT_VISION::TAKEPICTURE")
  (make-package "NIRYO_ROBOT_VISION::TAKEPICTURE"))
(unless (find-package "NIRYO_ROBOT_VISION::TAKEPICTUREREQUEST")
  (make-package "NIRYO_ROBOT_VISION::TAKEPICTUREREQUEST"))
(unless (find-package "NIRYO_ROBOT_VISION::TAKEPICTURERESPONSE")
  (make-package "NIRYO_ROBOT_VISION::TAKEPICTURERESPONSE"))

(in-package "ROS")





(defclass niryo_robot_vision::TakePictureRequest
  :super ros::object
  :slots (_path ))

(defmethod niryo_robot_vision::TakePictureRequest
  (:init
   (&key
    ((:path __path) "")
    )
   (send-super :init)
   (setq _path (string __path))
   self)
  (:path
   (&optional __path)
   (if __path (setq _path __path)) _path)
  (:serialization-length
   ()
   (+
    ;; string _path
    4 (length _path)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _path
       (write-long (length _path) s) (princ _path s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass niryo_robot_vision::TakePictureResponse
  :super ros::object
  :slots (_success ))

(defmethod niryo_robot_vision::TakePictureResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass niryo_robot_vision::TakePicture
  :super ros::object
  :slots ())

(setf (get niryo_robot_vision::TakePicture :md5sum-) "24518277da746ec8ade3d50c001c2adf")
(setf (get niryo_robot_vision::TakePicture :datatype-) "niryo_robot_vision/TakePicture")
(setf (get niryo_robot_vision::TakePicture :request) niryo_robot_vision::TakePictureRequest)
(setf (get niryo_robot_vision::TakePicture :response) niryo_robot_vision::TakePictureResponse)

(defmethod niryo_robot_vision::TakePictureRequest
  (:response () (instance niryo_robot_vision::TakePictureResponse :init)))

(setf (get niryo_robot_vision::TakePictureRequest :md5sum-) "24518277da746ec8ade3d50c001c2adf")
(setf (get niryo_robot_vision::TakePictureRequest :datatype-) "niryo_robot_vision/TakePictureRequest")
(setf (get niryo_robot_vision::TakePictureRequest :definition-)
      "string path
---
bool success

")

(setf (get niryo_robot_vision::TakePictureResponse :md5sum-) "24518277da746ec8ade3d50c001c2adf")
(setf (get niryo_robot_vision::TakePictureResponse :datatype-) "niryo_robot_vision/TakePictureResponse")
(setf (get niryo_robot_vision::TakePictureResponse :definition-)
      "string path
---
bool success

")



(provide :niryo_robot_vision/TakePicture "24518277da746ec8ade3d50c001c2adf")


