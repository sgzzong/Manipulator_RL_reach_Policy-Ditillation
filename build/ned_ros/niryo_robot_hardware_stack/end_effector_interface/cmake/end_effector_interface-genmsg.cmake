# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "end_effector_interface: 2 messages, 1 services")

set(MSG_I_FLAGS "-Iend_effector_interface:/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/end_effector_interface/msg;-Iniryo_robot_msgs:/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(end_effector_interface_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/end_effector_interface/msg/EEButtonStatus.msg" NAME_WE)
add_custom_target(_end_effector_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "end_effector_interface" "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/end_effector_interface/msg/EEButtonStatus.msg" ""
)

get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/end_effector_interface/msg/EEIOState.msg" NAME_WE)
add_custom_target(_end_effector_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "end_effector_interface" "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/end_effector_interface/msg/EEIOState.msg" ""
)

get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/end_effector_interface/srv/SetEEDigitalOut.srv" NAME_WE)
add_custom_target(_end_effector_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "end_effector_interface" "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/end_effector_interface/srv/SetEEDigitalOut.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(end_effector_interface
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/end_effector_interface/msg/EEButtonStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/end_effector_interface
)
_generate_msg_cpp(end_effector_interface
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/end_effector_interface/msg/EEIOState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/end_effector_interface
)

### Generating Services
_generate_srv_cpp(end_effector_interface
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/end_effector_interface/srv/SetEEDigitalOut.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/end_effector_interface
)

