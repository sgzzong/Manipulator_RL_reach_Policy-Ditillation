# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ttl_driver: 3 messages, 6 services")

set(MSG_I_FLAGS "-Ittl_driver:/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/msg;-Iniryo_robot_msgs:/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ttl_driver_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/msg/ArrayMotorHardwareStatus.msg" NAME_WE)
add_custom_target(_ttl_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ttl_driver" "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/msg/ArrayMotorHardwareStatus.msg" "ttl_driver/MotorHardwareStatus:std_msgs/Header:niryo_robot_msgs/MotorHeader"
)

get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/msg/MotorCommand.msg" NAME_WE)
add_custom_target(_ttl_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ttl_driver" "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/msg/MotorCommand.msg" ""
)

get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/msg/MotorHardwareStatus.msg" NAME_WE)
add_custom_target(_ttl_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ttl_driver" "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/msg/MotorHardwareStatus.msg" "niryo_robot_msgs/MotorHeader"
)

get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/ReadCustomValue.srv" NAME_WE)
add_custom_target(_ttl_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ttl_driver" "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/ReadCustomValue.srv" ""
)

get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/ReadPIDValue.srv" NAME_WE)
add_custom_target(_ttl_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ttl_driver" "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/ReadPIDValue.srv" ""
)

get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/ReadVelocityProfile.srv" NAME_WE)
add_custom_target(_ttl_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ttl_driver" "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/ReadVelocityProfile.srv" ""
)

get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/WriteCustomValue.srv" NAME_WE)
add_custom_target(_ttl_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ttl_driver" "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/WriteCustomValue.srv" ""
)

get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/WritePIDValue.srv" NAME_WE)
add_custom_target(_ttl_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ttl_driver" "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/WritePIDValue.srv" ""
)

