;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_programs_manager::ProgramLanguage)
  (if (not (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER"))
    (make-package "NIRYO_ROBOT_PROGRAMS_MANAGER"))
  (shadow 'ProgramLanguage (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER")))
(unless (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER::PROGRAMLANGUAGE")
  (make-package "NIRYO_ROBOT_PROGRAMS_MANAGER::PROGRAMLANGUAGE"))

(in-package "ROS")
;;//! \htmlinclude ProgramLanguage.msg.html


(intern "*NONE*" (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER::PROGRAMLANGUAGE"))
(shadow '*NONE* (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER::PROGRAMLANGUAGE"))
(defconstant niryo_robot_programs_manager::ProgramLanguage::*NONE* -1)
(intern "*ALL*" (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER::PROGRAMLANGUAGE"))
(shadow '*ALL* (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER::PROGRAMLANGUAGE"))
(defconstant niryo_robot_programs_manager::ProgramLanguage::*ALL* 0)
(intern "*PYTHON2*" (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER::PROGRAMLANGUAGE"))
(shadow '*PYTHON2* (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER::PROGRAMLANGUAGE"))
(defconstant niryo_robot_programs_manager::ProgramLanguage::*PYTHON2* 1)
(intern "*PYTHON3*" (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER::PROGRAMLANGUAGE"))
(shadow '*PYTHON3* (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER::PROGRAMLANGUAGE"))
(defconstant niryo_robot_programs_manager::ProgramLanguage::*PYTHON3* 2)
(intern "*BLOCKLY*" (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER::PROGRAMLANGUAGE"))
(shadow '*BLOCKLY* (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER::PROGRAMLANGUAGE"))
(defconstant niryo_robot_programs_manager::ProgramLanguage::*BLOCKLY* 66)

(defun niryo_robot_programs_manager::ProgramLanguage-to-symbol (const)
  (cond
        ((= const -1) 'niryo_robot_programs_manager::ProgramLanguage::*NONE*)
        ((= const 0) 'niryo_robot_programs_manager::ProgramLanguage::*ALL*)
        ((= const 1) 'niryo_robot_programs_manager::ProgramLanguage::*PYTHON2*)
        ((= const 2) 'niryo_robot_programs_manager::ProgramLanguage::*PYTHON3*)
        ((= const 66) 'niryo_robot_programs_manager::ProgramLanguage::*BLOCKLY*)
        (t nil)))

(defclass niryo_robot_programs_manager::ProgramLanguage
  :super ros::object
  :slots (_used ))

(defmethod niryo_robot_programs_manager::ProgramLanguage
  (:init
   (&key
    ((:used __used) 0)
    )
   (send-super :init)
   (setq _used (round __used))
   self)
  (:used
   (&optional __used)
   (if __used (setq _used __used)) _used)
  (:serialization-length
   ()
   (+
    ;; int8 _used
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _used
       (write-byte _used s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _used
     (setq _used (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _used 127) (setq _used (- _used 256)))
   ;;
   self)
  )

(setf (get niryo_robot_programs_manager::ProgramLanguage :md5sum-) "33b17f834c69f7d704c6f12913f8ef1a")
(setf (get niryo_robot_programs_manager::ProgramLanguage :datatype-) "niryo_robot_programs_manager/ProgramLanguage")
(setf (get niryo_robot_programs_manager::ProgramLanguage :definition-)
      "int8 NONE = -1

int8 ALL = 0

# Runnable
int8 PYTHON2 = 1
int8 PYTHON3 = 2

# Not Runnable
int8 BLOCKLY = 66

int8 used

")



(provide :niryo_robot_programs_manager/ProgramLanguage "33b17f834c69f7d704c6f12913f8ef1a")


