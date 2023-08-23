;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_programs_manager::ProgramIsRunning)
  (if (not (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER"))
    (make-package "NIRYO_ROBOT_PROGRAMS_MANAGER"))
  (shadow 'ProgramIsRunning (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER")))
(unless (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER::PROGRAMISRUNNING")
  (make-package "NIRYO_ROBOT_PROGRAMS_MANAGER::PROGRAMISRUNNING"))

(in-package "ROS")
;;//! \htmlinclude ProgramIsRunning.msg.html


(intern "*EXECUTION_ERROR*" (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER::PROGRAMISRUNNING"))
(shadow '*EXECUTION_ERROR* (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER::PROGRAMISRUNNING"))
(defconstant niryo_robot_programs_manager::ProgramIsRunning::*EXECUTION_ERROR* -2)
(intern "*FILE_ERROR*" (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER::PROGRAMISRUNNING"))
(shadow '*FILE_ERROR* (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER::PROGRAMISRUNNING"))
(defconstant niryo_robot_programs_manager::ProgramIsRunning::*FILE_ERROR* -1)
(intern "*NONE*" (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER::PROGRAMISRUNNING"))
(shadow '*NONE* (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER::PROGRAMISRUNNING"))
(defconstant niryo_robot_programs_manager::ProgramIsRunning::*NONE* 0)
(intern "*PREEMPTED*" (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER::PROGRAMISRUNNING"))
(shadow '*PREEMPTED* (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER::PROGRAMISRUNNING"))
(defconstant niryo_robot_programs_manager::ProgramIsRunning::*PREEMPTED* 1)
(intern "*SUCCESS*" (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER::PROGRAMISRUNNING"))
(shadow '*SUCCESS* (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER::PROGRAMISRUNNING"))
(defconstant niryo_robot_programs_manager::ProgramIsRunning::*SUCCESS* 2)

(defun niryo_robot_programs_manager::ProgramIsRunning-to-symbol (const)
  (cond
        ((= const -2) 'niryo_robot_programs_manager::ProgramIsRunning::*EXECUTION_ERROR*)
        ((= const -1) 'niryo_robot_programs_manager::ProgramIsRunning::*FILE_ERROR*)
        ((= const 0) 'niryo_robot_programs_manager::ProgramIsRunning::*NONE*)
        ((= const 1) 'niryo_robot_programs_manager::ProgramIsRunning::*PREEMPTED*)
        ((= const 2) 'niryo_robot_programs_manager::ProgramIsRunning::*SUCCESS*)
        (t nil)))

(defclass niryo_robot_programs_manager::ProgramIsRunning
  :super ros::object
  :slots (_program_is_running _last_execution_status _last_execution_msg ))

(defmethod niryo_robot_programs_manager::ProgramIsRunning
  (:init
   (&key
    ((:program_is_running __program_is_running) nil)
    ((:last_execution_status __last_execution_status) 0)
    ((:last_execution_msg __last_execution_msg) "")
    )
   (send-super :init)
   (setq _program_is_running __program_is_running)
   (setq _last_execution_status (round __last_execution_status))
   (setq _last_execution_msg (string __last_execution_msg))
   self)
  (:program_is_running
   (&optional (__program_is_running :null))
   (if (not (eq __program_is_running :null)) (setq _program_is_running __program_is_running)) _program_is_running)
  (:last_execution_status
   (&optional __last_execution_status)
   (if __last_execution_status (setq _last_execution_status __last_execution_status)) _last_execution_status)
  (:last_execution_msg
   (&optional __last_execution_msg)
   (if __last_execution_msg (setq _last_execution_msg __last_execution_msg)) _last_execution_msg)
  (:serialization-length
   ()
   (+
    ;; bool _program_is_running
    1
    ;; int8 _last_execution_status
    1
    ;; string _last_execution_msg
    4 (length _last_execution_msg)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _program_is_running
       (if _program_is_running (write-byte -1 s) (write-byte 0 s))
     ;; int8 _last_execution_status
       (write-byte _last_execution_status s)
     ;; string _last_execution_msg
       (write-long (length _last_execution_msg) s) (princ _last_execution_msg s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _program_is_running
     (setq _program_is_running (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int8 _last_execution_status
     (setq _last_execution_status (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _last_execution_status 127) (setq _last_execution_status (- _last_execution_status 256)))
   ;; string _last_execution_msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _last_execution_msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get niryo_robot_programs_manager::ProgramIsRunning :md5sum-) "66c2fadf0a0e8cb9f5b6407bff6f9fb1")
(setf (get niryo_robot_programs_manager::ProgramIsRunning :datatype-) "niryo_robot_programs_manager/ProgramIsRunning")
(setf (get niryo_robot_programs_manager::ProgramIsRunning :definition-)
      "bool program_is_running

int8 EXECUTION_ERROR = -2
int8 FILE_ERROR = -1
int8 NONE = 0
int8 PREEMPTED = 1
int8 SUCCESS = 2

int8 last_execution_status
string last_execution_msg
")



(provide :niryo_robot_programs_manager/ProgramIsRunning "66c2fadf0a0e8cb9f5b6407bff6f9fb1")


