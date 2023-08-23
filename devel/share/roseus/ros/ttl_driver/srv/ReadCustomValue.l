;; Auto-generated. Do not edit!


(when (boundp 'ttl_driver::ReadCustomValue)
  (if (not (find-package "TTL_DRIVER"))
    (make-package "TTL_DRIVER"))
  (shadow 'ReadCustomValue (find-package "TTL_DRIVER")))
(unless (find-package "TTL_DRIVER::READCUSTOMVALUE")
  (make-package "TTL_DRIVER::READCUSTOMVALUE"))
(unless (find-package "TTL_DRIVER::READCUSTOMVALUEREQUEST")
  (make-package "TTL_DRIVER::READCUSTOMVALUEREQUEST"))
(unless (find-package "TTL_DRIVER::READCUSTOMVALUERESPONSE")
  (make-package "TTL_DRIVER::READCUSTOMVALUERESPONSE"))

(in-package "ROS")





(defclass ttl_driver::ReadCustomValueRequest
  :super ros::object
  :slots (_id _reg_address _byte_number ))

(defmethod ttl_driver::ReadCustomValueRequest
  (:init
   (&key
    ((:id __id) 0)
    ((:reg_address __reg_address) 0)
    ((:byte_number __byte_number) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _reg_address (round __reg_address))
   (setq _byte_number (round __byte_number))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
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
   ;; int32 _reg_address
     (setq _reg_address (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _byte_number
     (setq _byte_number (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass ttl_driver::ReadCustomValueResponse
  :super ros::object
  :slots (_value _status _message ))

(defmethod ttl_driver::ReadCustomValueResponse
  (:init
   (&key
    ((:value __value) 0)
    ((:status __status) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _value (round __value))
   (setq _status (round __status))
   (setq _message (string __message))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; int32 _value
    4
    ;; int32 _status
    4
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _value
       (write-long _value s)
     ;; int32 _status
       (write-long _status s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _value
     (setq _value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass ttl_driver::ReadCustomValue
  :super ros::object
  :slots ())

(setf (get ttl_driver::ReadCustomValue :md5sum-) "5313d8a6d811b0dd65e0326479c514d8")
(setf (get ttl_driver::ReadCustomValue :datatype-) "ttl_driver/ReadCustomValue")
(setf (get ttl_driver::ReadCustomValue :request) ttl_driver::ReadCustomValueRequest)
(setf (get ttl_driver::ReadCustomValue :response) ttl_driver::ReadCustomValueResponse)

(defmethod ttl_driver::ReadCustomValueRequest
  (:response () (instance ttl_driver::ReadCustomValueResponse :init)))

(setf (get ttl_driver::ReadCustomValueRequest :md5sum-) "5313d8a6d811b0dd65e0326479c514d8")
(setf (get ttl_driver::ReadCustomValueRequest :datatype-) "ttl_driver/ReadCustomValueRequest")
(setf (get ttl_driver::ReadCustomValueRequest :definition-)
      "# Check XL-320 and XL-430 reference doc for
# the complete register table

uint8 id
int32 reg_address
int32 byte_number
---
int32 value
int32 status
string message

")

(setf (get ttl_driver::ReadCustomValueResponse :md5sum-) "5313d8a6d811b0dd65e0326479c514d8")
(setf (get ttl_driver::ReadCustomValueResponse :datatype-) "ttl_driver/ReadCustomValueResponse")
(setf (get ttl_driver::ReadCustomValueResponse :definition-)
      "# Check XL-320 and XL-430 reference doc for
# the complete register table

uint8 id
int32 reg_address
int32 byte_number
---
int32 value
int32 status
string message

")



(provide :ttl_driver/ReadCustomValue "5313d8a6d811b0dd65e0326479c514d8")


