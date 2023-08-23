# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "can_driver: 3 messages, 1 services")

set(MSG_I_FLAGS "-Ican_driver:/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/can_driver/msg;-Iniryo_robot_msgs:/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(can_driver_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/can_driver/msg/StepperArrayMotorHardwareStatus.msg" NAME_WE)
add_custom_target(_can_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "can_driver" "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/can_driver/msg/StepperArrayMotorHardwareStatus.msg" "can_driver/StepperMotorHardwareStatus:std_msgs/Header:niryo_robot_msgs/MotorHeader"
)

get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/can_driver/msg/StepperMotorCommand.msg" NAME_WE)
add_custom_target(_can_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "can_driver" "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/can_driver/msg/StepperMotorCommand.msg" ""
)

get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/can_driver/msg/StepperMotorHardwareStatus.msg" NAME_WE)
add_custom_target(_can_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "can_driver" "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/can_driver/msg/StepperMotorHardwareStatus.msg" "niryo_robot_msgs/MotorHeader"
)

get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/can_driver/srv/StepperCmd.srv" NAME_WE)
add_custom_target(_can_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "can_driver" "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/can_driver/srv/StepperCmd.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(can_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/can_driver/msg/StepperArrayMotorHardwareStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/can_driver/msg/StepperMotorHardwareStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/MotorHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/can_driver
)
_generate_msg_cpp(can_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/can_driver/msg/StepperMotorCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/can_driver
)
_generate_msg_cpp(can_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/can_driver/msg/StepperMotorHardwareStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/MotorHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/can_driver
)

### Generating Services
_generate_srv_cpp(can_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/can_driver/srv/StepperCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/can_driver
)