get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/WriteVelocityProfile.srv" NAME_WE)
add_custom_target(_ttl_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ttl_driver" "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/WriteVelocityProfile.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(ttl_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/msg/ArrayMotorHardwareStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/msg/MotorHardwareStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/MotorHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ttl_driver
)
_generate_msg_cpp(ttl_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/msg/MotorCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ttl_driver
)
_generate_msg_cpp(ttl_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/msg/MotorHardwareStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/MotorHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ttl_driver
)

### Generating Services
_generate_srv_cpp(ttl_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/ReadCustomValue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ttl_driver
)
_generate_srv_cpp(ttl_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/ReadPIDValue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ttl_driver
)
_generate_srv_cpp(ttl_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/ReadVelocityProfile.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ttl_driver
)
_generate_srv_cpp(ttl_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/WriteCustomValue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ttl_driver
)
_generate_srv_cpp(ttl_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/WritePIDValue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ttl_driver
)
_generate_srv_cpp(ttl_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/WriteVelocityProfile.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ttl_driver
)

### Generating Module File
_generate_module_cpp(ttl_driver
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ttl_driver
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ttl_driver_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ttl_driver_generate_messages ttl_driver_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/msg/ArrayMotorHardwareStatus.msg" NAME_WE)
add_dependencies(ttl_driver_generate_messages_cpp _ttl_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/msg/MotorCommand.msg" NAME_WE)
add_dependencies(ttl_driver_generate_messages_cpp _ttl_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/msg/MotorHardwareStatus.msg" NAME_WE)
add_dependencies(ttl_driver_generate_messages_cpp _ttl_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/ReadCustomValue.srv" NAME_WE)
add_dependencies(ttl_driver_generate_messages_cpp _ttl_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/ReadPIDValue.srv" NAME_WE)
add_dependencies(ttl_driver_generate_messages_cpp _ttl_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/ReadVelocityProfile.srv" NAME_WE)
add_dependencies(ttl_driver_generate_messages_cpp _ttl_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/WriteCustomValue.srv" NAME_WE)
add_dependencies(ttl_driver_generate_messages_cpp _ttl_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/WritePIDValue.srv" NAME_WE)
add_dependencies(ttl_driver_generate_messages_cpp _ttl_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/WriteVelocityProfile.srv" NAME_WE)
add_dependencies(ttl_driver_generate_messages_cpp _ttl_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ttl_driver_gencpp)
add_dependencies(ttl_driver_gencpp ttl_driver_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ttl_driver_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(ttl_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/msg/ArrayMotorHardwareStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/msg/MotorHardwareStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/MotorHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ttl_driver
)
_generate_msg_eus(ttl_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/msg/MotorCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ttl_driver
)
_generate_msg_eus(ttl_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/msg/MotorHardwareStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/MotorHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ttl_driver
)

### Generating Services
_generate_srv_eus(ttl_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/ReadCustomValue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ttl_driver
)
_generate_srv_eus(ttl_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/ReadPIDValue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ttl_driver
)
_generate_srv_eus(ttl_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/ReadVelocityProfile.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ttl_driver
)
_generate_srv_eus(ttl_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/WriteCustomValue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ttl_driver
)
_generate_srv_eus(ttl_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/WritePIDValue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ttl_driver
)
_generate_srv_eus(ttl_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/WriteVelocityProfile.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ttl_driver
)

### Generating Module File
_generate_module_eus(ttl_driver
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ttl_driver
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(ttl_driver_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(ttl_driver_generate_messages ttl_driver_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/msg/ArrayMotorHardwareStatus.msg" NAME_WE)
add_dependencies(ttl_driver_generate_messages_eus _ttl_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/msg/MotorCommand.msg" NAME_WE)
add_dependencies(ttl_driver_generate_messages_eus _ttl_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/msg/MotorHardwareStatus.msg" NAME_WE)
add_dependencies(ttl_driver_generate_messages_eus _ttl_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/ReadCustomValue.srv" NAME_WE)
add_dependencies(ttl_driver_generate_messages_eus _ttl_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/ReadPIDValue.srv" NAME_WE)
add_dependencies(ttl_driver_generate_messages_eus _ttl_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/ReadVelocityProfile.srv" NAME_WE)
add_dependencies(ttl_driver_generate_messages_eus _ttl_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/WriteCustomValue.srv" NAME_WE)
add_dependencies(ttl_driver_generate_messages_eus _ttl_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/WritePIDValue.srv" NAME_WE)
add_dependencies(ttl_driver_generate_messages_eus _ttl_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/WriteVelocityProfile.srv" NAME_WE)
add_dependencies(ttl_driver_generate_messages_eus _ttl_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ttl_driver_geneus)
add_dependencies(ttl_driver_geneus ttl_driver_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ttl_driver_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(ttl_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/msg/ArrayMotorHardwareStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/msg/MotorHardwareStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/MotorHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ttl_driver
)
_generate_msg_lisp(ttl_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/msg/MotorCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ttl_driver
)
_generate_msg_lisp(ttl_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/msg/MotorHardwareStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/MotorHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ttl_driver
)

### Generating Services
_generate_srv_lisp(ttl_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/ReadCustomValue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ttl_driver
)
_generate_srv_lisp(ttl_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/ReadPIDValue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ttl_driver
)
_generate_srv_lisp(ttl_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/ReadVelocityProfile.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ttl_driver
)
_generate_srv_lisp(ttl_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/WriteCustomValue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ttl_driver
)
_generate_srv_lisp(ttl_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/WritePIDValue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ttl_driver
)
_generate_srv_lisp(ttl_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/WriteVelocityProfile.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ttl_driver
)

### Generating Module File
_generate_module_lisp(ttl_driver
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ttl_driver
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ttl_driver_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ttl_driver_generate_messages ttl_driver_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/msg/ArrayMotorHardwareStatus.msg" NAME_WE)
add_dependencies(ttl_driver_generate_messages_lisp _ttl_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/msg/MotorCommand.msg" NAME_WE)
add_dependencies(ttl_driver_generate_messages_lisp _ttl_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/msg/MotorHardwareStatus.msg" NAME_WE)
add_dependencies(ttl_driver_generate_messages_lisp _ttl_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/ReadCustomValue.srv" NAME_WE)
add_dependencies(ttl_driver_generate_messages_lisp _ttl_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/ReadPIDValue.srv" NAME_WE)
add_dependencies(ttl_driver_generate_messages_lisp _ttl_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/ReadVelocityProfile.srv" NAME_WE)
add_dependencies(ttl_driver_generate_messages_lisp _ttl_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/WriteCustomValue.srv" NAME_WE)
add_dependencies(ttl_driver_generate_messages_lisp _ttl_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/WritePIDValue.srv" NAME_WE)
add_dependencies(ttl_driver_generate_messages_lisp _ttl_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/WriteVelocityProfile.srv" NAME_WE)
add_dependencies(ttl_driver_generate_messages_lisp _ttl_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ttl_driver_genlisp)
add_dependencies(ttl_driver_genlisp ttl_driver_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ttl_driver_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(ttl_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/msg/ArrayMotorHardwareStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/msg/MotorHardwareStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/MotorHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ttl_driver
)
_generate_msg_nodejs(ttl_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/msg/MotorCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ttl_driver
)
_generate_msg_nodejs(ttl_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/msg/MotorHardwareStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/MotorHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ttl_driver
)

### Generating Services
_generate_srv_nodejs(ttl_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/ReadCustomValue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ttl_driver
)
_generate_srv_nodejs(ttl_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/ReadPIDValue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ttl_driver
)
_generate_srv_nodejs(ttl_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/ReadVelocityProfile.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ttl_driver
)
_generate_srv_nodejs(ttl_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/WriteCustomValue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ttl_driver
)
_generate_srv_nodejs(ttl_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/WritePIDValue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ttl_driver
)
_generate_srv_nodejs(ttl_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/WriteVelocityProfile.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ttl_driver
)

### Generating Module File
_generate_module_nodejs(ttl_driver
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ttl_driver
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(ttl_driver_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(ttl_driver_generate_messages ttl_driver_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/msg/ArrayMotorHardwareStatus.msg" NAME_WE)
add_dependencies(ttl_driver_generate_messages_nodejs _ttl_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/msg/MotorCommand.msg" NAME_WE)
add_dependencies(ttl_driver_generate_messages_nodejs _ttl_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/msg/MotorHardwareStatus.msg" NAME_WE)
add_dependencies(ttl_driver_generate_messages_nodejs _ttl_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/ReadCustomValue.srv" NAME_WE)
add_dependencies(ttl_driver_generate_messages_nodejs _ttl_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/ReadPIDValue.srv" NAME_WE)
add_dependencies(ttl_driver_generate_messages_nodejs _ttl_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/ReadVelocityProfile.srv" NAME_WE)
add_dependencies(ttl_driver_generate_messages_nodejs _ttl_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/WriteCustomValue.srv" NAME_WE)
add_dependencies(ttl_driver_generate_messages_nodejs _ttl_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/WritePIDValue.srv" NAME_WE)
add_dependencies(ttl_driver_generate_messages_nodejs _ttl_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/WriteVelocityProfile.srv" NAME_WE)
add_dependencies(ttl_driver_generate_messages_nodejs _ttl_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ttl_driver_gennodejs)
add_dependencies(ttl_driver_gennodejs ttl_driver_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ttl_driver_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(ttl_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/msg/ArrayMotorHardwareStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/msg/MotorHardwareStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/MotorHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ttl_driver
)
_generate_msg_py(ttl_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/msg/MotorCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ttl_driver
)
_generate_msg_py(ttl_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/msg/MotorHardwareStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/MotorHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ttl_driver
)

### Generating Services
_generate_srv_py(ttl_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/ReadCustomValue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ttl_driver
)
_generate_srv_py(ttl_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/ReadPIDValue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ttl_driver
)
_generate_srv_py(ttl_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/ReadVelocityProfile.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ttl_driver
)
_generate_srv_py(ttl_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/WriteCustomValue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ttl_driver
)
_generate_srv_py(ttl_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/WritePIDValue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ttl_driver
)
_generate_srv_py(ttl_driver
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/WriteVelocityProfile.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ttl_driver
)

### Generating Module File
_generate_module_py(ttl_driver
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ttl_driver
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ttl_driver_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ttl_driver_generate_messages ttl_driver_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/msg/ArrayMotorHardwareStatus.msg" NAME_WE)
add_dependencies(ttl_driver_generate_messages_py _ttl_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/msg/MotorCommand.msg" NAME_WE)
add_dependencies(ttl_driver_generate_messages_py _ttl_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/msg/MotorHardwareStatus.msg" NAME_WE)
add_dependencies(ttl_driver_generate_messages_py _ttl_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/ReadCustomValue.srv" NAME_WE)
add_dependencies(ttl_driver_generate_messages_py _ttl_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/ReadPIDValue.srv" NAME_WE)
add_dependencies(ttl_driver_generate_messages_py _ttl_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/ReadVelocityProfile.srv" NAME_WE)
add_dependencies(ttl_driver_generate_messages_py _ttl_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/WriteCustomValue.srv" NAME_WE)
add_dependencies(ttl_driver_generate_messages_py _ttl_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/WritePIDValue.srv" NAME_WE)
add_dependencies(ttl_driver_generate_messages_py _ttl_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_driver/srv/WriteVelocityProfile.srv" NAME_WE)
add_dependencies(ttl_driver_generate_messages_py _ttl_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ttl_driver_genpy)
add_dependencies(ttl_driver_genpy ttl_driver_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ttl_driver_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ttl_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ttl_driver
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET niryo_robot_msgs_generate_messages_cpp)
  add_dependencies(ttl_driver_generate_messages_cpp niryo_robot_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(ttl_driver_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ttl_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ttl_driver
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET niryo_robot_msgs_generate_messages_eus)
  add_dependencies(ttl_driver_generate_messages_eus niryo_robot_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(ttl_driver_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ttl_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ttl_driver
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET niryo_robot_msgs_generate_messages_lisp)
  add_dependencies(ttl_driver_generate_messages_lisp niryo_robot_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(ttl_driver_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ttl_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ttl_driver
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET niryo_robot_msgs_generate_messages_nodejs)
  add_dependencies(ttl_driver_generate_messages_nodejs niryo_robot_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(ttl_driver_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ttl_driver)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ttl_driver\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ttl_driver
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET niryo_robot_msgs_generate_messages_py)
  add_dependencies(ttl_driver_generate_messages_py niryo_robot_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(ttl_driver_generate_messages_py std_msgs_generate_messages_py)
endif()
