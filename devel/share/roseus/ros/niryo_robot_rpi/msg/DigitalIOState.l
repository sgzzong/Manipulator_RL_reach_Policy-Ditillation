;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_rpi::DigitalIOState)
  (if (not (find-package "NIRYO_ROBOT_RPI"))
    (make-package "NIRYO_ROBOT_RPI"))
  (shadow 'DigitalIOState (find-package "NIRYO_ROBOT_RPI")))
(unless (find-package "NIRYO_ROBOT_RPI::DIGITALIOSTATE")
  (make-package "NIRYO_ROBOT_RPI::DIGITALIOSTATE"))

(in-package "ROS")
;;//! \htmlinclude DigitalIOState.msg.html


(defclass niryo_robot_rpi::DigitalIOState
  :super ros::object
  :slots (_digital_inputs _digital_outputs ))

(defmethod niryo_robot_rpi::DigitalIOState
  (:init
   (&key
    ((:digital_inputs __digital_inputs) ())
    ((:digital_outputs __digital_outputs) ())
    )
   (send-super :init)
   (setq _digital_inputs __digital_inputs)
   (setq _digital_outputs __digital_outputs)
   self)
  (:digital_inputs
   (&rest __digital_inputs)
   (if (keywordp (car __digital_inputs))
       (send* _digital_inputs __digital_inputs)
     (progn
       (if __digital_inputs (setq _digital_inputs (car __digital_inputs)))
       _digital_inputs)))
  (:digital_outputs
   (&rest __digital_outputs)
   (if (keywordp (car __digital_outputs))
       (send* _digital_outputs __digital_outputs)
     (progn
       (if __digital_outputs (setq _digital_outputs (car __digital_outputs)))
       _digital_outputs)))
  (:serialization-length
   ()
   (+
    ;; niryo_robot_rpi/DigitalIO[] _digital_inputs
    (apply #'+ (send-all _digital_inputs :serialization-length)) 4
    ;; niryo_robot_rpi/DigitalIO[] _digital_outputs
    (apply #'+ (send-all _digital_outputs :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; niryo_robot_rpi/DigitalIO[] _digital_inputs
     (write-long (length _digital_inputs) s)
     (dolist (elem _digital_inputs)
       (send elem :serialize s)
       )
     ;; niryo_robot_rpi/DigitalIO[] _digital_outputs
     (write-long (length _digital_outputs) s)
     (dolist (elem _digital_outputs)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; niryo_robot_rpi/DigitalIO[] _digital_inputs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _digital_inputs (let (r) (dotimes (i n) (push (instance niryo_robot_rpi::DigitalIO :init) r)) r))
     (dolist (elem- _digital_inputs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; niryo_robot_rpi/DigitalIO[] _digital_outputs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _digital_outputs (let (r) (dotimes (i n) (push (instance niryo_robot_rpi::DigitalIO :init) r)) r))
     (dolist (elem- _digital_outputs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get niryo_robot_rpi::DigitalIOState :md5sum-) "e3301c19a16019595490fc28259868bd")
(setf (get niryo_robot_rpi::DigitalIOState :datatype-) "niryo_robot_rpi/DigitalIOState")
(setf (get niryo_robot_rpi::DigitalIOState :definition-)
      "niryo_robot_rpi/DigitalIO[] digital_inputs
niryo_robot_rpi/DigitalIO[] digital_outputs
================================================================================
MSG: niryo_robot_rpi/DigitalIO
string name
bool value
")



(provide :niryo_robot_rpi/DigitalIOState "e3301c19a16019595490fc28259868bd")


