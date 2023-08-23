;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_sound::ManageSound)
  (if (not (find-package "NIRYO_ROBOT_SOUND"))
    (make-package "NIRYO_ROBOT_SOUND"))
  (shadow 'ManageSound (find-package "NIRYO_ROBOT_SOUND")))
(unless (find-package "NIRYO_ROBOT_SOUND::MANAGESOUND")
  (make-package "NIRYO_ROBOT_SOUND::MANAGESOUND"))
(unless (find-package "NIRYO_ROBOT_SOUND::MANAGESOUNDREQUEST")
  (make-package "NIRYO_ROBOT_SOUND::MANAGESOUNDREQUEST"))
(unless (find-package "NIRYO_ROBOT_SOUND::MANAGESOUNDRESPONSE")
  (make-package "NIRYO_ROBOT_SOUND::MANAGESOUNDRESPONSE"))

(in-package "ROS")





(intern "*ADD*" (find-package "NIRYO_ROBOT_SOUND::MANAGESOUNDREQUEST"))
(shadow '*ADD* (find-package "NIRYO_ROBOT_SOUND::MANAGESOUNDREQUEST"))
(defconstant niryo_robot_sound::ManageSoundRequest::*ADD* 1)
(intern "*DELETE*" (find-package "NIRYO_ROBOT_SOUND::MANAGESOUNDREQUEST"))
(shadow '*DELETE* (find-package "NIRYO_ROBOT_SOUND::MANAGESOUNDREQUEST"))
(defconstant niryo_robot_sound::ManageSoundRequest::*DELETE* 2)

(defun niryo_robot_sound::ManageSoundRequest-to-symbol (const)
  (cond
        ((= const 1) 'niryo_robot_sound::ManageSoundRequest::*ADD*)
        ((= const 2) 'niryo_robot_sound::ManageSoundRequest::*DELETE*)
        (t nil)))

(defclass niryo_robot_sound::ManageSoundRequest
  :super ros::object
  :slots (_sound_name _action _sound_data ))

(defmethod niryo_robot_sound::ManageSoundRequest
  (:init
   (&key
    ((:sound_name __sound_name) "")
    ((:action __action) 0)
    ((:sound_data __sound_data) "")
    )
   (send-super :init)
   (setq _sound_name (string __sound_name))
   (setq _action (round __action))
   (setq _sound_data (string __sound_data))
   self)
  (:sound_name
   (&optional __sound_name)
   (if __sound_name (setq _sound_name __sound_name)) _sound_name)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:sound_data
   (&optional __sound_data)
   (if __sound_data (setq _sound_data __sound_data)) _sound_data)
  (:serialization-length
   ()
   (+
    ;; string _sound_name
    4 (length _sound_name)
    ;; int8 _action
    1
    ;; string _sound_data
    4 (length _sound_data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _sound_name
       (write-long (length _sound_name) s) (princ _sound_name s)
     ;; int8 _action
       (write-byte _action s)
     ;; string _sound_data
       (write-long (length _sound_data) s) (princ _sound_data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _sound_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sound_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int8 _action
     (setq _action (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _action 127) (setq _action (- _action 256)))
   ;; string _sound_data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sound_data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass niryo_robot_sound::ManageSoundResponse
  :super ros::object
  :slots (_status _message ))

(defmethod niryo_robot_sound::ManageSoundResponse
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

(defclass niryo_robot_sound::ManageSound
  :super ros::object
  :slots ())

(setf (get niryo_robot_sound::ManageSound :md5sum-) "4c96f2b7c9ccc8fcd4a9cc729611626b")
(setf (get niryo_robot_sound::ManageSound :datatype-) "niryo_robot_sound/ManageSound")
(setf (get niryo_robot_sound::ManageSound :request) niryo_robot_sound::ManageSoundRequest)
(setf (get niryo_robot_sound::ManageSound :response) niryo_robot_sound::ManageSoundResponse)

(defmethod niryo_robot_sound::ManageSoundRequest
  (:response () (instance niryo_robot_sound::ManageSoundResponse :init)))

(setf (get niryo_robot_sound::ManageSoundRequest :md5sum-) "4c96f2b7c9ccc8fcd4a9cc729611626b")
(setf (get niryo_robot_sound::ManageSoundRequest :datatype-) "niryo_robot_sound/ManageSoundRequest")
(setf (get niryo_robot_sound::ManageSoundRequest :definition-)
      "string sound_name

int8 ADD = 1
int8 DELETE = 2
int8 action

# Data to add a new sound
string sound_data

---
int32 status
string message

")

(setf (get niryo_robot_sound::ManageSoundResponse :md5sum-) "4c96f2b7c9ccc8fcd4a9cc729611626b")
(setf (get niryo_robot_sound::ManageSoundResponse :datatype-) "niryo_robot_sound/ManageSoundResponse")
(setf (get niryo_robot_sound::ManageSoundResponse :definition-)
      "string sound_name

int8 ADD = 1
int8 DELETE = 2
int8 action

# Data to add a new sound
string sound_data

---
int32 status
string message

")



(provide :niryo_robot_sound/ManageSound "4c96f2b7c9ccc8fcd4a9cc729611626b")


