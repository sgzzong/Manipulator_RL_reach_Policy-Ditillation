;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_rpi::ScanI2CBus)
  (if (not (find-package "NIRYO_ROBOT_RPI"))
    (make-package "NIRYO_ROBOT_RPI"))
  (shadow 'ScanI2CBus (find-package "NIRYO_ROBOT_RPI")))
(unless (find-package "NIRYO_ROBOT_RPI::SCANI2CBUS")
  (make-package "NIRYO_ROBOT_RPI::SCANI2CBUS"))
(unless (find-package "NIRYO_ROBOT_RPI::SCANI2CBUSREQUEST")
  (make-package "NIRYO_ROBOT_RPI::SCANI2CBUSREQUEST"))
(unless (find-package "NIRYO_ROBOT_RPI::SCANI2CBUSRESPONSE")
  (make-package "NIRYO_ROBOT_RPI::SCANI2CBUSRESPONSE"))

(in-package "ROS")





(defclass niryo_robot_rpi::ScanI2CBusRequest
  :super ros::object
  :slots ())

(defmethod niryo_robot_rpi::ScanI2CBusRequest
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

(defclass niryo_robot_rpi::ScanI2CBusResponse
  :super ros::object
  :slots (_status _message _is_ok _missing _detected ))

(defmethod niryo_robot_rpi::ScanI2CBusResponse
  (:init
   (&key
    ((:status __status) 0)
    ((:message __message) "")
    ((:is_ok __is_ok) nil)
    ((:missing __missing) ())
    ((:detected __detected) ())
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _message (string __message))
   (setq _is_ok __is_ok)
   (setq _missing __missing)
   (setq _detected __detected)
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:is_ok
   (&optional (__is_ok :null))
   (if (not (eq __is_ok :null)) (setq _is_ok __is_ok)) _is_ok)
  (:missing
   (&rest __missing)
   (if (keywordp (car __missing))
       (send* _missing __missing)
     (progn
       (if __missing (setq _missing (car __missing)))
       _missing)))
  (:detected
   (&rest __detected)
   (if (keywordp (car __detected))
       (send* _detected __detected)
     (progn
       (if __detected (setq _detected (car __detected)))
       _detected)))
  (:serialization-length
   ()
   (+
    ;; int32 _status
    4
    ;; string _message
    4 (length _message)
    ;; bool _is_ok
    1
    ;; niryo_robot_rpi/I2CComponent[] _missing
    (apply #'+ (send-all _missing :serialization-length)) 4
    ;; niryo_robot_rpi/I2CComponent[] _detected
    (apply #'+ (send-all _detected :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; bool _is_ok
       (if _is_ok (write-byte -1 s) (write-byte 0 s))
     ;; niryo_robot_rpi/I2CComponent[] _missing
     (write-long (length _missing) s)
     (dolist (elem _missing)
       (send elem :serialize s)
       )
     ;; niryo_robot_rpi/I2CComponent[] _detected
     (write-long (length _detected) s)
     (dolist (elem _detected)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _is_ok
     (setq _is_ok (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; niryo_robot_rpi/I2CComponent[] _missing
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _missing (let (r) (dotimes (i n) (push (instance niryo_robot_rpi::I2CComponent :init) r)) r))
     (dolist (elem- _missing)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; niryo_robot_rpi/I2CComponent[] _detected
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _detected (let (r) (dotimes (i n) (push (instance niryo_robot_rpi::I2CComponent :init) r)) r))
     (dolist (elem- _detected)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass niryo_robot_rpi::ScanI2CBus
  :super ros::object
  :slots ())

(setf (get niryo_robot_rpi::ScanI2CBus :md5sum-) "808e467912d414dae099afb5994358c5")
(setf (get niryo_robot_rpi::ScanI2CBus :datatype-) "niryo_robot_rpi/ScanI2CBus")
(setf (get niryo_robot_rpi::ScanI2CBus :request) niryo_robot_rpi::ScanI2CBusRequest)
(setf (get niryo_robot_rpi::ScanI2CBus :response) niryo_robot_rpi::ScanI2CBusResponse)

(defmethod niryo_robot_rpi::ScanI2CBusRequest
  (:response () (instance niryo_robot_rpi::ScanI2CBusResponse :init)))

(setf (get niryo_robot_rpi::ScanI2CBusRequest :md5sum-) "808e467912d414dae099afb5994358c5")
(setf (get niryo_robot_rpi::ScanI2CBusRequest :datatype-) "niryo_robot_rpi/ScanI2CBusRequest")
(setf (get niryo_robot_rpi::ScanI2CBusRequest :definition-)
      "---
int32 status
string message

bool is_ok
niryo_robot_rpi/I2CComponent[] missing
niryo_robot_rpi/I2CComponent[] detected


================================================================================
MSG: niryo_robot_rpi/I2CComponent
uint32 bus
uint32 address
")

(setf (get niryo_robot_rpi::ScanI2CBusResponse :md5sum-) "808e467912d414dae099afb5994358c5")
(setf (get niryo_robot_rpi::ScanI2CBusResponse :datatype-) "niryo_robot_rpi/ScanI2CBusResponse")
(setf (get niryo_robot_rpi::ScanI2CBusResponse :definition-)
      "---
int32 status
string message

bool is_ok
niryo_robot_rpi/I2CComponent[] missing
niryo_robot_rpi/I2CComponent[] detected


================================================================================
MSG: niryo_robot_rpi/I2CComponent
uint32 bus
uint32 address
")



(provide :niryo_robot_rpi/ScanI2CBus "808e467912d414dae099afb5994358c5")


