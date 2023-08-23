;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_rpi::AnalogIOState)
  (if (not (find-package "NIRYO_ROBOT_RPI"))
    (make-package "NIRYO_ROBOT_RPI"))
  (shadow 'AnalogIOState (find-package "NIRYO_ROBOT_RPI")))
(unless (find-package "NIRYO_ROBOT_RPI::ANALOGIOSTATE")
  (make-package "NIRYO_ROBOT_RPI::ANALOGIOSTATE"))

(in-package "ROS")
;;//! \htmlinclude AnalogIOState.msg.html


(defclass niryo_robot_rpi::AnalogIOState
  :super ros::object
  :slots (_analog_inputs _analog_outputs ))

(defmethod niryo_robot_rpi::AnalogIOState
  (:init
   (&key
    ((:analog_inputs __analog_inputs) ())
    ((:analog_outputs __analog_outputs) ())
    )
   (send-super :init)
   (setq _analog_inputs __analog_inputs)
   (setq _analog_outputs __analog_outputs)
   self)
  (:analog_inputs
   (&rest __analog_inputs)
   (if (keywordp (car __analog_inputs))
       (send* _analog_inputs __analog_inputs)
     (progn
       (if __analog_inputs (setq _analog_inputs (car __analog_inputs)))
       _analog_inputs)))
  (:analog_outputs
   (&rest __analog_outputs)
   (if (keywordp (car __analog_outputs))
       (send* _analog_outputs __analog_outputs)
     (progn
       (if __analog_outputs (setq _analog_outputs (car __analog_outputs)))
       _analog_outputs)))
  (:serialization-length
   ()
   (+
    ;; niryo_robot_rpi/AnalogIO[] _analog_inputs
    (apply #'+ (send-all _analog_inputs :serialization-length)) 4
    ;; niryo_robot_rpi/AnalogIO[] _analog_outputs
    (apply #'+ (send-all _analog_outputs :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; niryo_robot_rpi/AnalogIO[] _analog_inputs
     (write-long (length _analog_inputs) s)
     (dolist (elem _analog_inputs)
       (send elem :serialize s)
       )
     ;; niryo_robot_rpi/AnalogIO[] _analog_outputs
     (write-long (length _analog_outputs) s)
     (dolist (elem _analog_outputs)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; niryo_robot_rpi/AnalogIO[] _analog_inputs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _analog_inputs (let (r) (dotimes (i n) (push (instance niryo_robot_rpi::AnalogIO :init) r)) r))
     (dolist (elem- _analog_inputs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; niryo_robot_rpi/AnalogIO[] _analog_outputs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _analog_outputs (let (r) (dotimes (i n) (push (instance niryo_robot_rpi::AnalogIO :init) r)) r))
     (dolist (elem- _analog_outputs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get niryo_robot_rpi::AnalogIOState :md5sum-) "50830703d75ba2ea72eb263ee99782e6")
(setf (get niryo_robot_rpi::AnalogIOState :datatype-) "niryo_robot_rpi/AnalogIOState")
(setf (get niryo_robot_rpi::AnalogIOState :definition-)
      "niryo_robot_rpi/AnalogIO[] analog_inputs
niryo_robot_rpi/AnalogIO[] analog_outputs



================================================================================
MSG: niryo_robot_rpi/AnalogIO
string name
float64 value


")



(provide :niryo_robot_rpi/AnalogIOState "50830703d75ba2ea72eb263ee99782e6")


