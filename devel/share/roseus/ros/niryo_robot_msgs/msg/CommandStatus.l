;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_msgs::CommandStatus)
  (if (not (find-package "NIRYO_ROBOT_MSGS"))
    (make-package "NIRYO_ROBOT_MSGS"))
  (shadow 'CommandStatus (find-package "NIRYO_ROBOT_MSGS")))
(unless (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS")
  (make-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))

(in-package "ROS")
;;//! \htmlinclude CommandStatus.msg.html


(intern "*SUCCESS*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*SUCCESS* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*SUCCESS* 1)
(intern "*CANCELLED*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*CANCELLED* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*CANCELLED* 2)
(intern "*PREEMPTED*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*PREEMPTED* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*PREEMPTED* 3)
(intern "*FAILURE*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*FAILURE* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*FAILURE* -1)
(intern "*ABORTED*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*ABORTED* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*ABORTED* -3)
(intern "*STOPPED*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*STOPPED* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*STOPPED* -4)
(intern "*BAD_HARDWARE_VERSION*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*BAD_HARDWARE_VERSION* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*BAD_HARDWARE_VERSION* -10)
(intern "*ROS_ERROR*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*ROS_ERROR* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*ROS_ERROR* -20)
(intern "*FILE_ALREADY_EXISTS*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*FILE_ALREADY_EXISTS* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*FILE_ALREADY_EXISTS* -30)
(intern "*FILE_NOT_FOUND*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*FILE_NOT_FOUND* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*FILE_NOT_FOUND* -31)
(intern "*UNKNOWN_COMMAND*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*UNKNOWN_COMMAND* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*UNKNOWN_COMMAND* -50)
(intern "*NOT_IMPLEMENTED_COMMAND*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*NOT_IMPLEMENTED_COMMAND* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*NOT_IMPLEMENTED_COMMAND* -51)
(intern "*INVALID_PARAMETERS*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*INVALID_PARAMETERS* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*INVALID_PARAMETERS* -52)
(intern "*HARDWARE_FAILURE*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*HARDWARE_FAILURE* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*HARDWARE_FAILURE* -110)
(intern "*HARDWARE_NOT_OK*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*HARDWARE_NOT_OK* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*HARDWARE_NOT_OK* -111)
(intern "*LEARNING_MODE_ON*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*LEARNING_MODE_ON* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*LEARNING_MODE_ON* -112)
(intern "*CALIBRATION_NOT_DONE*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*CALIBRATION_NOT_DONE* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*CALIBRATION_NOT_DONE* -113)
(intern "*DIGITAL_IO_PANEL_ERROR*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*DIGITAL_IO_PANEL_ERROR* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*DIGITAL_IO_PANEL_ERROR* -114)
(intern "*LED_MANAGER_ERROR*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*LED_MANAGER_ERROR* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*LED_MANAGER_ERROR* -115)
(intern "*BUTTON_ERROR*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*BUTTON_ERROR* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*BUTTON_ERROR* -116)
(intern "*WRONG_MOTOR_TYPE*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*WRONG_MOTOR_TYPE* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*WRONG_MOTOR_TYPE* -117)
(intern "*TTL_WRITE_ERROR*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*TTL_WRITE_ERROR* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*TTL_WRITE_ERROR* -118)
(intern "*TTL_READ_ERROR*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*TTL_READ_ERROR* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*TTL_READ_ERROR* -119)
(intern "*CAN_WRITE_ERROR*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*CAN_WRITE_ERROR* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*CAN_WRITE_ERROR* -120)
(intern "*CAN_READ_ERROR*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*CAN_READ_ERROR* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*CAN_READ_ERROR* -121)
(intern "*NO_CONVEYOR_LEFT*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*NO_CONVEYOR_LEFT* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*NO_CONVEYOR_LEFT* -122)
(intern "*NO_CONVEYOR_FOUND*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*NO_CONVEYOR_FOUND* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*NO_CONVEYOR_FOUND* -123)
(intern "*CONVEYOR_ID_INVALID*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*CONVEYOR_ID_INVALID* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*CONVEYOR_ID_INVALID* -124)
(intern "*CALIBRATION_IN_PROGRESS*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*CALIBRATION_IN_PROGRESS* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*CALIBRATION_IN_PROGRESS* -125)
(intern "*VIDEO_STREAM_ON_OFF_FAILURE*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*VIDEO_STREAM_ON_OFF_FAILURE* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*VIDEO_STREAM_ON_OFF_FAILURE* -170)
(intern "*VIDEO_STREAM_NOT_RUNNING*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*VIDEO_STREAM_NOT_RUNNING* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*VIDEO_STREAM_NOT_RUNNING* -171)
(intern "*OBJECT_NOT_FOUND*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*OBJECT_NOT_FOUND* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*OBJECT_NOT_FOUND* -172)
(intern "*MARKERS_NOT_FOUND*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*MARKERS_NOT_FOUND* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*MARKERS_NOT_FOUND* -173)
(intern "*ARM_COMMANDER_FAILURE*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*ARM_COMMANDER_FAILURE* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*ARM_COMMANDER_FAILURE* -220)
(intern "*GOAL_STILL_ACTIVE*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*GOAL_STILL_ACTIVE* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*GOAL_STILL_ACTIVE* -221)
(intern "*JOG_CONTROLLER_ENABLED*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*JOG_CONTROLLER_ENABLED* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*JOG_CONTROLLER_ENABLED* -222)
(intern "*CONTROLLER_PROBLEMS*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*CONTROLLER_PROBLEMS* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*CONTROLLER_PROBLEMS* -223)
(intern "*SHOULD_RESTART*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*SHOULD_RESTART* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*SHOULD_RESTART* -224)
(intern "*JOG_CONTROLLER_FAILURE*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*JOG_CONTROLLER_FAILURE* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*JOG_CONTROLLER_FAILURE* -225)
(intern "*COLLISION*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*COLLISION* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*COLLISION* -226)
(intern "*PAUSE_TIMEOUT*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*PAUSE_TIMEOUT* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*PAUSE_TIMEOUT* -227)
(intern "*CANCEL_PAUSE*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*CANCEL_PAUSE* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*CANCEL_PAUSE* -228)
(intern "*PLAN_FAILED*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*PLAN_FAILED* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*PLAN_FAILED* -230)
(intern "*NO_PLAN_AVAILABLE*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*NO_PLAN_AVAILABLE* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*NO_PLAN_AVAILABLE* -231)
(intern "*INVERT_KINEMATICS_FAILURE*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*INVERT_KINEMATICS_FAILURE* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*INVERT_KINEMATICS_FAILURE* -232)
(intern "*TOOL_FAILURE*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*TOOL_FAILURE* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*TOOL_FAILURE* -251)
(intern "*TOOL_ID_INVALID*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*TOOL_ID_INVALID* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*TOOL_ID_INVALID* -252)
(intern "*TOOL_NOT_CONNECTED*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*TOOL_NOT_CONNECTED* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*TOOL_NOT_CONNECTED* -253)
(intern "*TOOL_ROS_INTERFACE_ERROR*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*TOOL_ROS_INTERFACE_ERROR* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*TOOL_ROS_INTERFACE_ERROR* -254)
(intern "*POSES_HANDLER_CREATION_FAILED*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*POSES_HANDLER_CREATION_FAILED* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*POSES_HANDLER_CREATION_FAILED* -300)
(intern "*POSES_HANDLER_REMOVAL_FAILED*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*POSES_HANDLER_REMOVAL_FAILED* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*POSES_HANDLER_REMOVAL_FAILED* -301)
(intern "*POSES_HANDLER_READ_FAILURE*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*POSES_HANDLER_READ_FAILURE* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*POSES_HANDLER_READ_FAILURE* -302)
(intern "*POSES_HANDLER_COMPUTE_FAILURE*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*POSES_HANDLER_COMPUTE_FAILURE* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*POSES_HANDLER_COMPUTE_FAILURE* -303)
(intern "*DYNAMIC_FRAME_EDIT_FAILED*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*DYNAMIC_FRAME_EDIT_FAILED* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*DYNAMIC_FRAME_EDIT_FAILED* -305)
(intern "*DYNAMIC_FRAME_CREATION_FAILED*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*DYNAMIC_FRAME_CREATION_FAILED* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*DYNAMIC_FRAME_CREATION_FAILED* -306)
(intern "*CONVERT_FAILED*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*CONVERT_FAILED* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*CONVERT_FAILED* -307)
(intern "*WORKSPACE_CREATION_FAILED*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*WORKSPACE_CREATION_FAILED* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*WORKSPACE_CREATION_FAILED* -308)
(intern "*TRAJECTORY_HANDLER_CREATION_FAILED*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*TRAJECTORY_HANDLER_CREATION_FAILED* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*TRAJECTORY_HANDLER_CREATION_FAILED* -310)
(intern "*TRAJECTORY_HANDLER_REMOVAL_FAILED*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*TRAJECTORY_HANDLER_REMOVAL_FAILED* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*TRAJECTORY_HANDLER_REMOVAL_FAILED* -311)
(intern "*TRAJECTORY_HANDLER_RENAME_FAILURE*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*TRAJECTORY_HANDLER_RENAME_FAILURE* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*TRAJECTORY_HANDLER_RENAME_FAILURE* -312)
(intern "*TRAJECTORY_HANDLER_EXECUTE_REGISTERED_FAILURE*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*TRAJECTORY_HANDLER_EXECUTE_REGISTERED_FAILURE* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*TRAJECTORY_HANDLER_EXECUTE_REGISTERED_FAILURE* -313)
(intern "*TRAJECTORY_HANDLER_EXECUTE_FAILURE*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*TRAJECTORY_HANDLER_EXECUTE_FAILURE* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*TRAJECTORY_HANDLER_EXECUTE_FAILURE* -314)
(intern "*TRAJECTORY_HANDLER_GET_TRAJECTORY_FAILURE*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*TRAJECTORY_HANDLER_GET_TRAJECTORY_FAILURE* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*TRAJECTORY_HANDLER_GET_TRAJECTORY_FAILURE* -315)
(intern "*TRAJECTORY_HANDLER_GET_TRAJECTORY_LIST_FAILURE*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*TRAJECTORY_HANDLER_GET_TRAJECTORY_LIST_FAILURE* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*TRAJECTORY_HANDLER_GET_TRAJECTORY_LIST_FAILURE* -316)
(intern "*PROGRAMS_MANAGER_FAILURE*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*PROGRAMS_MANAGER_FAILURE* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*PROGRAMS_MANAGER_FAILURE* -320)
(intern "*PROGRAMS_MANAGER_READ_FAILURE*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*PROGRAMS_MANAGER_READ_FAILURE* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*PROGRAMS_MANAGER_READ_FAILURE* -321)
(intern "*PROGRAMS_MANAGER_UNKNOWN_LANGUAGE*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*PROGRAMS_MANAGER_UNKNOWN_LANGUAGE* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*PROGRAMS_MANAGER_UNKNOWN_LANGUAGE* -325)
(intern "*PROGRAMS_MANAGER_NOT_RUNNABLE_LANGUAGE*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*PROGRAMS_MANAGER_NOT_RUNNABLE_LANGUAGE* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*PROGRAMS_MANAGER_NOT_RUNNABLE_LANGUAGE* -326)
(intern "*PROGRAMS_MANAGER_EXECUTION_FAILED*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*PROGRAMS_MANAGER_EXECUTION_FAILED* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*PROGRAMS_MANAGER_EXECUTION_FAILED* -327)
(intern "*PROGRAMS_MANAGER_STOPPING_FAILED*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*PROGRAMS_MANAGER_STOPPING_FAILED* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*PROGRAMS_MANAGER_STOPPING_FAILED* -328)
(intern "*PROGRAMS_MANAGER_AUTORUN_FAILURE*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*PROGRAMS_MANAGER_AUTORUN_FAILURE* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*PROGRAMS_MANAGER_AUTORUN_FAILURE* -329)
(intern "*PROGRAMS_MANAGER_WRITING_FAILURE*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*PROGRAMS_MANAGER_WRITING_FAILURE* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*PROGRAMS_MANAGER_WRITING_FAILURE* -330)
(intern "*PROGRAMS_MANAGER_FILE_ALREADY_EXISTS*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*PROGRAMS_MANAGER_FILE_ALREADY_EXISTS* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*PROGRAMS_MANAGER_FILE_ALREADY_EXISTS* -331)
(intern "*PROGRAMS_MANAGER_FILE_DOES_NOT_EXIST*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*PROGRAMS_MANAGER_FILE_DOES_NOT_EXIST* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*PROGRAMS_MANAGER_FILE_DOES_NOT_EXIST* -332)
(intern "*CREDENTIALS_FILE_ERROR*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*CREDENTIALS_FILE_ERROR* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*CREDENTIALS_FILE_ERROR* -400)
(intern "*CREDENTIALS_UNKNOWN_ERROR*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*CREDENTIALS_UNKNOWN_ERROR* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*CREDENTIALS_UNKNOWN_ERROR* -401)
(intern "*SYSTEM_API_CLIENT_UNKNOWN_ERROR*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*SYSTEM_API_CLIENT_UNKNOWN_ERROR* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*SYSTEM_API_CLIENT_UNKNOWN_ERROR* -440)
(intern "*SYSTEM_API_CLIENT_INVALID_ROBOT_NAME*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*SYSTEM_API_CLIENT_INVALID_ROBOT_NAME* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*SYSTEM_API_CLIENT_INVALID_ROBOT_NAME* -441)
(intern "*SYSTEM_API_CLIENT_REQUEST_FAILED*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*SYSTEM_API_CLIENT_REQUEST_FAILED* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*SYSTEM_API_CLIENT_REQUEST_FAILED* -442)
(intern "*SYSTEM_API_CLIENT_UNKNOWN_COMMAND*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*SYSTEM_API_CLIENT_UNKNOWN_COMMAND* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*SYSTEM_API_CLIENT_UNKNOWN_COMMAND* -443)
(intern "*SYSTEM_API_CLIENT_COMMAND_FAILED*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*SYSTEM_API_CLIENT_COMMAND_FAILED* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*SYSTEM_API_CLIENT_COMMAND_FAILED* -444)
(intern "*DATABASE_DB_ERROR*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*DATABASE_DB_ERROR* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*DATABASE_DB_ERROR* -460)
(intern "*DATABASE_SETTINGS_UNKNOWN*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*DATABASE_SETTINGS_UNKNOWN* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*DATABASE_SETTINGS_UNKNOWN* -461)
(intern "*DATABASE_SETTINGS_TYPE_MISMATCH*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*DATABASE_SETTINGS_TYPE_MISMATCH* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*DATABASE_SETTINGS_TYPE_MISMATCH* -462)
(intern "*DATABASE_FILE_PATH_UNKNOWN*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*DATABASE_FILE_PATH_UNKNOWN* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*DATABASE_FILE_PATH_UNKNOWN* -463)
(intern "*REPORTS_UNABLE_TO_SEND*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*REPORTS_UNABLE_TO_SEND* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*REPORTS_UNABLE_TO_SEND* -470)
(intern "*REPORTS_SENDING_FAIL*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*REPORTS_SENDING_FAIL* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*REPORTS_SENDING_FAIL* -471)
(intern "*REPORTS_FETCHING_FAIL*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*REPORTS_FETCHING_FAIL* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*REPORTS_FETCHING_FAIL* -472)
(intern "*REPORTS_SERVICE_UNREACHABLE*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*REPORTS_SERVICE_UNREACHABLE* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*REPORTS_SERVICE_UNREACHABLE* -473)
(intern "*SOUND_FILE_NOT_FOUND*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*SOUND_FILE_NOT_FOUND* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*SOUND_FILE_NOT_FOUND* -500)
(intern "*PROTECTED_SOUND_NAME*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*PROTECTED_SOUND_NAME* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*PROTECTED_SOUND_NAME* -501)
(intern "*INVALID_SOUND_NAME*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*INVALID_SOUND_NAME* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*INVALID_SOUND_NAME* -502)
(intern "*INVALID_SOUND_FORMAT*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*INVALID_SOUND_FORMAT* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*INVALID_SOUND_FORMAT* -503)
(intern "*SOUND_TIMEOUT*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*SOUND_TIMEOUT* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*SOUND_TIMEOUT* -504)
(intern "*MISSING_I2C*" (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(shadow '*MISSING_I2C* (find-package "NIRYO_ROBOT_MSGS::COMMANDSTATUS"))
(defconstant niryo_robot_msgs::CommandStatus::*MISSING_I2C* -510)

(defun niryo_robot_msgs::CommandStatus-to-symbol (const)
  (cond
        ((= const 1) 'niryo_robot_msgs::CommandStatus::*SUCCESS*)
        ((= const 2) 'niryo_robot_msgs::CommandStatus::*CANCELLED*)
        ((= const 3) 'niryo_robot_msgs::CommandStatus::*PREEMPTED*)
        ((= const -1) 'niryo_robot_msgs::CommandStatus::*FAILURE*)
        ((= const -3) 'niryo_robot_msgs::CommandStatus::*ABORTED*)
        ((= const -4) 'niryo_robot_msgs::CommandStatus::*STOPPED*)
        ((= const -10) 'niryo_robot_msgs::CommandStatus::*BAD_HARDWARE_VERSION*)
        ((= const -20) 'niryo_robot_msgs::CommandStatus::*ROS_ERROR*)
        ((= const -30) 'niryo_robot_msgs::CommandStatus::*FILE_ALREADY_EXISTS*)
        ((= const -31) 'niryo_robot_msgs::CommandStatus::*FILE_NOT_FOUND*)
        ((= const -50) 'niryo_robot_msgs::CommandStatus::*UNKNOWN_COMMAND*)
        ((= const -51) 'niryo_robot_msgs::CommandStatus::*NOT_IMPLEMENTED_COMMAND*)
        ((= const -52) 'niryo_robot_msgs::CommandStatus::*INVALID_PARAMETERS*)
        ((= const -110) 'niryo_robot_msgs::CommandStatus::*HARDWARE_FAILURE*)
        ((= const -111) 'niryo_robot_msgs::CommandStatus::*HARDWARE_NOT_OK*)
        ((= const -112) 'niryo_robot_msgs::CommandStatus::*LEARNING_MODE_ON*)
        ((= const -113) 'niryo_robot_msgs::CommandStatus::*CALIBRATION_NOT_DONE*)
        ((= const -114) 'niryo_robot_msgs::CommandStatus::*DIGITAL_IO_PANEL_ERROR*)
        ((= const -115) 'niryo_robot_msgs::CommandStatus::*LED_MANAGER_ERROR*)
        ((= const -116) 'niryo_robot_msgs::CommandStatus::*BUTTON_ERROR*)
        ((= const -117) 'niryo_robot_msgs::CommandStatus::*WRONG_MOTOR_TYPE*)
        ((= const -118) 'niryo_robot_msgs::CommandStatus::*TTL_WRITE_ERROR*)
        ((= const -119) 'niryo_robot_msgs::CommandStatus::*TTL_READ_ERROR*)
        ((= const -120) 'niryo_robot_msgs::CommandStatus::*CAN_WRITE_ERROR*)
        ((= const -121) 'niryo_robot_msgs::CommandStatus::*CAN_READ_ERROR*)
        ((= const -122) 'niryo_robot_msgs::CommandStatus::*NO_CONVEYOR_LEFT*)
        ((= const -123) 'niryo_robot_msgs::CommandStatus::*NO_CONVEYOR_FOUND*)
        ((= const -124) 'niryo_robot_msgs::CommandStatus::*CONVEYOR_ID_INVALID*)
        ((= const -125) 'niryo_robot_msgs::CommandStatus::*CALIBRATION_IN_PROGRESS*)
        ((= const -170) 'niryo_robot_msgs::CommandStatus::*VIDEO_STREAM_ON_OFF_FAILURE*)
        ((= const -171) 'niryo_robot_msgs::CommandStatus::*VIDEO_STREAM_NOT_RUNNING*)
        ((= const -172) 'niryo_robot_msgs::CommandStatus::*OBJECT_NOT_FOUND*)
        ((= const -173) 'niryo_robot_msgs::CommandStatus::*MARKERS_NOT_FOUND*)
        ((= const -220) 'niryo_robot_msgs::CommandStatus::*ARM_COMMANDER_FAILURE*)
        ((= const -221) 'niryo_robot_msgs::CommandStatus::*GOAL_STILL_ACTIVE*)
        ((= const -222) 'niryo_robot_msgs::CommandStatus::*JOG_CONTROLLER_ENABLED*)
        ((= const -223) 'niryo_robot_msgs::CommandStatus::*CONTROLLER_PROBLEMS*)
        ((= const -224) 'niryo_robot_msgs::CommandStatus::*SHOULD_RESTART*)
        ((= const -225) 'niryo_robot_msgs::CommandStatus::*JOG_CONTROLLER_FAILURE*)
        ((= const -226) 'niryo_robot_msgs::CommandStatus::*COLLISION*)
        ((= const -227) 'niryo_robot_msgs::CommandStatus::*PAUSE_TIMEOUT*)
        ((= const -228) 'niryo_robot_msgs::CommandStatus::*CANCEL_PAUSE*)
        ((= const -230) 'niryo_robot_msgs::CommandStatus::*PLAN_FAILED*)
        ((= const -231) 'niryo_robot_msgs::CommandStatus::*NO_PLAN_AVAILABLE*)
        ((= const -232) 'niryo_robot_msgs::CommandStatus::*INVERT_KINEMATICS_FAILURE*)
        ((= const -251) 'niryo_robot_msgs::CommandStatus::*TOOL_FAILURE*)
        ((= const -252) 'niryo_robot_msgs::CommandStatus::*TOOL_ID_INVALID*)
        ((= const -253) 'niryo_robot_msgs::CommandStatus::*TOOL_NOT_CONNECTED*)
        ((= const -254) 'niryo_robot_msgs::CommandStatus::*TOOL_ROS_INTERFACE_ERROR*)
        ((= const -300) 'niryo_robot_msgs::CommandStatus::*POSES_HANDLER_CREATION_FAILED*)
        ((= const -301) 'niryo_robot_msgs::CommandStatus::*POSES_HANDLER_REMOVAL_FAILED*)
        ((= const -302) 'niryo_robot_msgs::CommandStatus::*POSES_HANDLER_READ_FAILURE*)
        ((= const -303) 'niryo_robot_msgs::CommandStatus::*POSES_HANDLER_COMPUTE_FAILURE*)
        ((= const -305) 'niryo_robot_msgs::CommandStatus::*DYNAMIC_FRAME_EDIT_FAILED*)
        ((= const -306) 'niryo_robot_msgs::CommandStatus::*DYNAMIC_FRAME_CREATION_FAILED*)
        ((= const -307) 'niryo_robot_msgs::CommandStatus::*CONVERT_FAILED*)
        ((= const -308) 'niryo_robot_msgs::CommandStatus::*WORKSPACE_CREATION_FAILED*)
        ((= const -310) 'niryo_robot_msgs::CommandStatus::*TRAJECTORY_HANDLER_CREATION_FAILED*)
        ((= const -311) 'niryo_robot_msgs::CommandStatus::*TRAJECTORY_HANDLER_REMOVAL_FAILED*)
        ((= const -312) 'niryo_robot_msgs::CommandStatus::*TRAJECTORY_HANDLER_RENAME_FAILURE*)
        ((= const -313) 'niryo_robot_msgs::CommandStatus::*TRAJECTORY_HANDLER_EXECUTE_REGISTERED_FAILURE*)
        ((= const -314) 'niryo_robot_msgs::CommandStatus::*TRAJECTORY_HANDLER_EXECUTE_FAILURE*)
        ((= const -315) 'niryo_robot_msgs::CommandStatus::*TRAJECTORY_HANDLER_GET_TRAJECTORY_FAILURE*)
        ((= const -316) 'niryo_robot_msgs::CommandStatus::*TRAJECTORY_HANDLER_GET_TRAJECTORY_LIST_FAILURE*)
        ((= const -320) 'niryo_robot_msgs::CommandStatus::*PROGRAMS_MANAGER_FAILURE*)
        ((= const -321) 'niryo_robot_msgs::CommandStatus::*PROGRAMS_MANAGER_READ_FAILURE*)
        ((= const -325) 'niryo_robot_msgs::CommandStatus::*PROGRAMS_MANAGER_UNKNOWN_LANGUAGE*)
        ((= const -326) 'niryo_robot_msgs::CommandStatus::*PROGRAMS_MANAGER_NOT_RUNNABLE_LANGUAGE*)
        ((= const -327) 'niryo_robot_msgs::CommandStatus::*PROGRAMS_MANAGER_EXECUTION_FAILED*)
        ((= const -328) 'niryo_robot_msgs::CommandStatus::*PROGRAMS_MANAGER_STOPPING_FAILED*)
        ((= const -329) 'niryo_robot_msgs::CommandStatus::*PROGRAMS_MANAGER_AUTORUN_FAILURE*)
        ((= const -330) 'niryo_robot_msgs::CommandStatus::*PROGRAMS_MANAGER_WRITING_FAILURE*)
        ((= const -331) 'niryo_robot_msgs::CommandStatus::*PROGRAMS_MANAGER_FILE_ALREADY_EXISTS*)
        ((= const -332) 'niryo_robot_msgs::CommandStatus::*PROGRAMS_MANAGER_FILE_DOES_NOT_EXIST*)
        ((= const -400) 'niryo_robot_msgs::CommandStatus::*CREDENTIALS_FILE_ERROR*)
        ((= const -401) 'niryo_robot_msgs::CommandStatus::*CREDENTIALS_UNKNOWN_ERROR*)
        ((= const -440) 'niryo_robot_msgs::CommandStatus::*SYSTEM_API_CLIENT_UNKNOWN_ERROR*)
        ((= const -441) 'niryo_robot_msgs::CommandStatus::*SYSTEM_API_CLIENT_INVALID_ROBOT_NAME*)
        ((= const -442) 'niryo_robot_msgs::CommandStatus::*SYSTEM_API_CLIENT_REQUEST_FAILED*)
        ((= const -443) 'niryo_robot_msgs::CommandStatus::*SYSTEM_API_CLIENT_UNKNOWN_COMMAND*)
        ((= const -444) 'niryo_robot_msgs::CommandStatus::*SYSTEM_API_CLIENT_COMMAND_FAILED*)
        ((= const -460) 'niryo_robot_msgs::CommandStatus::*DATABASE_DB_ERROR*)
        ((= const -461) 'niryo_robot_msgs::CommandStatus::*DATABASE_SETTINGS_UNKNOWN*)
        ((= const -462) 'niryo_robot_msgs::CommandStatus::*DATABASE_SETTINGS_TYPE_MISMATCH*)
        ((= const -463) 'niryo_robot_msgs::CommandStatus::*DATABASE_FILE_PATH_UNKNOWN*)
        ((= const -470) 'niryo_robot_msgs::CommandStatus::*REPORTS_UNABLE_TO_SEND*)
        ((= const -471) 'niryo_robot_msgs::CommandStatus::*REPORTS_SENDING_FAIL*)
        ((= const -472) 'niryo_robot_msgs::CommandStatus::*REPORTS_FETCHING_FAIL*)
        ((= const -473) 'niryo_robot_msgs::CommandStatus::*REPORTS_SERVICE_UNREACHABLE*)
        ((= const -500) 'niryo_robot_msgs::CommandStatus::*SOUND_FILE_NOT_FOUND*)
        ((= const -501) 'niryo_robot_msgs::CommandStatus::*PROTECTED_SOUND_NAME*)
        ((= const -502) 'niryo_robot_msgs::CommandStatus::*INVALID_SOUND_NAME*)
        ((= const -503) 'niryo_robot_msgs::CommandStatus::*INVALID_SOUND_FORMAT*)
        ((= const -504) 'niryo_robot_msgs::CommandStatus::*SOUND_TIMEOUT*)
        ((= const -510) 'niryo_robot_msgs::CommandStatus::*MISSING_I2C*)
        (t nil)))

(defclass niryo_robot_msgs::CommandStatus
  :super ros::object
  :slots (_val ))

(defmethod niryo_robot_msgs::CommandStatus
  (:init
   (&key
    ((:val __val) 0)
    )
   (send-super :init)
   (setq _val (round __val))
   self)
  (:val
   (&optional __val)
   (if __val (setq _val __val)) _val)
  (:serialization-length
   ()
   (+
    ;; int32 _val
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _val
       (write-long _val s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _val
     (setq _val (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get niryo_robot_msgs::CommandStatus :md5sum-) "a5e18a99488136d42c1dd63f1c336470")
(setf (get niryo_robot_msgs::CommandStatus :datatype-) "niryo_robot_msgs/CommandStatus")
(setf (get niryo_robot_msgs::CommandStatus :definition-)
      "int32 val

# overall behavior
int32 SUCCESS = 1
int32 CANCELLED = 2
int32 PREEMPTED = 3

int32 FAILURE = -1
int32 ABORTED = -3
int32 STOPPED = -4

int32 BAD_HARDWARE_VERSION = -10
int32 ROS_ERROR = -20

int32 FILE_ALREADY_EXISTS = -30
int32 FILE_NOT_FOUND = -31


int32 UNKNOWN_COMMAND = -50
int32 NOT_IMPLEMENTED_COMMAND = -51
int32 INVALID_PARAMETERS = -52

# - Hardware
int32 HARDWARE_FAILURE = -110
int32 HARDWARE_NOT_OK = -111
int32 LEARNING_MODE_ON = -112
int32 CALIBRATION_NOT_DONE = -113
int32 DIGITAL_IO_PANEL_ERROR = -114
int32 LED_MANAGER_ERROR = -115
int32 BUTTON_ERROR = -116
int32 WRONG_MOTOR_TYPE = -117
int32 TTL_WRITE_ERROR = -118
int32 TTL_READ_ERROR = -119
int32 CAN_WRITE_ERROR = -120
int32 CAN_READ_ERROR = -121
int32 NO_CONVEYOR_LEFT = -122
int32 NO_CONVEYOR_FOUND = -123
int32 CONVEYOR_ID_INVALID = -124
int32 CALIBRATION_IN_PROGRESS = -125

# - Vision
int32 VIDEO_STREAM_ON_OFF_FAILURE = -170
int32 VIDEO_STREAM_NOT_RUNNING = -171
int32 OBJECT_NOT_FOUND = -172
int32 MARKERS_NOT_FOUND = -173

# - Commander
# Arm Commander
int32 ARM_COMMANDER_FAILURE = -220
int32 GOAL_STILL_ACTIVE = -221
int32 JOG_CONTROLLER_ENABLED = -222
int32 CONTROLLER_PROBLEMS = -223
int32 SHOULD_RESTART = -224
int32 JOG_CONTROLLER_FAILURE = -225

int32 COLLISION = -226

int32 PAUSE_TIMEOUT= -227
int32 CANCEL_PAUSE= -228

int32 PLAN_FAILED = -230
int32 NO_PLAN_AVAILABLE = -231
int32 INVERT_KINEMATICS_FAILURE = -232

# Tool Commander
int32 TOOL_FAILURE = -251
int32 TOOL_ID_INVALID = -252
int32 TOOL_NOT_CONNECTED = -253
int32 TOOL_ROS_INTERFACE_ERROR = -254

# - Pose Handlers
int32 POSES_HANDLER_CREATION_FAILED = -300
int32 POSES_HANDLER_REMOVAL_FAILED = -301
int32 POSES_HANDLER_READ_FAILURE = -302
int32 POSES_HANDLER_COMPUTE_FAILURE = -303

int32 DYNAMIC_FRAME_EDIT_FAILED = -305
int32 DYNAMIC_FRAME_CREATION_FAILED = -306
int32 CONVERT_FAILED = -307

int32 WORKSPACE_CREATION_FAILED = -308

# - Trajectory Handler
int32 TRAJECTORY_HANDLER_CREATION_FAILED = -310
int32 TRAJECTORY_HANDLER_REMOVAL_FAILED = -311
int32 TRAJECTORY_HANDLER_RENAME_FAILURE = -312
int32 TRAJECTORY_HANDLER_EXECUTE_REGISTERED_FAILURE = -313
int32 TRAJECTORY_HANDLER_EXECUTE_FAILURE = -314
int32 TRAJECTORY_HANDLER_GET_TRAJECTORY_FAILURE = -315
int32 TRAJECTORY_HANDLER_GET_TRAJECTORY_LIST_FAILURE = -316

# - Programs Manager
int32 PROGRAMS_MANAGER_FAILURE = -320
int32 PROGRAMS_MANAGER_READ_FAILURE = -321
int32 PROGRAMS_MANAGER_UNKNOWN_LANGUAGE = -325
int32 PROGRAMS_MANAGER_NOT_RUNNABLE_LANGUAGE = -326
int32 PROGRAMS_MANAGER_EXECUTION_FAILED = -327
int32 PROGRAMS_MANAGER_STOPPING_FAILED = -328
int32 PROGRAMS_MANAGER_AUTORUN_FAILURE = -329
int32 PROGRAMS_MANAGER_WRITING_FAILURE = -330
int32 PROGRAMS_MANAGER_FILE_ALREADY_EXISTS = -331
int32 PROGRAMS_MANAGER_FILE_DOES_NOT_EXIST = -332


# - Credentials
int32 CREDENTIALS_FILE_ERROR = -400
int32 CREDENTIALS_UNKNOWN_ERROR = -401


# - System Api Client
int32 SYSTEM_API_CLIENT_UNKNOWN_ERROR = -440
int32 SYSTEM_API_CLIENT_INVALID_ROBOT_NAME = -441
int32 SYSTEM_API_CLIENT_REQUEST_FAILED = -442
int32 SYSTEM_API_CLIENT_UNKNOWN_COMMAND = -443
int32 SYSTEM_API_CLIENT_COMMAND_FAILED = -444

# - Database
int32 DATABASE_DB_ERROR = -460
int32 DATABASE_SETTINGS_UNKNOWN = -461
int32 DATABASE_SETTINGS_TYPE_MISMATCH = -462
int32 DATABASE_FILE_PATH_UNKNOWN = -463


# - Reports
int32 REPORTS_UNABLE_TO_SEND = -470
int32 REPORTS_SENDING_FAIL = -471
int32 REPORTS_FETCHING_FAIL = -472
int32 REPORTS_SERVICE_UNREACHABLE = -473

# - Sound interface
int32 SOUND_FILE_NOT_FOUND = -500
int32 PROTECTED_SOUND_NAME = -501
int32 INVALID_SOUND_NAME = -502
int32 INVALID_SOUND_FORMAT = -503
int32 SOUND_TIMEOUT = -504

# - I2C interface
int32 MISSING_I2C = -510
")



(provide :niryo_robot_msgs/CommandStatus "a5e18a99488136d42c1dd63f1c336470")


