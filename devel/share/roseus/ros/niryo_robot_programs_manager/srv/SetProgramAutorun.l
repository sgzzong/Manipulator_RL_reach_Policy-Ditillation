;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_programs_manager::SetProgramAutorun)
  (if (not (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER"))
    (make-package "NIRYO_ROBOT_PROGRAMS_MANAGER"))
  (shadow 'SetProgramAutorun (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER")))
(unless (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER::SETPROGRAMAUTORUN")
  (make-package "NIRYO_ROBOT_PROGRAMS_MANAGER::SETPROGRAMAUTORUN"))
(unless (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER::SETPROGRAMAUTORUNREQUEST")
  (make-package "NIRYO_ROBOT_PROGRAMS_MANAGER::SETPROGRAMAUTORUNREQUEST"))
(unless (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER::SETPROGRAMAUTORUNRESPONSE")
  (make-package "NIRYO_ROBOT_PROGRAMS_MANAGER::SETPROGRAMAUTORUNRESPONSE"))

(in-package "ROS")





(intern "*DISABLE*" (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER::SETPROGRAMAUTORUNREQUEST"))
(shadow '*DISABLE* (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER::SETPROGRAMAUTORUNREQUEST"))
(defconstant niryo_robot_programs_manager::SetProgramAutorunRequest::*DISABLE* 0)
(intern "*ONE_SHOT*" (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER::SETPROGRAMAUTORUNREQUEST"))
(shadow '*ONE_SHOT* (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER::SETPROGRAMAUTORUNREQUEST"))
(defconstant niryo_robot_programs_manager::SetProgramAutorunRequest::*ONE_SHOT* 1)
(intern "*LOOP*" (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER::SETPROGRAMAUTORUNREQUEST"))
(shadow '*LOOP* (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER::SETPROGRAMAUTORUNREQUEST"))
(defconstant niryo_robot_programs_manager::SetProgramAutorunRequest::*LOOP* 2)

(defun niryo_robot_programs_manager::SetProgramAutorunRequest-to-symbol (const)
  (cond
        ((= const 0) 'niryo_robot_programs_manager::SetProgramAutorunRequest::*DISABLE*)
        ((= const 1) 'niryo_robot_programs_manager::SetProgramAutorunRequest::*ONE_SHOT*)
        ((= const 2) 'niryo_robot_programs_manager::SetProgramAutorunRequest::*LOOP*)
        (t nil)))

(defclass niryo_robot_programs_manager::SetProgramAutorunRequest
  :super ros::object
  :slots (_language _name _mode ))

(defmethod niryo_robot_programs_manager::SetProgramAutorunRequest
  (:init
   (&key
    ((:language __language) (instance niryo_robot_programs_manager::ProgramLanguage :init))
    ((:name __name) "")
    ((:mode __mode) 0)
    )
   (send-super :init)
   (setq _language __language)
   (setq _name (string __name))
   (setq _mode (round __mode))
   self)
  (:language
   (&rest __language)
   (if (keywordp (car __language))
       (send* _language __language)
     (progn
       (if __language (setq _language (car __language)))
       _language)))
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; niryo_robot_programs_manager/ProgramLanguage _language
    (send _language :serialization-length)
    ;; string _name
    4 (length _name)
    ;; int8 _mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; niryo_robot_programs_manager/ProgramLanguage _language
       (send _language :serialize s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; int8 _mode
       (write-byte _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; niryo_robot_programs_manager/ProgramLanguage _language
     (send _language :deserialize buf ptr-) (incf ptr- (send _language :serialization-length))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _mode 127) (setq _mode (- _mode 256)))
   ;;
   self)
  )

(defclass niryo_robot_programs_manager::SetProgramAutorunResponse
  :super ros::object
  :slots (_status _message ))

(defmethod niryo_robot_programs_manager::SetProgramAutorunResponse
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

(defclass niryo_robot_programs_manager::SetProgramAutorun
  :super ros::object
  :slots ())

(setf (get niryo_robot_programs_manager::SetProgramAutorun :md5sum-) "6daf4f32083258273fc8b9bd84cd3a36")
(setf (get niryo_robot_programs_manager::SetProgramAutorun :datatype-) "niryo_robot_programs_manager/SetProgramAutorun")
(setf (get niryo_robot_programs_manager::SetProgramAutorun :request) niryo_robot_programs_manager::SetProgramAutorunRequest)
(setf (get niryo_robot_programs_manager::SetProgramAutorun :response) niryo_robot_programs_manager::SetProgramAutorunResponse)

(defmethod niryo_robot_programs_manager::SetProgramAutorunRequest
  (:response () (instance niryo_robot_programs_manager::SetProgramAutorunResponse :init)))

(setf (get niryo_robot_programs_manager::SetProgramAutorunRequest :md5sum-) "6daf4f32083258273fc8b9bd84cd3a36")
(setf (get niryo_robot_programs_manager::SetProgramAutorunRequest :datatype-) "niryo_robot_programs_manager/SetProgramAutorunRequest")
(setf (get niryo_robot_programs_manager::SetProgramAutorunRequest :definition-)
      "# Program language
niryo_robot_programs_manager/ProgramLanguage language

# Program Name
string name

# Mode
int8 DISABLE = 0
int8 ONE_SHOT = 1
int8 LOOP = 2

int8 mode


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

(setf (get niryo_robot_programs_manager::SetProgramAutorunResponse :md5sum-) "6daf4f32083258273fc8b9bd84cd3a36")
(setf (get niryo_robot_programs_manager::SetProgramAutorunResponse :datatype-) "niryo_robot_programs_manager/SetProgramAutorunResponse")
(setf (get niryo_robot_programs_manager::SetProgramAutorunResponse :definition-)
      "# Program language
niryo_robot_programs_manager/ProgramLanguage language

# Program Name
string name

# Mode
int8 DISABLE = 0
int8 ONE_SHOT = 1
int8 LOOP = 2

int8 mode


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



(provide :niryo_robot_programs_manager/SetProgramAutorun "6daf4f32083258273fc8b9bd84cd3a36")