### Generating Module File
_generate_module_cpp(can_driver
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/can_driver
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(can_driver_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(can_driver_generate_messages can_driver_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/can_driver/msg/StepperArrayMotorHardwareStatus.msg" NAME_WE)
add_dependencies(can_driver_generate_messages_cpp _can_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/can_driver/msg/StepperMotorCommand.msg" NAME_WE)
add_dependencies(can_driver_generate_messages_cpp _can_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/can_driver/msg/StepperMotorHardwareStatus.msg" NAME_WE)
add_dependencies(can_driver_generate_messages_cpp _can_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/can_driver/srv/StepperCmd.srv" NAME_WE)
add_dependencies(can_driver_generate_messages_cpp _can_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(can_driver_gencpp)
add_dependencies(can_driver_gencpp can_driver_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS can_driver_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(can_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/can_driver/msg/StepperArrayMotorHardwareStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/can_driver/msg/StepperMotorHardwareStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/MotorHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/can_driver
)
_generate_msg_eus(can_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/can_driver/msg/StepperMotorCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/can_driver
)
_generate_msg_eus(can_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/can_driver/msg/StepperMotorHardwareStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/MotorHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/can_driver
)

### Generating Services
_generate_srv_eus(can_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/can_driver/srv/StepperCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/can_driver
)

### Generating Module File
_generate_module_eus(can_driver
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/can_driver
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(can_driver_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(can_driver_generate_messages can_driver_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/can_driver/msg/StepperArrayMotorHardwareStatus.msg" NAME_WE)
add_dependencies(can_driver_generate_messages_eus _can_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/can_driver/msg/StepperMotorCommand.msg" NAME_WE)
add_dependencies(can_driver_generate_messages_eus _can_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/can_driver/msg/StepperMotorHardwareStatus.msg" NAME_WE)
add_dependencies(can_driver_generate_messages_eus _can_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/can_driver/srv/StepperCmd.srv" NAME_WE)
add_dependencies(can_driver_generate_messages_eus _can_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(can_driver_geneus)
add_dependencies(can_driver_geneus can_driver_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS can_driver_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(can_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/can_driver/msg/StepperArrayMotorHardwareStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/can_driver/msg/StepperMotorHardwareStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/MotorHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/can_driver
)
_generate_msg_lisp(can_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/can_driver/msg/StepperMotorCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/can_driver
)
_generate_msg_lisp(can_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/can_driver/msg/StepperMotorHardwareStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/MotorHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/can_driver
)

### Generating Services
_generate_srv_lisp(can_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/can_driver/srv/StepperCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/can_driver
)

### Generating Module File
_generate_module_lisp(can_driver
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/can_driver
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(can_driver_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(can_driver_generate_messages can_driver_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/can_driver/msg/StepperArrayMotorHardwareStatus.msg" NAME_WE)
add_dependencies(can_driver_generate_messages_lisp _can_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/can_driver/msg/StepperMotorCommand.msg" NAME_WE)
add_dependencies(can_driver_generate_messages_lisp _can_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/can_driver/msg/StepperMotorHardwareStatus.msg" NAME_WE)
add_dependencies(can_driver_generate_messages_lisp _can_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/can_driver/srv/StepperCmd.srv" NAME_WE)
add_dependencies(can_driver_generate_messages_lisp _can_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(can_driver_genlisp)
add_dependencies(can_driver_genlisp can_driver_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS can_driver_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(can_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/can_driver/msg/StepperArrayMotorHardwareStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/can_driver/msg/StepperMotorHardwareStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/MotorHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/can_driver
)
_generate_msg_nodejs(can_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/can_driver/msg/StepperMotorCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/can_driver
)
_generate_msg_nodejs(can_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/can_driver/msg/StepperMotorHardwareStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/MotorHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/can_driver
)

### Generating Services
_generate_srv_nodejs(can_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/can_driver/srv/StepperCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/can_driver
)

### Generating Module File
_generate_module_nodejs(can_driver
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/can_driver
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(can_driver_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(can_driver_generate_messages can_driver_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/can_driver/msg/StepperArrayMotorHardwareStatus.msg" NAME_WE)
add_dependencies(can_driver_generate_messages_nodejs _can_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/can_driver/msg/StepperMotorCommand.msg" NAME_WE)
add_dependencies(can_driver_generate_messages_nodejs _can_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/can_driver/msg/StepperMotorHardwareStatus.msg" NAME_WE)
add_dependencies(can_driver_generate_messages_nodejs _can_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/can_driver/srv/StepperCmd.srv" NAME_WE)
add_dependencies(can_driver_generate_messages_nodejs _can_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(can_driver_gennodejs)
add_dependencies(can_driver_gennodejs can_driver_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS can_driver_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(can_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/can_driver/msg/StepperArrayMotorHardwareStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/can_driver/msg/StepperMotorHardwareStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/MotorHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_driver
)
_generate_msg_py(can_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/can_driver/msg/StepperMotorCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_driver
)
_generate_msg_py(can_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/can_driver/msg/StepperMotorHardwareStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/MotorHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_driver
)

### Generating Services
_generate_srv_py(can_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/can_driver/srv/StepperCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_driver
)

### Generating Module File
_generate_module_py(can_driver
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_driver
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(can_driver_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(can_driver_generate_messages can_driver_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/can_driver/msg/StepperArrayMotorHardwareStatus.msg" NAME_WE)
add_dependencies(can_driver_generate_messages_py _can_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/can_driver/msg/StepperMotorCommand.msg" NAME_WE)
add_dependencies(can_driver_generate_messages_py _can_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/can_driver/msg/StepperMotorHardwareStatus.msg" NAME_WE)
add_dependencies(can_driver_generate_messages_py _can_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/can_driver/srv/StepperCmd.srv" NAME_WE)
add_dependencies(can_driver_generate_messages_py _can_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(can_driver_genpy)
add_dependencies(can_driver_genpy can_driver_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS can_driver_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/can_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/can_driver
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET niryo_robot_msgs_generate_messages_cpp)
  add_dependencies(can_driver_generate_messages_cpp niryo_robot_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(can_driver_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/can_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/can_driver
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET niryo_robot_msgs_generate_messages_eus)
  add_dependencies(can_driver_generate_messages_eus niryo_robot_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(can_driver_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/can_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/can_driver
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET niryo_robot_msgs_generate_messages_lisp)
  add_dependencies(can_driver_generate_messages_lisp niryo_robot_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(can_driver_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/can_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/can_driver
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET niryo_robot_msgs_generate_messages_nodejs)
  add_dependencies(can_driver_generate_messages_nodejs niryo_robot_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(can_driver_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_driver)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_driver\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_driver
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET niryo_robot_msgs_generate_messages_py)
  add_dependencies(can_driver_generate_messages_py niryo_robot_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(can_driver_generate_messages_py std_msgs_generate_messages_py)
endif()
