;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_programs_manager::GetProgramAutorunInfos)
  (if (not (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER"))
    (make-package "NIRYO_ROBOT_PROGRAMS_MANAGER"))
  (shadow 'GetProgramAutorunInfos (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER")))
(unless (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER::GETPROGRAMAUTORUNINFOS")
  (make-package "NIRYO_ROBOT_PROGRAMS_MANAGER::GETPROGRAMAUTORUNINFOS"))
(unless (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER::GETPROGRAMAUTORUNINFOSREQUEST")
  (make-package "NIRYO_ROBOT_PROGRAMS_MANAGER::GETPROGRAMAUTORUNINFOSREQUEST"))
(unless (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER::GETPROGRAMAUTORUNINFOSRESPONSE")
  (make-package "NIRYO_ROBOT_PROGRAMS_MANAGER::GETPROGRAMAUTORUNINFOSRESPONSE"))

(in-package "ROS")





(defclass niryo_robot_programs_manager::GetProgramAutorunInfosRequest
  :super ros::object
  :slots ())

(defmethod niryo_robot_programs_manager::GetProgramAutorunInfosRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(intern "*ONE_SHOT*" (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER::GETPROGRAMAUTORUNINFOSRESPONSE"))
(shadow '*ONE_SHOT* (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER::GETPROGRAMAUTORUNINFOSRESPONSE"))
(defconstant niryo_robot_programs_manager::GetProgramAutorunInfosResponse::*ONE_SHOT* 1)
(intern "*LOOP*" (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER::GETPROGRAMAUTORUNINFOSRESPONSE"))
(shadow '*LOOP* (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER::GETPROGRAMAUTORUNINFOSRESPONSE"))
(defconstant niryo_robot_programs_manager::GetProgramAutorunInfosResponse::*LOOP* 2)

(defun niryo_robot_programs_manager::GetProgramAutorunInfosResponse-to-symbol (const)
  (cond
        ((= const 1) 'niryo_robot_programs_manager::GetProgramAutorunInfosResponse::*ONE_SHOT*)
        ((= const 2) 'niryo_robot_programs_manager::GetProgramAutorunInfosResponse::*LOOP*)
        (t nil)))

(defclass niryo_robot_programs_manager::GetProgramAutorunInfosResponse
  :super ros::object
  :slots (_status _message _language _name _mode ))

(defmethod niryo_robot_programs_manager::GetProgramAutorunInfosResponse
  (:init
   (&key
    ((:status __status) 0)
    ((:message __message) "")
    ((:language __language) (instance niryo_robot_programs_manager::ProgramLanguage :init))
    ((:name __name) "")
    ((:mode __mode) 0)
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _message (string __message))
   (setq _language __language)
   (setq _name (string __name))
   (setq _mode (round __mode))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
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
    ;; int32 _status
    4
    ;; string _message
    4 (length _message)
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
     ;; int32 _status
       (write-long _status s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
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
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
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

(defclass niryo_robot_programs_manager::GetProgramAutorunInfos
  :super ros::object
  :slots ())

(setf (get niryo_robot_programs_manager::GetProgramAutorunInfos :md5sum-) "61094f5162d09fb1bd7ad309ed1f2f8a")
(setf (get niryo_robot_programs_manager::GetProgramAutorunInfos :datatype-) "niryo_robot_programs_manager/GetProgramAutorunInfos")
(setf (get niryo_robot_programs_manager::GetProgramAutorunInfos :request) niryo_robot_programs_manager::GetProgramAutorunInfosRequest)
(setf (get niryo_robot_programs_manager::GetProgramAutorunInfos :response) niryo_robot_programs_manager::GetProgramAutorunInfosResponse)

(defmethod niryo_robot_programs_manager::GetProgramAutorunInfosRequest
  (:response () (instance niryo_robot_programs_manager::GetProgramAutorunInfosResponse :init)))

(setf (get niryo_robot_programs_manager::GetProgramAutorunInfosRequest :md5sum-) "61094f5162d09fb1bd7ad309ed1f2f8a")
(setf (get niryo_robot_programs_manager::GetProgramAutorunInfosRequest :datatype-) "niryo_robot_programs_manager/GetProgramAutorunInfosRequest")
(setf (get niryo_robot_programs_manager::GetProgramAutorunInfosRequest :definition-)
      "---
int32 status
string message

niryo_robot_programs_manager/ProgramLanguage language
string name

# Mode
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
")

(setf (get niryo_robot_programs_manager::GetProgramAutorunInfosResponse :md5sum-) "61094f5162d09fb1bd7ad309ed1f2f8a")
(setf (get niryo_robot_programs_manager::GetProgramAutorunInfosResponse :datatype-) "niryo_robot_programs_manager/GetProgramAutorunInfosResponse")
(setf (get niryo_robot_programs_manager::GetProgramAutorunInfosResponse :definition-)
      "---
int32 status
string message

niryo_robot_programs_manager/ProgramLanguage language
string name

# Mode
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
")



(provide :niryo_robot_programs_manager/GetProgramAutorunInfos "61094f5162d09fb1bd7ad309ed1f2f8a")


