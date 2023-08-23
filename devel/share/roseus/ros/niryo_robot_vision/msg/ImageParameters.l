;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_vision::ImageParameters)
  (if (not (find-package "NIRYO_ROBOT_VISION"))
    (make-package "NIRYO_ROBOT_VISION"))
  (shadow 'ImageParameters (find-package "NIRYO_ROBOT_VISION")))
(unless (find-package "NIRYO_ROBOT_VISION::IMAGEPARAMETERS")
  (make-package "NIRYO_ROBOT_VISION::IMAGEPARAMETERS"))

(in-package "ROS")
;;//! \htmlinclude ImageParameters.msg.html


(defclass niryo_robot_vision::ImageParameters
  :super ros::object
  :slots (_brightness_factor _contrast_factor _saturation_factor ))

(defmethod niryo_robot_vision::ImageParameters
  (:init
   (&key
    ((:brightness_factor __brightness_factor) 0.0)
    ((:contrast_factor __contrast_factor) 0.0)
    ((:saturation_factor __saturation_factor) 0.0)
    )
   (send-super :init)
   (setq _brightness_factor (float __brightness_factor))
   (setq _contrast_factor (float __contrast_factor))
   (setq _saturation_factor (float __saturation_factor))
   self)
  (:brightness_factor
   (&optional __brightness_factor)
   (if __brightness_factor (setq _brightness_factor __brightness_factor)) _brightness_factor)
  (:contrast_factor
   (&optional __contrast_factor)
   (if __contrast_factor (setq _contrast_factor __contrast_factor)) _contrast_factor)
  (:saturation_factor
   (&optional __saturation_factor)
   (if __saturation_factor (setq _saturation_factor __saturation_factor)) _saturation_factor)
  (:serialization-length
   ()
   (+
    ;; float64 _brightness_factor
    8
    ;; float64 _contrast_factor
    8
    ;; float64 _saturation_factor
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _brightness_factor
       (sys::poke _brightness_factor (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _contrast_factor
       (sys::poke _contrast_factor (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _saturation_factor
       (sys::poke _saturation_factor (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _brightness_factor
     (setq _brightness_factor (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _contrast_factor
     (setq _contrast_factor (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _saturation_factor
     (setq _saturation_factor (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get niryo_robot_vision::ImageParameters :md5sum-) "2b9ee591aa6a512b640f955e2c18acaf")
(setf (get niryo_robot_vision::ImageParameters :datatype-) "niryo_robot_vision/ImageParameters")
(setf (get niryo_robot_vision::ImageParameters :definition-)
      "float64 brightness_factor
float64 contrast_factor
float64 saturation_factor
")



(provide :niryo_robot_vision/ImageParameters "2b9ee591aa6a512b640f955e2c18acaf")


