;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_programs_manager::GetProgramList)
  (if (not (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER"))
    (make-package "NIRYO_ROBOT_PROGRAMS_MANAGER"))
  (shadow 'GetProgramList (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER")))
(unless (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER::GETPROGRAMLIST")
  (make-package "NIRYO_ROBOT_PROGRAMS_MANAGER::GETPROGRAMLIST"))
(unless (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER::GETPROGRAMLISTREQUEST")
  (make-package "NIRYO_ROBOT_PROGRAMS_MANAGER::GETPROGRAMLISTREQUEST"))
(unless (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER::GETPROGRAMLISTRESPONSE")
  (make-package "NIRYO_ROBOT_PROGRAMS_MANAGER::GETPROGRAMLISTRESPONSE"))

(in-package "ROS")





(defclass niryo_robot_programs_manager::GetProgramListRequest
  :super ros::object
  :slots (_language ))

(defmethod niryo_robot_programs_manager::GetProgramListRequest
  (:init
   (&key
    ((:language __language) (instance niryo_robot_programs_manager::ProgramLanguage :init))
    )
   (send-super :init)
   (setq _language __language)
   self)
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
    ;; niryo_robot_programs_manager/ProgramLanguage _language
    (send _language :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; niryo_robot_programs_manager/ProgramLanguage _language
       (send _language :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; niryo_robot_programs_manager/ProgramLanguage _language
     (send _language :deserialize buf ptr-) (incf ptr- (send _language :serialization-length))
   ;;
   self)
  )

(defclass niryo_robot_programs_manager::GetProgramListResponse
  :super ros::object
  :slots (_programs_names _list_of_language_list _programs_description ))

(defmethod niryo_robot_programs_manager::GetProgramListResponse
  (:init
   (&key
    ((:programs_names __programs_names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:list_of_language_list __list_of_language_list) ())
    ((:programs_description __programs_description) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _programs_names __programs_names)
   (setq _list_of_language_list __list_of_language_list)
   (setq _programs_description __programs_description)
   self)
  (:programs_names
   (&optional __programs_names)
   (if __programs_names (setq _programs_names __programs_names)) _programs_names)
  (:list_of_language_list
   (&rest __list_of_language_list)
   (if (keywordp (car __list_of_language_list))
       (send* _list_of_language_list __list_of_language_list)
     (progn
       (if __list_of_language_list (setq _list_of_language_list (car __list_of_language_list)))
       _list_of_language_list)))
  (:programs_description
   (&optional __programs_description)
   (if __programs_description (setq _programs_description __programs_description)) _programs_description)
  (:serialization-length
   ()
   (+
    ;; string[] _programs_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _programs_names)) 4
    ;; niryo_robot_programs_manager/ProgramLanguageList[] _list_of_language_list
    (apply #'+ (send-all _list_of_language_list :serialization-length)) 4
    ;; string[] _programs_description
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _programs_description)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _programs_names
     (write-long (length _programs_names) s)
     (dolist (elem _programs_names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; niryo_robot_programs_manager/ProgramLanguageList[] _list_of_language_list
     (write-long (length _list_of_language_list) s)
     (dolist (elem _list_of_language_list)
       (send elem :serialize s)
       )
     ;; string[] _programs_description
     (write-long (length _programs_description) s)
     (dolist (elem _programs_description)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _programs_names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _programs_names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _programs_names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; niryo_robot_programs_manager/ProgramLanguageList[] _list_of_language_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _list_of_language_list (let (r) (dotimes (i n) (push (instance niryo_robot_programs_manager::ProgramLanguageList :init) r)) r))
     (dolist (elem- _list_of_language_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string[] _programs_description
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _programs_description (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _programs_description i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass niryo_robot_programs_manager::GetProgramList
  :super ros::object
  :slots ())

(setf (get niryo_robot_programs_manager::GetProgramList :md5sum-) "4dfd49d0b1eeafdb4a0d480996fbd9b9")
(setf (get niryo_robot_programs_manager::GetProgramList :datatype-) "niryo_robot_programs_manager/GetProgramList")
(setf (get niryo_robot_programs_manager::GetProgramList :request) niryo_robot_programs_manager::GetProgramListRequest)
(setf (get niryo_robot_programs_manager::GetProgramList :response) niryo_robot_programs_manager::GetProgramListResponse)

(defmethod niryo_robot_programs_manager::GetProgramListRequest
  (:response () (instance niryo_robot_programs_manager::GetProgramListResponse :init)))

(setf (get niryo_robot_programs_manager::GetProgramListRequest :md5sum-) "4dfd49d0b1eeafdb4a0d480996fbd9b9")
(setf (get niryo_robot_programs_manager::GetProgramListRequest :datatype-) "niryo_robot_programs_manager/GetProgramListRequest")
(setf (get niryo_robot_programs_manager::GetProgramListRequest :definition-)
      "niryo_robot_programs_manager/ProgramLanguage language

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
string[] programs_names
niryo_robot_programs_manager/ProgramLanguageList[] list_of_language_list
string[] programs_description



================================================================================
MSG: niryo_robot_programs_manager/ProgramLanguageList
niryo_robot_programs_manager/ProgramLanguage[] language_list

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

(setf (get niryo_robot_programs_manager::GetProgramListResponse :md5sum-) "4dfd49d0b1eeafdb4a0d480996fbd9b9")
(setf (get niryo_robot_programs_manager::GetProgramListResponse :datatype-) "niryo_robot_programs_manager/GetProgramListResponse")
(setf (get niryo_robot_programs_manager::GetProgramListResponse :definition-)
      "niryo_robot_programs_manager/ProgramLanguage language

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
string[] programs_names
niryo_robot_programs_manager/ProgramLanguageList[] list_of_language_list
string[] programs_description



================================================================================
MSG: niryo_robot_programs_manager/ProgramLanguageList
niryo_robot_programs_manager/ProgramLanguage[] language_list

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



(provide :niryo_robot_programs_manager/GetProgramList "4dfd49d0b1eeafdb4a0d480996fbd9b9")


