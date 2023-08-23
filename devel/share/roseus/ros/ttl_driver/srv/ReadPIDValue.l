;; Auto-generated. Do not edit!


(when (boundp 'ttl_driver::ReadPIDValue)
  (if (not (find-package "TTL_DRIVER"))
    (make-package "TTL_DRIVER"))
  (shadow 'ReadPIDValue (find-package "TTL_DRIVER")))
(unless (find-package "TTL_DRIVER::READPIDVALUE")
  (make-package "TTL_DRIVER::READPIDVALUE"))
(unless (find-package "TTL_DRIVER::READPIDVALUEREQUEST")
  (make-package "TTL_DRIVER::READPIDVALUEREQUEST"))
(unless (find-package "TTL_DRIVER::READPIDVALUERESPONSE")
  (make-package "TTL_DRIVER::READPIDVALUERESPONSE"))

(in-package "ROS")





(defclass ttl_driver::ReadPIDValueRequest
  :super ros::object
  :slots (_id ))

(defmethod ttl_driver::ReadPIDValueRequest
  (:init
   (&key
    ((:id __id) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; uint8 _id
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id
       (write-byte _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass ttl_driver::ReadPIDValueResponse
  :super ros::object
  :slots (_pos_p_gain _pos_i_gain _pos_d_gain _vel_p_gain _vel_i_gain _ff1_gain _ff2_gain _status _message ))

(defmethod ttl_driver::ReadPIDValueResponse
  (:init
   (&key
    ((:pos_p_gain __pos_p_gain) 0)
    ((:pos_i_gain __pos_i_gain) 0)
    ((:pos_d_gain __pos_d_gain) 0)
    ((:vel_p_gain __vel_p_gain) 0)
    ((:vel_i_gain __vel_i_gain) 0)
    ((:ff1_gain __ff1_gain) 0)
    ((:ff2_gain __ff2_gain) 0)
    ((:status __status) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _pos_p_gain (round __pos_p_gain))
   (setq _pos_i_gain (round __pos_i_gain))
   (setq _pos_d_gain (round __pos_d_gain))
   (setq _vel_p_gain (round __vel_p_gain))
   (setq _vel_i_gain (round __vel_i_gain))
   (setq _ff1_gain (round __ff1_gain))
   (setq _ff2_gain (round __ff2_gain))
   (setq _status (round __status))
   (setq _message (string __message))
   self)
  (:pos_p_gain
   (&optional __pos_p_gain)
   (if __pos_p_gain (setq _pos_p_gain __pos_p_gain)) _pos_p_gain)
  (:pos_i_gain
   (&optional __pos_i_gain)
   (if __pos_i_gain (setq _pos_i_gain __pos_i_gain)) _pos_i_gain)
  (:pos_d_gain
   (&optional __pos_d_gain)
   (if __pos_d_gain (setq _pos_d_gain __pos_d_gain)) _pos_d_gain)
  (:vel_p_gain
   (&optional __vel_p_gain)
   (if __vel_p_gain (setq _vel_p_gain __vel_p_gain)) _vel_p_gain)
  (:vel_i_gain
   (&optional __vel_i_gain)
   (if __vel_i_gain (setq _vel_i_gain __vel_i_gain)) _vel_i_gain)
  (:ff1_gain
   (&optional __ff1_gain)
   (if __ff1_gain (setq _ff1_gain __ff1_gain)) _ff1_gain)
  (:ff2_gain
   (&optional __ff2_gain)
   (if __ff2_gain (setq _ff2_gain __ff2_gain)) _ff2_gain)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; uint16 _pos_p_gain
    2
    ;; uint16 _pos_i_gain
    2
    ;; uint16 _pos_d_gain
    2
    ;; uint16 _vel_p_gain
    2
    ;; uint16 _vel_i_gain
    2
    ;; uint16 _ff1_gain
    2
    ;; uint16 _ff2_gain
    2
    ;; int32 _status
    4
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _pos_p_gain
       (write-word _pos_p_gain s)
     ;; uint16 _pos_i_gain
       (write-word _pos_i_gain s)
     ;; uint16 _pos_d_gain
       (write-word _pos_d_gain s)
     ;; uint16 _vel_p_gain
       (write-word _vel_p_gain s)
     ;; uint16 _vel_i_gain
       (write-word _vel_i_gain s)
     ;; uint16 _ff1_gain
       (write-word _ff1_gain s)
     ;; uint16 _ff2_gain
       (write-word _ff2_gain s)
     ;; int32 _status
       (write-long _status s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _pos_p_gain
     (setq _pos_p_gain (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _pos_i_gain
     (setq _pos_i_gain (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _pos_d_gain
     (setq _pos_d_gain (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _vel_p_gain
     (setq _vel_p_gain (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _vel_i_gain
     (setq _vel_i_gain (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _ff1_gain
     (setq _ff1_gain (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _ff2_gain
     (setq _ff2_gain (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass ttl_driver::ReadPIDValue
  :super ros::object
  :slots ())

(setf (get ttl_driver::ReadPIDValue :md5sum-) "45e5c7e050fa73a59321e8c0a31e479a")
(setf (get ttl_driver::ReadPIDValue :datatype-) "ttl_driver/ReadPIDValue")
(setf (get ttl_driver::ReadPIDValue :request) ttl_driver::ReadPIDValueRequest)
(setf (get ttl_driver::ReadPIDValue :response) ttl_driver::ReadPIDValueResponse)

(defmethod ttl_driver::ReadPIDValueRequest
  (:response () (instance ttl_driver::ReadPIDValueResponse :init)))

(setf (get ttl_driver::ReadPIDValueRequest :md5sum-) "45e5c7e050fa73a59321e8c0a31e479a")
(setf (get ttl_driver::ReadPIDValueRequest :datatype-) "ttl_driver/ReadPIDValueRequest")
(setf (get ttl_driver::ReadPIDValueRequest :definition-)
      "# Check XL-XXX motors reference doc for
# the complete register table

uint8 id
---
uint16 pos_p_gain
uint16 pos_i_gain
uint16 pos_d_gain

uint16 vel_p_gain
uint16 vel_i_gain

uint16 ff1_gain
uint16 ff2_gain

int32 status
string message

")

(setf (get ttl_driver::ReadPIDValueResponse :md5sum-) "45e5c7e050fa73a59321e8c0a31e479a")
(setf (get ttl_driver::ReadPIDValueResponse :datatype-) "ttl_driver/ReadPIDValueResponse")
(setf (get ttl_driver::ReadPIDValueResponse :definition-)
      "# Check XL-XXX motors reference doc for
# the complete register table

uint8 id
---
uint16 pos_p_gain
uint16 pos_i_gain
uint16 pos_d_gain

uint16 vel_p_gain
uint16 vel_i_gain

uint16 ff1_gain
uint16 ff2_gain

int32 status
string message

")



(provide :ttl_driver/ReadPIDValue "45e5c7e050fa73a59321e8c0a31e479a")


