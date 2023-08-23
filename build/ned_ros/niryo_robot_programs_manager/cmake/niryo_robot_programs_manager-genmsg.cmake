# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "niryo_robot_programs_manager: 4 messages, 6 services")

set(MSG_I_FLAGS "-Iniryo_robot_programs_manager:/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(niryo_robot_programs_manager_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramIsRunning.msg" NAME_WE)
add_custom_target(_niryo_robot_programs_manager_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_programs_manager" "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramIsRunning.msg" ""
)

get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguage.msg" NAME_WE)
add_custom_target(_niryo_robot_programs_manager_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_programs_manager" "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguage.msg" ""
)

get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguageList.msg" NAME_WE)
add_custom_target(_niryo_robot_programs_manager_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_programs_manager" "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguageList.msg" "niryo_robot_programs_manager/ProgramLanguage"
)

get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramList.msg" NAME_WE)
add_custom_target(_niryo_robot_programs_manager_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_programs_manager" "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramList.msg" "niryo_robot_programs_manager/ProgramLanguageList:niryo_robot_programs_manager/ProgramLanguage"
)

get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/ExecuteProgram.srv" NAME_WE)
add_custom_target(_niryo_robot_programs_manager_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_programs_manager" "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/ExecuteProgram.srv" "niryo_robot_programs_manager/ProgramLanguage"
)

get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/GetProgram.srv" NAME_WE)
add_custom_target(_niryo_robot_programs_manager_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_programs_manager" "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/GetProgram.srv" "niryo_robot_programs_manager/ProgramLanguage"
)

get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/GetProgramAutorunInfos.srv" NAME_WE)
add_custom_target(_niryo_robot_programs_manager_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_programs_manager" "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/GetProgramAutorunInfos.srv" "niryo_robot_programs_manager/ProgramLanguage"
)

get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/GetProgramList.srv" NAME_WE)
add_custom_target(_niryo_robot_programs_manager_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_programs_manager" "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/GetProgramList.srv" "niryo_robot_programs_manager/ProgramLanguageList:niryo_robot_programs_manager/ProgramLanguage"
)

get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/ManageProgram.srv" NAME_WE)
add_custom_target(_niryo_robot_programs_manager_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_programs_manager" "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/ManageProgram.srv" "niryo_robot_programs_manager/ProgramLanguage"
)

get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/SetProgramAutorun.srv" NAME_WE)
add_custom_target(_niryo_robot_programs_manager_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_programs_manager" "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/SetProgramAutorun.srv" "niryo_robot_programs_manager/ProgramLanguage"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(niryo_robot_programs_manager
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramIsRunning.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_programs_manager
)
_generate_msg_cpp(niryo_robot_programs_manager
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_programs_manager
)
_generate_msg_cpp(niryo_robot_programs_manager
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguageList.msg"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguage.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_programs_manager
)
_generate_msg_cpp(niryo_robot_programs_manager
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramList.msg"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguageList.msg;/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguage.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_programs_manager
)

### Generating Services
_generate_srv_cpp(niryo_robot_programs_manager
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/ExecuteProgram.srv"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguage.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_programs_manager
)
_generate_srv_cpp(niryo_robot_programs_manager
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/GetProgram.srv"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguage.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_programs_manager
)
_generate_srv_cpp(niryo_robot_programs_manager
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/GetProgramAutorunInfos.srv"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguage.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_programs_manager
)
_generate_srv_cpp(niryo_robot_programs_manager
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/GetProgramList.srv"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguageList.msg;/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguage.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_programs_manager
)
_generate_srv_cpp(niryo_robot_programs_manager
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/ManageProgram.srv"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguage.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_programs_manager
)
_generate_srv_cpp(niryo_robot_programs_manager
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/SetProgramAutorun.srv"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguage.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_programs_manager
)

