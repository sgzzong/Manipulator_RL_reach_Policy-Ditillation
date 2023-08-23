;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_programs_manager::ExecuteProgram)
  (if (not (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER"))
    (make-package "NIRYO_ROBOT_PROGRAMS_MANAGER"))
  (shadow 'ExecuteProgram (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER")))
(unless (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER::EXECUTEPROGRAM")
  (make-package "NIRYO_ROBOT_PROGRAMS_MANAGER::EXECUTEPROGRAM"))
(unless (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER::EXECUTEPROGRAMREQUEST")
  (make-package "NIRYO_ROBOT_PROGRAMS_MANAGER::EXECUTEPROGRAMREQUEST"))
(unless (find-package "NIRYO_ROBOT_PROGRAMS_MANAGER::EXECUTEPROGRAMRESPONSE")
  (make-package "NIRYO_ROBOT_PROGRAMS_MANAGER::EXECUTEPROGRAMRESPONSE"))

(in-package "ROS")





(defclass niryo_robot_programs_manager::ExecuteProgramRequest
  :super ros::object
  :slots (_execute_from_string _name _code_string _language ))

(defmethod niryo_robot_programs_manager::ExecuteProgramRequest
  (:init
   (&key
    ((:execute_from_string __execute_from_string) nil)
    ((:name __name) "")
    ((:code_string __code_string) "")
    ((:language __language) (instance niryo_robot_programs_manager::ProgramLanguage :init))
    )
   (send-super :init)
   (setq _execute_from_string __execute_from_string)
   (setq _name (string __name))
   (setq _code_string (string __code_string))
   (setq _language __language)
   self)
  (:execute_from_string
   (&optional (__execute_from_string :null))
   (if (not (eq __execute_from_string :null)) (setq _execute_from_string __execute_from_string)) _execute_from_string)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:code_string
   (&optional __code_string)
   (if __code_string (setq _code_string __code_string)) _code_string)
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
    ;; bool _execute_from_string
    1
    ;; string _name
    4 (length _name)
    ;; string _code_string
    4 (length _code_string)
    ;; niryo_robot_programs_manager/ProgramLanguage _language
    (send _language :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _execute_from_string
       (if _execute_from_string (write-byte -1 s) (write-byte 0 s))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _code_string
       (write-long (length _code_string) s) (princ _code_string s)
     ;; niryo_robot_programs_manager/ProgramLanguage _language
       (send _language :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _execute_from_string
     (setq _execute_from_string (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _code_string
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _code_string (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; niryo_robot_programs_manager/ProgramLanguage _language
     (send _language :deserialize buf ptr-) (incf ptr- (send _language :serialization-length))
   ;;
   self)
  )

(defclass niryo_robot_programs_manager::ExecuteProgramResponse
  :super ros::object
  :slots (_status _message _output ))

(defmethod niryo_robot_programs_manager::ExecuteProgramResponse
  (:init
   (&key
    ((:status __status) 0)
    ((:message __message) "")
    ((:output __output) "")
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _message (string __message))
   (setq _output (string __output))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:output
   (&optional __output)
   (if __output (setq _output __output)) _output)
  (:serialization-length
   ()
   (+
    ;; int16 _status
    2
    ;; string _message
    4 (length _message)
    ;; string _output
    4 (length _output)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _status
       (write-word _status s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; string _output
       (write-long (length _output) s) (princ _output s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _status
     (setq _status (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _output
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _output (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass niryo_robot_programs_manager::ExecuteProgram
  :super ros::object
  :slots ())

(setf (get niryo_robot_programs_manager::ExecuteProgram :md5sum-) "a2c95eeee3b570399cd34c19756851e1")
(setf (get niryo_robot_programs_manager::ExecuteProgram :datatype-) "niryo_robot_programs_manager/ExecuteProgram")
(setf (get niryo_robot_programs_manager::ExecuteProgram :request) niryo_robot_programs_manager::ExecuteProgramRequest)
(setf (get niryo_robot_programs_manager::ExecuteProgram :response) niryo_robot_programs_manager::ExecuteProgramResponse)

(defmethod niryo_robot_programs_manager::ExecuteProgramRequest
  (:response () (instance niryo_robot_programs_manager::ExecuteProgramResponse :init)))

(setf (get niryo_robot_programs_manager::ExecuteProgramRequest :md5sum-) "a2c95eeee3b570399cd34c19756851e1")
(setf (get niryo_robot_programs_manager::ExecuteProgramRequest :datatype-) "niryo_robot_programs_manager/ExecuteProgramRequest")
(setf (get niryo_robot_programs_manager::ExecuteProgramRequest :definition-)
      "bool execute_from_string

string name
string code_string

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
int16 status
string message
string output
")

(setf (get niryo_robot_programs_manager::ExecuteProgramResponse :md5sum-) "a2c95eeee3b570399cd34c19756851e1")
(setf (get niryo_robot_programs_manager::ExecuteProgramResponse :datatype-) "niryo_robot_programs_manager/ExecuteProgramResponse")
(setf (get niryo_robot_programs_manager::ExecuteProgramResponse :definition-)
      "bool execute_from_string

string name
string code_string

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
int16 status
string message
string output
")



(provide :niryo_robot_programs_manager/ExecuteProgram "a2c95eeee3b570399cd34c19756851e1")


