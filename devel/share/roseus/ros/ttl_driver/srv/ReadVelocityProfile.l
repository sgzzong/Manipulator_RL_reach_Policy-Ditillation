;; Auto-generated. Do not edit!


(when (boundp 'ttl_driver::ReadVelocityProfile)
  (if (not (find-package "TTL_DRIVER"))
    (make-package "TTL_DRIVER"))
  (shadow 'ReadVelocityProfile (find-package "TTL_DRIVER")))
(unless (find-package "TTL_DRIVER::READVELOCITYPROFILE")
  (make-package "TTL_DRIVER::READVELOCITYPROFILE"))
(unless (find-package "TTL_DRIVER::READVELOCITYPROFILEREQUEST")
  (make-package "TTL_DRIVER::READVELOCITYPROFILEREQUEST"))
(unless (find-package "TTL_DRIVER::READVELOCITYPROFILERESPONSE")
  (make-package "TTL_DRIVER::READVELOCITYPROFILERESPONSE"))

(in-package "ROS")





(defclass ttl_driver::ReadVelocityProfileRequest
  :super ros::object
  :slots (_id ))

(defmethod ttl_driver::ReadVelocityProfileRequest
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

(defclass ttl_driver::ReadVelocityProfileResponse
  :super ros::object
  :slots (_v_start _a_1 _v_1 _a_max _v_max _d_max _d_1 _v_stop _status _message ))

(defmethod ttl_driver::ReadVelocityProfileResponse
  (:init
   (&key
    ((:v_start __v_start) 0.0)
    ((:a_1 __a_1) 0.0)
    ((:v_1 __v_1) 0.0)
    ((:a_max __a_max) 0.0)
    ((:v_max __v_max) 0.0)
    ((:d_max __d_max) 0.0)
    ((:d_1 __d_1) 0.0)
    ((:v_stop __v_stop) 0.0)
    ((:status __status) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _v_start (float __v_start))
   (setq _a_1 (float __a_1))
   (setq _v_1 (float __v_1))
   (setq _a_max (float __a_max))
   (setq _v_max (float __v_max))
   (setq _d_max (float __d_max))
   (setq _d_1 (float __d_1))
   (setq _v_stop (float __v_stop))
   (setq _status (round __status))
   (setq _message (string __message))
   self)
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
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
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
    ;; int32 _status
    4
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
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
     ;; int32 _status
       (write-long _status s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
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
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass ttl_driver::ReadVelocityProfile
  :super ros::object
  :slots ())

(setf (get ttl_driver::ReadVelocityProfile :md5sum-) "6149ad44c82bc4f1ae5c2f507a8ea7e5")
(setf (get ttl_driver::ReadVelocityProfile :datatype-) "ttl_driver/ReadVelocityProfile")
(setf (get ttl_driver::ReadVelocityProfile :request) ttl_driver::ReadVelocityProfileRequest)
(setf (get ttl_driver::ReadVelocityProfile :response) ttl_driver::ReadVelocityProfileResponse)

(defmethod ttl_driver::ReadVelocityProfileRequest
  (:response () (instance ttl_driver::ReadVelocityProfileResponse :init)))

(setf (get ttl_driver::ReadVelocityProfileRequest :md5sum-) "6149ad44c82bc4f1ae5c2f507a8ea7e5")
(setf (get ttl_driver::ReadVelocityProfileRequest :datatype-) "ttl_driver/ReadVelocityProfileRequest")
(setf (get ttl_driver::ReadVelocityProfileRequest :definition-)
      "# Check stepper ttl reference doc for
# the complete register table

uint8 id
---
float64 v_start

float64 a_1
float64 v_1

float64 a_max
float64 v_max
float64 d_max

float64 d_1

float64 v_stop

int32 status
string message

")

(setf (get ttl_driver::ReadVelocityProfileResponse :md5sum-) "6149ad44c82bc4f1ae5c2f507a8ea7e5")
(setf (get ttl_driver::ReadVelocityProfileResponse :datatype-) "ttl_driver/ReadVelocityProfileResponse")
(setf (get ttl_driver::ReadVelocityProfileResponse :definition-)
      "# Check stepper ttl reference doc for
# the complete register table

uint8 id
---
float64 v_start

float64 a_1
float64 v_1

float64 a_max
float64 v_max
float64 d_max

float64 d_1

float64 v_stop

int32 status
string message

")



(provide :ttl_driver/ReadVelocityProfile "6149ad44c82bc4f1ae5c2f507a8ea7e5")


