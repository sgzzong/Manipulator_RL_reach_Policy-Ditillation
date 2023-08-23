;; Auto-generated. Do not edit!


(when (boundp 'ttl_driver::WritePIDValue)
  (if (not (find-package "TTL_DRIVER"))
    (make-package "TTL_DRIVER"))
  (shadow 'WritePIDValue (find-package "TTL_DRIVER")))
(unless (find-package "TTL_DRIVER::WRITEPIDVALUE")
  (make-package "TTL_DRIVER::WRITEPIDVALUE"))
(unless (find-package "TTL_DRIVER::WRITEPIDVALUEREQUEST")
  (make-package "TTL_DRIVER::WRITEPIDVALUEREQUEST"))
(unless (find-package "TTL_DRIVER::WRITEPIDVALUERESPONSE")
  (make-package "TTL_DRIVER::WRITEPIDVALUERESPONSE"))

(in-package "ROS")





(defclass ttl_driver::WritePIDValueRequest
  :super ros::object
  :slots (_id _pos_p_gain _pos_i_gain _pos_d_gain _vel_p_gain _vel_i_gain _ff1_gain _ff2_gain _vel_profile _acc_profile ))

(defmethod ttl_driver::WritePIDValueRequest
  (:init
   (&key
    ((:id __id) 0)
    ((:pos_p_gain __pos_p_gain) 0)
    ((:pos_i_gain __pos_i_gain) 0)
    ((:pos_d_gain __pos_d_gain) 0)
    ((:vel_p_gain __vel_p_gain) 0)
    ((:vel_i_gain __vel_i_gain) 0)
    ((:ff1_gain __ff1_gain) 0)
    ((:ff2_gain __ff2_gain) 0)
    ((:vel_profile __vel_profile) 0)
    ((:acc_profile __acc_profile) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _pos_p_gain (round __pos_p_gain))
   (setq _pos_i_gain (round __pos_i_gain))
   (setq _pos_d_gain (round __pos_d_gain))
   (setq _vel_p_gain (round __vel_p_gain))
   (setq _vel_i_gain (round __vel_i_gain))
   (setq _ff1_gain (round __ff1_gain))
   (setq _ff2_gain (round __ff2_gain))
   (setq _vel_profile (round __vel_profile))
   (setq _acc_profile (round __acc_profile))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
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
  (:vel_profile
   (&optional __vel_profile)
   (if __vel_profile (setq _vel_profile __vel_profile)) _vel_profile)
  (:acc_profile
   (&optional __acc_profile)
   (if __acc_profile (setq _acc_profile __acc_profile)) _acc_profile)
  (:serialization-length
   ()
   (+
    ;; uint8 _id
    1
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
    ;; uint32 _vel_profile
    4
    ;; uint32 _acc_profile
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id
       (write-byte _id s)
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
     ;; uint32 _vel_profile
       (write-long _vel_profile s)
     ;; uint32 _acc_profile
       (write-long _acc_profile s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
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
   ;; uint32 _vel_profile
     (setq _vel_profile (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _acc_profile
     (setq _acc_profile (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass ttl_driver::WritePIDValueResponse
  :super ros::object
  :slots (_status _message ))

(defmethod ttl_driver::WritePIDValueResponse
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

(defclass ttl_driver::WritePIDValue
  :super ros::object
  :slots ())

(setf (get ttl_driver::WritePIDValue :md5sum-) "017cd3b317df9961b6cf57aa9e1a9f80")
(setf (get ttl_driver::WritePIDValue :datatype-) "ttl_driver/WritePIDValue")
(setf (get ttl_driver::WritePIDValue :request) ttl_driver::WritePIDValueRequest)
(setf (get ttl_driver::WritePIDValue :response) ttl_driver::WritePIDValueResponse)

(defmethod ttl_driver::WritePIDValueRequest
  (:response () (instance ttl_driver::WritePIDValueResponse :init)))

(setf (get ttl_driver::WritePIDValueRequest :md5sum-) "017cd3b317df9961b6cf57aa9e1a9f80")
(setf (get ttl_driver::WritePIDValueRequest :datatype-) "ttl_driver/WritePIDValueRequest")
(setf (get ttl_driver::WritePIDValueRequest :definition-)
      "# Check XL-XXX motors reference doc for
# the complete register table

uint8 id
uint16 pos_p_gain
uint16 pos_i_gain
uint16 pos_d_gain

uint16 vel_p_gain
uint16 vel_i_gain

uint16 ff1_gain
uint16 ff2_gain

# vel and acc profile for dxl
uint32 vel_profile
uint32 acc_profile
---
int32 status
string message

")

(setf (get ttl_driver::WritePIDValueResponse :md5sum-) "017cd3b317df9961b6cf57aa9e1a9f80")
(setf (get ttl_driver::WritePIDValueResponse :datatype-) "ttl_driver/WritePIDValueResponse")
(setf (get ttl_driver::WritePIDValueResponse :definition-)
      "# Check XL-XXX motors reference doc for
# the complete register table

uint8 id
uint16 pos_p_gain
uint16 pos_i_gain
uint16 pos_d_gain

uint16 vel_p_gain
uint16 vel_i_gain

uint16 ff1_gain
uint16 ff2_gain

# vel and acc profile for dxl
uint32 vel_profile
uint32 acc_profile
---
int32 status
string message

")



(provide :ttl_driver/WritePIDValue "017cd3b317df9961b6cf57aa9e1a9f80")


