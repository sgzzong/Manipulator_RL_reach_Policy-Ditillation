;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_programs_manager::ProgramLanguageList)
  (if (not (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER"))
    (make-package "NIRYO_ROBOT_PROGRAMS_MANAGER"))
  (shadow 'ProgramLanguageList (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER")))
(unless (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER::PROGRAMLANGUAGELIST")
  (make-package "NIRYO_ROBOT_PROGRAMS_MANAGER::PROGRAMLANGUAGELIST"))

(in-package "ROS")
;;//! \htmlinclude ProgramLanguageList.msg.html


(defclass niryo_robot_programs_manager::ProgramLanguageList
  :super ros::object
  :slots (_language_list ))

(defmethod niryo_robot_programs_manager::ProgramLanguageList
  (:init
   (&key
    ((:language_list __language_list) ())
    )
   (send-super :init)
   (setq _language_list __language_list)
   self)
  (:language_list
   (&rest __language_list)
   (if (keywordp (car __language_list))
       (send* _language_list __language_list)
     (progn
       (if __language_list (setq _language_list (car __language_list)))
       _language_list)))
  (:serialization-length
   ()
   (+
    ;; niryo_robot_programs_manager/ProgramLanguage[] _language_list
    (apply #'+ (send-all _language_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; niryo_robot_programs_manager/ProgramLanguage[] _language_list
     (write-long (length _language_list) s)
     (dolist (elem _language_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; niryo_robot_programs_manager/ProgramLanguage[] _language_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _language_list (let (r) (dotimes (i n) (push (instance niryo_robot_programs_manager::ProgramLanguage :init) r)) r))
     (dolist (elem- _language_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get niryo_robot_programs_manager::ProgramLanguageList :md5sum-) "c3bb60a31107853c4b43f43c3afc8faf")
(setf (get niryo_robot_programs_manager::ProgramLanguageList :datatype-) "niryo_robot_programs_manager/ProgramLanguageList")
(setf (get niryo_robot_programs_manager::ProgramLanguageList :definition-)
      "niryo_robot_programs_manager/ProgramLanguage[] language_list

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



(provide :niryo_robot_programs_manager/ProgramLanguageList "c3bb60a31107853c4b43f43c3afc8faf")


