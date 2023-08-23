;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_sound::PlaySound)
  (if (not (find-package "NIRYO_ROBOT_SOUND"))
    (make-package "NIRYO_ROBOT_SOUND"))
  (shadow 'PlaySound (find-package "NIRYO_ROBOT_SOUND")))
(unless (find-package "NIRYO_ROBOT_SOUND::PLAYSOUND")
  (make-package "NIRYO_ROBOT_SOUND::PLAYSOUND"))
(unless (find-package "NIRYO_ROBOT_SOUND::PLAYSOUNDREQUEST")
  (make-package "NIRYO_ROBOT_SOUND::PLAYSOUNDREQUEST"))
(unless (find-package "NIRYO_ROBOT_SOUND::PLAYSOUNDRESPONSE")
  (make-package "NIRYO_ROBOT_SOUND::PLAYSOUNDRESPONSE"))

(in-package "ROS")





(defclass niryo_robot_sound::PlaySoundRequest
  :super ros::object
  :slots (_sound_name _start_time_sec _end_time_sec _wait_end ))

(defmethod niryo_robot_sound::PlaySoundRequest
  (:init
   (&key
    ((:sound_name __sound_name) "")
    ((:start_time_sec __start_time_sec) 0.0)
    ((:end_time_sec __end_time_sec) 0.0)
    ((:wait_end __wait_end) nil)
    )
   (send-super :init)
   (setq _sound_name (string __sound_name))
   (setq _start_time_sec (float __start_time_sec))
   (setq _end_time_sec (float __end_time_sec))
   (setq _wait_end __wait_end)
   self)
  (:sound_name
   (&optional __sound_name)
   (if __sound_name (setq _sound_name __sound_name)) _sound_name)
  (:start_time_sec
   (&optional __start_time_sec)
   (if __start_time_sec (setq _start_time_sec __start_time_sec)) _start_time_sec)
  (:end_time_sec
   (&optional __end_time_sec)
   (if __end_time_sec (setq _end_time_sec __end_time_sec)) _end_time_sec)
  (:wait_end
   (&optional (__wait_end :null))
   (if (not (eq __wait_end :null)) (setq _wait_end __wait_end)) _wait_end)
  (:serialization-length
   ()
   (+
    ;; string _sound_name
    4 (length _sound_name)
    ;; float64 _start_time_sec
    8
    ;; float64 _end_time_sec
    8
    ;; bool _wait_end
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _sound_name
       (write-long (length _sound_name) s) (princ _sound_name s)
     ;; float64 _start_time_sec
       (sys::poke _start_time_sec (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _end_time_sec
       (sys::poke _end_time_sec (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _wait_end
       (if _wait_end (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _sound_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sound_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _start_time_sec
     (setq _start_time_sec (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _end_time_sec
     (setq _end_time_sec (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _wait_end
     (setq _wait_end (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass niryo_robot_sound::PlaySoundResponse
  :super ros::object
  :slots (_status _message ))

(defmethod niryo_robot_sound::PlaySoundResponse
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

(defclass niryo_robot_sound::PlaySound
  :super ros::object
  :slots ())

(setf (get niryo_robot_sound::PlaySound :md5sum-) "5ee90888968337d1f5c1d1a00df1090c")
(setf (get niryo_robot_sound::PlaySound :datatype-) "niryo_robot_sound/PlaySound")
(setf (get niryo_robot_sound::PlaySound :request) niryo_robot_sound::PlaySoundRequest)
(setf (get niryo_robot_sound::PlaySound :response) niryo_robot_sound::PlaySoundResponse)

(defmethod niryo_robot_sound::PlaySoundRequest
  (:response () (instance niryo_robot_sound::PlaySoundResponse :init)))

(setf (get niryo_robot_sound::PlaySoundRequest :md5sum-) "5ee90888968337d1f5c1d1a00df1090c")
(setf (get niryo_robot_sound::PlaySoundRequest :datatype-) "niryo_robot_sound/PlaySoundRequest")
(setf (get niryo_robot_sound::PlaySoundRequest :definition-)
      "string sound_name

float64 start_time_sec
float64 end_time_sec  #if 0 or if end_time_sec>sound_duration the entire sound will be played

bool wait_end

---
int32 status
string message

")

(setf (get niryo_robot_sound::PlaySoundResponse :md5sum-) "5ee90888968337d1f5c1d1a00df1090c")
(setf (get niryo_robot_sound::PlaySoundResponse :datatype-) "niryo_robot_sound/PlaySoundResponse")
(setf (get niryo_robot_sound::PlaySoundResponse :definition-)
      "string sound_name

float64 start_time_sec
float64 end_time_sec  #if 0 or if end_time_sec>sound_duration the entire sound will be played

bool wait_end

---
int32 status
string message

")



(provide :niryo_robot_sound/PlaySound "5ee90888968337d1f5c1d1a00df1090c")


