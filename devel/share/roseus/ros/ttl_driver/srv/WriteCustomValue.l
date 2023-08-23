;; Auto-generated. Do not edit!


(when (boundp 'ttl_driver::WriteCustomValue)
  (if (not (find-package "TTL_DRIVER"))
    (make-package "TTL_DRIVER"))
  (shadow 'WriteCustomValue (find-package "TTL_DRIVER")))
(unless (find-package "TTL_DRIVER::WRITECUSTOMVALUE")
  (make-package "TTL_DRIVER::WRITECUSTOMVALUE"))
(unless (find-package "TTL_DRIVER::WRITECUSTOMVALUEREQUEST")
  (make-package "TTL_DRIVER::WRITECUSTOMVALUEREQUEST"))
(unless (find-package "TTL_DRIVER::WRITECUSTOMVALUERESPONSE")
  (make-package "TTL_DRIVER::WRITECUSTOMVALUERESPONSE"))

(in-package "ROS")





(defclass ttl_driver::WriteCustomValueRequest
  :super ros::object
  :slots (_id _value _reg_address _byte_number ))

(defmethod ttl_driver::WriteCustomValueRequest
  (:init
   (&key
    ((:id __id) 0)
    ((:value __value) 0)
    ((:reg_address __reg_address) 0)
    ((:byte_number __byte_number) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _value (round __value))
   (setq _reg_address (round __reg_address))
   (setq _byte_number (round __byte_number))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:reg_address
   (&optional __reg_address)
   (if __reg_address (setq _reg_address __reg_address)) _reg_address)
  (:byte_number
   (&optional __byte_number)
   (if __byte_number (setq _byte_number __byte_number)) _byte_number)
  (:serialization-length
   ()
   (+
    ;; uint8 _id
    1
    ;; int32 _value
    4
    ;; int32 _reg_address
    4
    ;; int32 _byte_number
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id
       (write-byte _id s)
     ;; int32 _value
       (write-long _value s)
     ;; int32 _reg_address
       (write-long _reg_address s)
     ;; int32 _byte_number
       (write-long _byte_number s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int32 _value
     (setq _value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _reg_address
     (setq _reg_address (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _byte_number
     (setq _byte_number (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass ttl_driver::WriteCustomValueResponse
  :super ros::object
  :slots (_status _message ))

(defmethod ttl_driver::WriteCustomValueResponse
  (:init
   (&key
    ((:status __status) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _message (string __message))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; int32 _status
    4
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass ttl_driver::WriteCustomValue
  :super ros::object
  :slots ())

(setf (get ttl_driver::WriteCustomValue :md5sum-) "2f453513d453652d4b104f09993ea52f")
(setf (get ttl_driver::WriteCustomValue :datatype-) "ttl_driver/WriteCustomValue")
(setf (get ttl_driver::WriteCustomValue :request) ttl_driver::WriteCustomValueRequest)
(setf (get ttl_driver::WriteCustomValue :response) ttl_driver::WriteCustomValueResponse)

(defmethod ttl_driver::WriteCustomValueRequest
  (:response () (instance ttl_driver::WriteCustomValueResponse :init)))

(setf (get ttl_driver::WriteCustomValueRequest :md5sum-) "2f453513d453652d4b104f09993ea52f")
(setf (get ttl_driver::WriteCustomValueRequest :datatype-) "ttl_driver/WriteCustomValueRequest")
(setf (get ttl_driver::WriteCustomValueRequest :definition-)
      "# Check XL-320 and XL-430 reference doc for
# the complete register table

uint8 id
int32 value
int32 reg_address
int32 byte_number
---
int32 status
string message

")

(setf (get ttl_driver::WriteCustomValueResponse :md5sum-) "2f453513d453652d4b104f09993ea52f")
(setf (get ttl_driver::WriteCustomValueResponse :datatype-) "ttl_driver/WriteCustomValueResponse")
(setf (get ttl_driver::WriteCustomValueResponse :definition-)
      "# Check XL-320 and XL-430 reference doc for
# the complete register table

uint8 id
int32 value
int32 reg_address
int32 byte_number
---
int32 status
string message

")



(provide :ttl_driver/WriteCustomValue "2f453513d453652d4b104f09993ea52f")


