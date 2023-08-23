;; Auto-generated. Do not edit!


(when (boundp 'ttl_driver::WriteVelocityProfile)
  (if (not (find-package "TTL_DRIVER"))
    (make-package "TTL_DRIVER"))
  (shadow 'WriteVelocityProfile (find-package "TTL_DRIVER")))
(unless (find-package "TTL_DRIVER::WRITEVELOCITYPROFILE")
  (make-package "TTL_DRIVER::WRITEVELOCITYPROFILE"))
(unless (find-package "TTL_DRIVER::WRITEVELOCITYPROFILEREQUEST")
  (make-package "TTL_DRIVER::WRITEVELOCITYPROFILEREQUEST"))
(unless (find-package "TTL_DRIVER::WRITEVELOCITYPROFILERESPONSE")
  (make-package "TTL_DRIVER::WRITEVELOCITYPROFILERESPONSE"))

(in-package "ROS")





(defclass ttl_driver::WriteVelocityProfileRequest
  :super ros::object
  :slots (_id _v_start _a_1 _v_1 _a_max _v_max _d_max _d_1 _v_stop ))

(defmethod ttl_driver::WriteVelocityProfileRequest
  (:init
   (&key
    ((:id __id) 0)
    ((:v_start __v_start) 0.0)
    ((:a_1 __a_1) 0.0)
    ((:v_1 __v_1) 0.0)
    ((:a_max __a_max) 0.0)
    ((:v_max __v_max) 0.0)
    ((:d_max __d_max) 0.0)
    ((:d_1 __d_1) 0.0)
    ((:v_stop __v_stop) 0.0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _v_start (float __v_start))
   (setq _a_1 (float __a_1))
   (setq _v_1 (float __v_1))
   (setq _a_max (float __a_max))
   (setq _v_max (float __v_max))
   (setq _d_max (float __d_max))
   (setq _d_1 (float __d_1))
   (setq _v_stop (float __v_stop))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:v_start
   (&optional __v_start)
   (if __v_start (setq _v_start __v_start)) _v_start)
  (:a_1
   (&optional __a_1)
   (if __a_1 (setq _a_1 __a_1)) _a_1)
  (:v_1
   (&optional __v_1)
   (if __v_1 (setq _v_1 __v_1)) _v_1)
  (:a_max
   (&optional __a_max)
   (if __a_max (setq _a_max __a_max)) _a_max)
  (:v_max
   (&optional __v_max)
   (if __v_max (setq _v_max __v_max)) _v_max)
  (:d_max
   (&optional __d_max)
   (if __d_max (setq _d_max __d_max)) _d_max)
  (:d_1
   (&optional __d_1)
   (if __d_1 (setq _d_1 __d_1)) _d_1)
  (:v_stop
   (&optional __v_stop)
   (if __v_stop (setq _v_stop __v_stop)) _v_stop)
  (:serialization-length
   ()
   (+
    ;; uint8 _id
    1
    ;; float64 _v_start
    8
    ;; float64 _a_1
    8
    ;; float64 _v_1
    8
    ;; float64 _a_max
    8
    ;; float64 _v_max
    8
    ;; float64 _d_max
    8
    ;; float64 _d_1
    8
    ;; float64 _v_stop
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id
       (write-byte _id s)
     ;; float64 _v_start
       (sys::poke _v_start (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _a_1
       (sys::poke _a_1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _v_1
       (sys::poke _v_1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _a_max
       (sys::poke _a_max (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _v_max
       (sys::poke _v_max (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _d_max
       (sys::poke _d_max (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _d_1
       (sys::poke _d_1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _v_stop
       (sys::poke _v_stop (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _v_start
     (setq _v_start (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _a_1
     (setq _a_1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _v_1
     (setq _v_1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _a_max
     (setq _a_max (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _v_max
     (setq _v_max (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _d_max
     (setq _d_max (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _d_1
     (setq _d_1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _v_stop
     (setq _v_stop (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass ttl_driver::WriteVelocityProfileResponse
  :super ros::object
  :slots (_status _message ))

(defmethod ttl_driver::WriteVelocityProfileResponse
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

(defclass ttl_driver::WriteVelocityProfile
  :super ros::object
  :slots ())

(setf (get ttl_driver::WriteVelocityProfile :md5sum-) "0d7964b1831b6f9fe2e48dd363b22396")
(setf (get ttl_driver::WriteVelocityProfile :datatype-) "ttl_driver/WriteVelocityProfile")
(setf (get ttl_driver::WriteVelocityProfile :request) ttl_driver::WriteVelocityProfileRequest)
(setf (get ttl_driver::WriteVelocityProfile :response) ttl_driver::WriteVelocityProfileResponse)

(defmethod ttl_driver::WriteVelocityProfileRequest
  (:response () (instance ttl_driver::WriteVelocityProfileResponse :init)))

(setf (get ttl_driver::WriteVelocityProfileRequest :md5sum-) "0d7964b1831b6f9fe2e48dd363b22396")
(setf (get ttl_driver::WriteVelocityProfileRequest :datatype-) "ttl_driver/WriteVelocityProfileRequest")
(setf (get ttl_driver::WriteVelocityProfileRequest :definition-)
      "# Check stepper ttl reference doc for
# the complete register table

uint8 id

float64 v_start

float64 a_1
float64 v_1

float64 a_max
float64 v_max
float64 d_max

float64 d_1

float64 v_stop
---
int32 status
string message

")

(setf (get ttl_driver::WriteVelocityProfileResponse :md5sum-) "0d7964b1831b6f9fe2e48dd363b22396")
(setf (get ttl_driver::WriteVelocityProfileResponse :datatype-) "ttl_driver/WriteVelocityProfileResponse")
(setf (get ttl_driver::WriteVelocityProfileResponse :definition-)
      "# Check stepper ttl reference doc for
# the complete register table

uint8 id

float64 v_start

float64 a_1
float64 v_1

float64 a_max
float64 v_max
float64 d_max

float64 d_1

float64 v_stop
---
int32 status
string message

")



(provide :ttl_driver/WriteVelocityProfile "0d7964b1831b6f9fe2e48dd363b22396")


