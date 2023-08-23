;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_programs_manager::GetProgram)
  (if (not (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER"))
    (make-package "NIRYO_ROBOT_PROGRAMS_MANAGER"))
  (shadow 'GetProgram (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER")))
(unless (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER::GETPROGRAM")
  (make-package "NIRYO_ROBOT_PROGRAMS_MANAGER::GETPROGRAM"))
(unless (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER::GETPROGRAMREQUEST")
  (make-package "NIRYO_ROBOT_PROGRAMS_MANAGER::GETPROGRAMREQUEST"))
(unless (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER::GETPROGRAMRESPONSE")
  (make-package "NIRYO_ROBOT_PROGRAMS_MANAGER::GETPROGRAMRESPONSE"))

(in-package "ROS")





(defclass niryo_robot_programs_manager::GetProgramRequest
  :super ros::object
  :slots (_name _language ))

(defmethod niryo_robot_programs_manager::GetProgramRequest
  (:init
   (&key
    ((:name __name) "")
    ((:language __language) (instance niryo_robot_programs_manager::ProgramLanguage :init))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _language __language)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:language
   (&rest __language)
   (if (keywordp (car __language))
       (send* _language __language)
     (progn
       (if __language (setq _language (car __language)))
       _language)))
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; niryo_robot_programs_manager/ProgramLanguage _language
    (send _language :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; niryo_robot_programs_manager/ProgramLanguage _language
       (send _language :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; niryo_robot_programs_manager/ProgramLanguage _language
     (send _language :deserialize buf ptr-) (incf ptr- (send _language :serialization-length))
   ;;
   self)
  )

(defclass niryo_robot_programs_manager::GetProgramResponse
  :super ros::object
  :slots (_status _message _code _description ))

(defmethod niryo_robot_programs_manager::GetProgramResponse
  (:init
   (&key
    ((:status __status) 0)
    ((:message __message) "")
    ((:code __code) "")
    ((:description __description) "")
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _message (string __message))
   (setq _code (string __code))
   (setq _description (string __description))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:code
   (&optional __code)
   (if __code (setq _code __code)) _code)
  (:description
   (&optional __description)
   (if __description (setq _description __description)) _description)
  (:serialization-length
   ()
   (+
    ;; int32 _status
    4
    ;; string _message
    4 (length _message)
    ;; string _code
    4 (length _code)
    ;; string _description
    4 (length _description)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; string _code
       (write-long (length _code) s) (princ _code s)
     ;; string _description
       (write-long (length _description) s) (princ _description s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _code
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _code (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass niryo_robot_programs_manager::GetProgram
  :super ros::object
  :slots ())

(setf (get niryo_robot_programs_manager::GetProgram :md5sum-) "2cd6f2e950f6a3233dbb614065e98a18")
(setf (get niryo_robot_programs_manager::GetProgram :datatype-) "niryo_robot_programs_manager/GetProgram")
(setf (get niryo_robot_programs_manager::GetProgram :request) niryo_robot_programs_manager::GetProgramRequest)
(setf (get niryo_robot_programs_manager::GetProgram :response) niryo_robot_programs_manager::GetProgramResponse)

(defmethod niryo_robot_programs_manager::GetProgramRequest
  (:response () (instance niryo_robot_programs_manager::GetProgramResponse :init)))

(setf (get niryo_robot_programs_manager::GetProgramRequest :md5sum-) "2cd6f2e950f6a3233dbb614065e98a18")
(setf (get niryo_robot_programs_manager::GetProgramRequest :datatype-) "niryo_robot_programs_manager/GetProgramRequest")
(setf (get niryo_robot_programs_manager::GetProgramRequest :definition-)
      "string name

niryo_robot_programs_manager/ProgramLanguage language

================================================================================
MSG: niryo_robot_programs_manager/ProgramLanguage
int8 NONE = -1

int8 ALL = 0

# Runnable
int8 PYTHON2 = 1
int8 PYTHON3 = 2

# Not Runnable
int8 BLOCKLY = 66

int8 used
---
int32 status
string message

string code
string description

")

(setf (get niryo_robot_programs_manager::GetProgramResponse :md5sum-) "2cd6f2e950f6a3233dbb614065e98a18")
(setf (get niryo_robot_programs_manager::GetProgramResponse :datatype-) "niryo_robot_programs_manager/GetProgramResponse")
(setf (get niryo_robot_programs_manager::GetProgramResponse :definition-)
      "string name

niryo_robot_programs_manager/ProgramLanguage language

================================================================================
MSG: niryo_robot_programs_manager/ProgramLanguage
int8 NONE = -1

int8 ALL = 0

# Runnable
int8 PYTHON2 = 1
int8 PYTHON3 = 2

# Not Runnable
int8 BLOCKLY = 66

int8 used
---
int32 status
string message

string code
string description

")



(provide :niryo_robot_programs_manager/GetProgram "2cd6f2e950f6a3233dbb614065e98a18")


