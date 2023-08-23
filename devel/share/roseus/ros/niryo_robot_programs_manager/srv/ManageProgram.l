;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_programs_manager::ManageProgram)
  (if (not (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER"))
    (make-package "NIRYO_ROBOT_PROGRAMS_MANAGER"))
  (shadow 'ManageProgram (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER")))
(unless (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER::MANAGEPROGRAM")
  (make-package "NIRYO_ROBOT_PROGRAMS_MANAGER::MANAGEPROGRAM"))
(unless (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER::MANAGEPROGRAMREQUEST")
  (make-package "NIRYO_ROBOT_PROGRAMS_MANAGER::MANAGEPROGRAMREQUEST"))
(unless (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER::MANAGEPROGRAMRESPONSE")
  (make-package "NIRYO_ROBOT_PROGRAMS_MANAGER::MANAGEPROGRAMRESPONSE"))

(in-package "ROS")





(intern "*SAVE*" (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER::MANAGEPROGRAMREQUEST"))
(shadow '*SAVE* (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER::MANAGEPROGRAMREQUEST"))
(defconstant niryo_robot_programs_manager::ManageProgramRequest::*SAVE* 1)
(intern "*DELETE*" (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER::MANAGEPROGRAMREQUEST"))
(shadow '*DELETE* (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER::MANAGEPROGRAMREQUEST"))
(defconstant niryo_robot_programs_manager::ManageProgramRequest::*DELETE* -1)

(defun niryo_robot_programs_manager::ManageProgramRequest-to-symbol (const)
  (cond
        ((= const 1) 'niryo_robot_programs_manager::ManageProgramRequest::*SAVE*)
        ((= const -1) 'niryo_robot_programs_manager::ManageProgramRequest::*DELETE*)
        (t nil)))

(defclass niryo_robot_programs_manager::ManageProgramRequest
  :super ros::object
  :slots (_cmd _name _language _code _description _allow_overwrite ))

(defmethod niryo_robot_programs_manager::ManageProgramRequest
  (:init
   (&key
    ((:cmd __cmd) 0)
    ((:name __name) "")
    ((:language __language) (instance niryo_robot_programs_manager::ProgramLanguage :init))
    ((:code __code) "")
    ((:description __description) "")
    ((:allow_overwrite __allow_overwrite) nil)
    )
   (send-super :init)
   (setq _cmd (round __cmd))
   (setq _name (string __name))
   (setq _language __language)
   (setq _code (string __code))
   (setq _description (string __description))
   (setq _allow_overwrite __allow_overwrite)
   self)
  (:cmd
   (&optional __cmd)
   (if __cmd (setq _cmd __cmd)) _cmd)
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
  (:code
   (&optional __code)
   (if __code (setq _code __code)) _code)
  (:description
   (&optional __description)
   (if __description (setq _description __description)) _description)
  (:allow_overwrite
   (&optional (__allow_overwrite :null))
   (if (not (eq __allow_overwrite :null)) (setq _allow_overwrite __allow_overwrite)) _allow_overwrite)
  (:serialization-length
   ()
   (+
    ;; int8 _cmd
    1
    ;; string _name
    4 (length _name)
    ;; niryo_robot_programs_manager/ProgramLanguage _language
    (send _language :serialization-length)
    ;; string _code
    4 (length _code)
    ;; string _description
    4 (length _description)
    ;; bool _allow_overwrite
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _cmd
       (write-byte _cmd s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; niryo_robot_programs_manager/ProgramLanguage _language
       (send _language :serialize s)
     ;; string _code
       (write-long (length _code) s) (princ _code s)
     ;; string _description
       (write-long (length _description) s) (princ _description s)
     ;; bool _allow_overwrite
       (if _allow_overwrite (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _cmd
     (setq _cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _cmd 127) (setq _cmd (- _cmd 256)))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; niryo_robot_programs_manager/ProgramLanguage _language
     (send _language :deserialize buf ptr-) (incf ptr- (send _language :serialization-length))
   ;; string _code
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _code (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _allow_overwrite
     (setq _allow_overwrite (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass niryo_robot_programs_manager::ManageProgramResponse
  :super ros::object
  :slots (_status _message ))

(defmethod niryo_robot_programs_manager::ManageProgramResponse
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
    ;; int16 _status
    2
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _status
       (write-word _status s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _status
     (setq _status (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass niryo_robot_programs_manager::ManageProgram
  :super ros::object
  :slots ())

(setf (get niryo_robot_programs_manager::ManageProgram :md5sum-) "c7b681976ba3e7a74583c11ce955db81")
(setf (get niryo_robot_programs_manager::ManageProgram :datatype-) "niryo_robot_programs_manager/ManageProgram")
(setf (get niryo_robot_programs_manager::ManageProgram :request) niryo_robot_programs_manager::ManageProgramRequest)
(setf (get niryo_robot_programs_manager::ManageProgram :response) niryo_robot_programs_manager::ManageProgramResponse)

(defmethod niryo_robot_programs_manager::ManageProgramRequest
  (:response () (instance niryo_robot_programs_manager::ManageProgramResponse :init)))

(setf (get niryo_robot_programs_manager::ManageProgramRequest :md5sum-) "c7b681976ba3e7a74583c11ce955db81")
(setf (get niryo_robot_programs_manager::ManageProgramRequest :datatype-) "niryo_robot_programs_manager/ManageProgramRequest")
(setf (get niryo_robot_programs_manager::ManageProgramRequest :definition-)
      "# Command
int32 SAVE = 1
int32 DELETE = -1
int8 cmd

# Program Name
string name

# - Creation
niryo_robot_programs_manager/ProgramLanguage language

string code
string description

bool allow_overwrite

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
int16 status
string message

")

(setf (get niryo_robot_programs_manager::ManageProgramResponse :md5sum-) "c7b681976ba3e7a74583c11ce955db81")
(setf (get niryo_robot_programs_manager::ManageProgramResponse :datatype-) "niryo_robot_programs_manager/ManageProgramResponse")
(setf (get niryo_robot_programs_manager::ManageProgramResponse :definition-)
      "# Command
int32 SAVE = 1
int32 DELETE = -1
int8 cmd

# Program Name
string name

# - Creation
niryo_robot_programs_manager/ProgramLanguage language

string code
string description

bool allow_overwrite

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
int16 status
string message

")



(provide :niryo_robot_programs_manager/ManageProgram "c7b681976ba3e7a74583c11ce955db81")


