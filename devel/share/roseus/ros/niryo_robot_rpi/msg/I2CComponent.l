;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_rpi::I2CComponent)
  (if (not (find-package "NIRYO_ROBOT_RPI"))
    (make-package "NIRYO_ROBOT_RPI"))
  (shadow 'I2CComponent (find-package "NIRYO_ROBOT_RPI")))
(unless (find-package "NIRYO_ROBOT_RPI::I2CCOMPONENT")
  (make-package "NIRYO_ROBOT_RPI::I2CCOMPONENT"))

(in-package "ROS")
;;//! \htmlinclude I2CComponent.msg.html


(defclass niryo_robot_rpi::I2CComponent
  :super ros::object
  :slots (_bus _address _info ))

(defmethod niryo_robot_rpi::I2CComponent
  (:init
   (&key
    ((:bus __bus) 0)
    ((:address __address) 0)
    ((:info __info) "")
    )
   (send-super :init)
   (setq _bus (round __bus))
   (setq _address (round __address))
   (setq _info (string __info))
   self)
  (:bus
   (&optional __bus)
   (if __bus (setq _bus __bus)) _bus)
  (:address
   (&optional __address)
   (if __address (setq _address __address)) _address)
  (:info
   (&optional __info)
   (if __info (setq _info __info)) _info)
  (:serialization-length
   ()
   (+
    ;; uint32 _bus
    4
    ;; uint32 _address
    4
    ;; string _info
    4 (length _info)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _bus
       (write-long _bus s)
     ;; uint32 _address
       (write-long _address s)
     ;; string _info
       (write-long (length _info) s) (princ _info s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _bus
     (setq _bus (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _address
     (setq _address (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get niryo_robot_rpi::I2CComponent :md5sum-) "cca220cebb8afcd7e4bff9c7e8eb1631")
(setf (get niryo_robot_rpi::I2CComponent :datatype-) "niryo_robot_rpi/I2CComponent")
(setf (get niryo_robot_rpi::I2CComponent :definition-)
      "uint32 bus
uint32 address
string info
")



(provide :niryo_robot_rpi/I2CComponent "cca220cebb8afcd7e4bff9c7e8eb1631")