### Generating Module File
_generate_module_cpp(niryo_robot_programs_manager
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_programs_manager
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(niryo_robot_programs_manager_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(niryo_robot_programs_manager_generate_messages niryo_robot_programs_manager_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramIsRunning.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_cpp _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguage.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_cpp _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguageList.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_cpp _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramList.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_cpp _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/ExecuteProgram.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_cpp _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/GetProgram.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_cpp _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/GetProgramAutorunInfos.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_cpp _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/GetProgramList.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_cpp _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/ManageProgram.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_cpp _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/SetProgramAutorun.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_cpp _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(niryo_robot_programs_manager_gencpp)
add_dependencies(niryo_robot_programs_manager_gencpp niryo_robot_programs_manager_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS niryo_robot_programs_manager_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(niryo_robot_programs_manager
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramIsRunning.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_programs_manager
)
_generate_msg_eus(niryo_robot_programs_manager
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_programs_manager
)
_generate_msg_eus(niryo_robot_programs_manager
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguageList.msg"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguage.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_programs_manager
)
_generate_msg_eus(niryo_robot_programs_manager
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramList.msg"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguageList.msg;/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguage.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_programs_manager
)

### Generating Services
_generate_srv_eus(niryo_robot_programs_manager
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/ExecuteProgram.srv"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguage.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_programs_manager
)
_generate_srv_eus(niryo_robot_programs_manager
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/GetProgram.srv"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguage.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_programs_manager
)
_generate_srv_eus(niryo_robot_programs_manager
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/GetProgramAutorunInfos.srv"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguage.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_programs_manager
)
_generate_srv_eus(niryo_robot_programs_manager
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/GetProgramList.srv"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguageList.msg;/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguage.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_programs_manager
)
_generate_srv_eus(niryo_robot_programs_manager
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/ManageProgram.srv"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguage.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_programs_manager
)
_generate_srv_eus(niryo_robot_programs_manager
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/SetProgramAutorun.srv"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguage.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_programs_manager
)

### Generating Module File
_generate_module_eus(niryo_robot_programs_manager
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_programs_manager
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(niryo_robot_programs_manager_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(niryo_robot_programs_manager_generate_messages niryo_robot_programs_manager_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramIsRunning.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_eus _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguage.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_eus _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguageList.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_eus _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramList.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_eus _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/ExecuteProgram.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_eus _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/GetProgram.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_eus _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/GetProgramAutorunInfos.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_eus _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/GetProgramList.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_eus _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/ManageProgram.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_eus _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/SetProgramAutorun.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_eus _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(niryo_robot_programs_manager_geneus)
add_dependencies(niryo_robot_programs_manager_geneus niryo_robot_programs_manager_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS niryo_robot_programs_manager_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(niryo_robot_programs_manager
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramIsRunning.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_programs_manager
)
_generate_msg_lisp(niryo_robot_programs_manager
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_programs_manager
)
_generate_msg_lisp(niryo_robot_programs_manager
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguageList.msg"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguage.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_programs_manager
)
_generate_msg_lisp(niryo_robot_programs_manager
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramList.msg"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguageList.msg;/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguage.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_programs_manager
)

### Generating Services
_generate_srv_lisp(niryo_robot_programs_manager
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/ExecuteProgram.srv"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguage.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_programs_manager
)
_generate_srv_lisp(niryo_robot_programs_manager
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/GetProgram.srv"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguage.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_programs_manager
)
_generate_srv_lisp(niryo_robot_programs_manager
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/GetProgramAutorunInfos.srv"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguage.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_programs_manager
)
_generate_srv_lisp(niryo_robot_programs_manager
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/GetProgramList.srv"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguageList.msg;/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguage.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_programs_manager
)
_generate_srv_lisp(niryo_robot_programs_manager
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/ManageProgram.srv"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguage.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_programs_manager
)
_generate_srv_lisp(niryo_robot_programs_manager
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/SetProgramAutorun.srv"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguage.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_programs_manager
)

### Generating Module File
_generate_module_lisp(niryo_robot_programs_manager
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_programs_manager
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(niryo_robot_programs_manager_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(niryo_robot_programs_manager_generate_messages niryo_robot_programs_manager_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramIsRunning.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_lisp _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguage.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_lisp _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguageList.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_lisp _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramList.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_lisp _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/ExecuteProgram.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_lisp _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/GetProgram.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_lisp _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/GetProgramAutorunInfos.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_lisp _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/GetProgramList.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_lisp _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/ManageProgram.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_lisp _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/SetProgramAutorun.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_lisp _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(niryo_robot_programs_manager_genlisp)
add_dependencies(niryo_robot_programs_manager_genlisp niryo_robot_programs_manager_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS niryo_robot_programs_manager_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(niryo_robot_programs_manager
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramIsRunning.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_programs_manager
)
_generate_msg_nodejs(niryo_robot_programs_manager
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_programs_manager
)
_generate_msg_nodejs(niryo_robot_programs_manager
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguageList.msg"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguage.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_programs_manager
)
_generate_msg_nodejs(niryo_robot_programs_manager
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramList.msg"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguageList.msg;/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguage.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_programs_manager
)

### Generating Services
_generate_srv_nodejs(niryo_robot_programs_manager
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/ExecuteProgram.srv"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguage.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_programs_manager
)
_generate_srv_nodejs(niryo_robot_programs_manager
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/GetProgram.srv"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguage.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_programs_manager
)
_generate_srv_nodejs(niryo_robot_programs_manager
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/GetProgramAutorunInfos.srv"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguage.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_programs_manager
)
_generate_srv_nodejs(niryo_robot_programs_manager
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/GetProgramList.srv"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguageList.msg;/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguage.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_programs_manager
)
_generate_srv_nodejs(niryo_robot_programs_manager
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/ManageProgram.srv"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguage.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_programs_manager
)
_generate_srv_nodejs(niryo_robot_programs_manager
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/SetProgramAutorun.srv"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguage.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_programs_manager
)

### Generating Module File
_generate_module_nodejs(niryo_robot_programs_manager
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_programs_manager
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(niryo_robot_programs_manager_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(niryo_robot_programs_manager_generate_messages niryo_robot_programs_manager_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramIsRunning.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_nodejs _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguage.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_nodejs _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguageList.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_nodejs _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramList.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_nodejs _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/ExecuteProgram.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_nodejs _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/GetProgram.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_nodejs _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/GetProgramAutorunInfos.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_nodejs _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/GetProgramList.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_nodejs _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/ManageProgram.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_nodejs _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/SetProgramAutorun.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_nodejs _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(niryo_robot_programs_manager_gennodejs)
add_dependencies(niryo_robot_programs_manager_gennodejs niryo_robot_programs_manager_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS niryo_robot_programs_manager_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(niryo_robot_programs_manager
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramIsRunning.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_programs_manager
)
_generate_msg_py(niryo_robot_programs_manager
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_programs_manager
)
_generate_msg_py(niryo_robot_programs_manager
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguageList.msg"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguage.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_programs_manager
)
_generate_msg_py(niryo_robot_programs_manager
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramList.msg"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguageList.msg;/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguage.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_programs_manager
)

### Generating Services
_generate_srv_py(niryo_robot_programs_manager
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/ExecuteProgram.srv"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguage.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_programs_manager
)
_generate_srv_py(niryo_robot_programs_manager
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/GetProgram.srv"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguage.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_programs_manager
)
_generate_srv_py(niryo_robot_programs_manager
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/GetProgramAutorunInfos.srv"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguage.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_programs_manager
)
_generate_srv_py(niryo_robot_programs_manager
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/GetProgramList.srv"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguageList.msg;/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguage.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_programs_manager
)
_generate_srv_py(niryo_robot_programs_manager
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/ManageProgram.srv"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguage.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_programs_manager
)
_generate_srv_py(niryo_robot_programs_manager
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/SetProgramAutorun.srv"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguage.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_programs_manager
)

### Generating Module File
_generate_module_py(niryo_robot_programs_manager
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_programs_manager
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(niryo_robot_programs_manager_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(niryo_robot_programs_manager_generate_messages niryo_robot_programs_manager_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramIsRunning.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_py _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguage.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_py _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramLanguageList.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_py _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/msg/ProgramList.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_py _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/ExecuteProgram.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_py _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/GetProgram.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_py _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/GetProgramAutorunInfos.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_py _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/GetProgramList.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_py _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/ManageProgram.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_py _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_programs_manager/srv/SetProgramAutorun.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_py _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(niryo_robot_programs_manager_genpy)
add_dependencies(niryo_robot_programs_manager_genpy niryo_robot_programs_manager_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS niryo_robot_programs_manager_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_programs_manager)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_programs_manager
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_programs_manager)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_programs_manager
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_programs_manager)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_programs_manager
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_programs_manager)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_programs_manager
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_programs_manager)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_programs_manager\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_programs_manager
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  string(REGEX REPLACE "([][+.*()^])" "\\\\\\1" ESCAPED_PATH "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_programs_manager")
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_programs_manager
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${ESCAPED_PATH}/.+/__init__.pyc?$"
  )
endif()