### Generating Module File
_generate_module_cpp(end_effector_interface
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/end_effector_interface
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(end_effector_interface_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(end_effector_interface_generate_messages end_effector_interface_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/end_effector_interface/msg/EEButtonStatus.msg" NAME_WE)
add_dependencies(end_effector_interface_generate_messages_cpp _end_effector_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/end_effector_interface/msg/EEIOState.msg" NAME_WE)
add_dependencies(end_effector_interface_generate_messages_cpp _end_effector_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/end_effector_interface/srv/SetEEDigitalOut.srv" NAME_WE)
add_dependencies(end_effector_interface_generate_messages_cpp _end_effector_interface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(end_effector_interface_gencpp)
add_dependencies(end_effector_interface_gencpp end_effector_interface_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS end_effector_interface_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(end_effector_interface
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/end_effector_interface/msg/EEButtonStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/end_effector_interface
)
_generate_msg_eus(end_effector_interface
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/end_effector_interface/msg/EEIOState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/end_effector_interface
)

### Generating Services
_generate_srv_eus(end_effector_interface
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/end_effector_interface/srv/SetEEDigitalOut.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/end_effector_interface
)

### Generating Module File
_generate_module_eus(end_effector_interface
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/end_effector_interface
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(end_effector_interface_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(end_effector_interface_generate_messages end_effector_interface_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/end_effector_interface/msg/EEButtonStatus.msg" NAME_WE)
add_dependencies(end_effector_interface_generate_messages_eus _end_effector_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/end_effector_interface/msg/EEIOState.msg" NAME_WE)
add_dependencies(end_effector_interface_generate_messages_eus _end_effector_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/end_effector_interface/srv/SetEEDigitalOut.srv" NAME_WE)
add_dependencies(end_effector_interface_generate_messages_eus _end_effector_interface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(end_effector_interface_geneus)
add_dependencies(end_effector_interface_geneus end_effector_interface_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS end_effector_interface_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(end_effector_interface
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/end_effector_interface/msg/EEButtonStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/end_effector_interface
)
_generate_msg_lisp(end_effector_interface
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/end_effector_interface/msg/EEIOState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/end_effector_interface
)

### Generating Services
_generate_srv_lisp(end_effector_interface
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/end_effector_interface/srv/SetEEDigitalOut.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/end_effector_interface
)

### Generating Module File
_generate_module_lisp(end_effector_interface
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/end_effector_interface
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(end_effector_interface_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(end_effector_interface_generate_messages end_effector_interface_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/end_effector_interface/msg/EEButtonStatus.msg" NAME_WE)
add_dependencies(end_effector_interface_generate_messages_lisp _end_effector_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/end_effector_interface/msg/EEIOState.msg" NAME_WE)
add_dependencies(end_effector_interface_generate_messages_lisp _end_effector_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/end_effector_interface/srv/SetEEDigitalOut.srv" NAME_WE)
add_dependencies(end_effector_interface_generate_messages_lisp _end_effector_interface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(end_effector_interface_genlisp)
add_dependencies(end_effector_interface_genlisp end_effector_interface_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS end_effector_interface_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(end_effector_interface
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/end_effector_interface/msg/EEButtonStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/end_effector_interface
)
_generate_msg_nodejs(end_effector_interface
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/end_effector_interface/msg/EEIOState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/end_effector_interface
)

### Generating Services
_generate_srv_nodejs(end_effector_interface
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/end_effector_interface/srv/SetEEDigitalOut.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/end_effector_interface
)

### Generating Module File
_generate_module_nodejs(end_effector_interface
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/end_effector_interface
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(end_effector_interface_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(end_effector_interface_generate_messages end_effector_interface_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/end_effector_interface/msg/EEButtonStatus.msg" NAME_WE)
add_dependencies(end_effector_interface_generate_messages_nodejs _end_effector_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/end_effector_interface/msg/EEIOState.msg" NAME_WE)
add_dependencies(end_effector_interface_generate_messages_nodejs _end_effector_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/end_effector_interface/srv/SetEEDigitalOut.srv" NAME_WE)
add_dependencies(end_effector_interface_generate_messages_nodejs _end_effector_interface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(end_effector_interface_gennodejs)
add_dependencies(end_effector_interface_gennodejs end_effector_interface_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS end_effector_interface_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(end_effector_interface
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/end_effector_interface/msg/EEButtonStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/end_effector_interface
)
_generate_msg_py(end_effector_interface
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/end_effector_interface/msg/EEIOState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/end_effector_interface
)

### Generating Services
_generate_srv_py(end_effector_interface
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/end_effector_interface/srv/SetEEDigitalOut.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/end_effector_interface
)

### Generating Module File
_generate_module_py(end_effector_interface
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/end_effector_interface
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(end_effector_interface_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(end_effector_interface_generate_messages end_effector_interface_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/end_effector_interface/msg/EEButtonStatus.msg" NAME_WE)
add_dependencies(end_effector_interface_generate_messages_py _end_effector_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/end_effector_interface/msg/EEIOState.msg" NAME_WE)
add_dependencies(end_effector_interface_generate_messages_py _end_effector_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/end_effector_interface/srv/SetEEDigitalOut.srv" NAME_WE)
add_dependencies(end_effector_interface_generate_messages_py _end_effector_interface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(end_effector_interface_genpy)
add_dependencies(end_effector_interface_genpy end_effector_interface_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS end_effector_interface_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/end_effector_interface)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/end_effector_interface
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET niryo_robot_msgs_generate_messages_cpp)
  add_dependencies(end_effector_interface_generate_messages_cpp niryo_robot_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(end_effector_interface_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/end_effector_interface)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/end_effector_interface
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET niryo_robot_msgs_generate_messages_eus)
  add_dependencies(end_effector_interface_generate_messages_eus niryo_robot_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(end_effector_interface_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/end_effector_interface)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/end_effector_interface
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET niryo_robot_msgs_generate_messages_lisp)
  add_dependencies(end_effector_interface_generate_messages_lisp niryo_robot_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(end_effector_interface_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/end_effector_interface)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/end_effector_interface
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET niryo_robot_msgs_generate_messages_nodejs)
  add_dependencies(end_effector_interface_generate_messages_nodejs niryo_robot_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(end_effector_interface_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/end_effector_interface)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/end_effector_interface\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/end_effector_interface
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET niryo_robot_msgs_generate_messages_py)
  add_dependencies(end_effector_interface_generate_messages_py niryo_robot_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(end_effector_interface_generate_messages_py std_msgs_generate_messages_py)
endif()
