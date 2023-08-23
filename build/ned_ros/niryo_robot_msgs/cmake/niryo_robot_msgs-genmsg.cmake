# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "niryo_robot_msgs: 8 messages, 12 services")

set(MSG_I_FLAGS "-Iniryo_robot_msgs:/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(niryo_robot_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/BusState.msg" NAME_WE)
add_custom_target(_niryo_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_msgs" "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/BusState.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/CommandStatus.msg" NAME_WE)
add_custom_target(_niryo_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_msgs" "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/CommandStatus.msg" ""
)

get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/HardwareStatus.msg" NAME_WE)
add_custom_target(_niryo_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_msgs" "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/HardwareStatus.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/MotorHeader.msg" NAME_WE)
add_custom_target(_niryo_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_msgs" "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/MotorHeader.msg" ""
)

get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/ObjectPose.msg" NAME_WE)
add_custom_target(_niryo_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_msgs" "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/ObjectPose.msg" ""
)

get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/RPY.msg" NAME_WE)
add_custom_target(_niryo_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_msgs" "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/RPY.msg" ""
)

get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/RobotState.msg" NAME_WE)
add_custom_target(_niryo_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_msgs" "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/RobotState.msg" "niryo_robot_msgs/RPY:geometry_msgs/Twist:geometry_msgs/Point:geometry_msgs/Quaternion:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/SoftwareVersion.msg" NAME_WE)
add_custom_target(_niryo_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_msgs" "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/SoftwareVersion.msg" ""
)

get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/AdvertiseShutdown.srv" NAME_WE)
add_custom_target(_niryo_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_msgs" "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/AdvertiseShutdown.srv" ""
)

get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/GetBool.srv" NAME_WE)
add_custom_target(_niryo_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_msgs" "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/GetBool.srv" ""
)

get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/GetInt.srv" NAME_WE)
add_custom_target(_niryo_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_msgs" "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/GetInt.srv" ""
)

get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/GetNameDescriptionList.srv" NAME_WE)
add_custom_target(_niryo_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_msgs" "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/GetNameDescriptionList.srv" ""
)

get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/GetString.srv" NAME_WE)
add_custom_target(_niryo_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_msgs" "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/GetString.srv" ""
)

get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/GetStringList.srv" NAME_WE)
add_custom_target(_niryo_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_msgs" "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/GetStringList.srv" ""
)

get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/Ping.srv" NAME_WE)
add_custom_target(_niryo_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_msgs" "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/Ping.srv" ""
)

get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/SetBool.srv" NAME_WE)
add_custom_target(_niryo_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_msgs" "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/SetBool.srv" ""
)

get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/SetFloat.srv" NAME_WE)
add_custom_target(_niryo_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_msgs" "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/SetFloat.srv" ""
)

get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/SetInt.srv" NAME_WE)
add_custom_target(_niryo_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_msgs" "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/SetInt.srv" ""
)

get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/SetString.srv" NAME_WE)
add_custom_target(_niryo_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_msgs" "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/SetString.srv" ""
)

get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/Trigger.srv" NAME_WE)
add_custom_target(_niryo_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_msgs" "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/Trigger.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/BusState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_msgs
)
_generate_msg_cpp(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/CommandStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_msgs
)
_generate_msg_cpp(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/HardwareStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_msgs
)
_generate_msg_cpp(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/MotorHeader.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_msgs
)
_generate_msg_cpp(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/ObjectPose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_msgs
)
_generate_msg_cpp(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/RPY.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_msgs
)
_generate_msg_cpp(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/RobotState.msg"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/RPY.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_msgs
)
_generate_msg_cpp(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/SoftwareVersion.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_msgs
)

### Generating Services
_generate_srv_cpp(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/AdvertiseShutdown.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_msgs
)
_generate_srv_cpp(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/GetBool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_msgs
)
_generate_srv_cpp(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/GetInt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_msgs
)
_generate_srv_cpp(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/GetNameDescriptionList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_msgs
)
_generate_srv_cpp(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/GetString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_msgs
)
_generate_srv_cpp(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/GetStringList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_msgs
)
_generate_srv_cpp(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/Ping.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_msgs
)
_generate_srv_cpp(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/SetBool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_msgs
)
_generate_srv_cpp(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/SetFloat.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_msgs
)
_generate_srv_cpp(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/SetInt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_msgs
)
_generate_srv_cpp(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/SetString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_msgs
)
_generate_srv_cpp(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/Trigger.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_msgs
)

### Generating Module File
_generate_module_cpp(niryo_robot_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(niryo_robot_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(niryo_robot_msgs_generate_messages niryo_robot_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/BusState.msg" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_cpp _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/CommandStatus.msg" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_cpp _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/HardwareStatus.msg" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_cpp _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/MotorHeader.msg" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_cpp _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/ObjectPose.msg" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_cpp _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/RPY.msg" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_cpp _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/RobotState.msg" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_cpp _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/SoftwareVersion.msg" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_cpp _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/AdvertiseShutdown.srv" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_cpp _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/GetBool.srv" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_cpp _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/GetInt.srv" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_cpp _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/GetNameDescriptionList.srv" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_cpp _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/GetString.srv" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_cpp _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/GetStringList.srv" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_cpp _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/Ping.srv" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_cpp _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/SetBool.srv" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_cpp _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/SetFloat.srv" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_cpp _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/SetInt.srv" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_cpp _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/SetString.srv" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_cpp _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/Trigger.srv" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_cpp _niryo_robot_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(niryo_robot_msgs_gencpp)
add_dependencies(niryo_robot_msgs_gencpp niryo_robot_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS niryo_robot_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/BusState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_msgs
)
_generate_msg_eus(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/CommandStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_msgs
)
_generate_msg_eus(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/HardwareStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_msgs
)
_generate_msg_eus(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/MotorHeader.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_msgs
)
_generate_msg_eus(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/ObjectPose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_msgs
)
_generate_msg_eus(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/RPY.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_msgs
)
_generate_msg_eus(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/RobotState.msg"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/RPY.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_msgs
)
_generate_msg_eus(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/SoftwareVersion.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_msgs
)

### Generating Services
_generate_srv_eus(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/AdvertiseShutdown.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_msgs
)
_generate_srv_eus(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/GetBool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_msgs
)
_generate_srv_eus(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/GetInt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_msgs
)
_generate_srv_eus(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/GetNameDescriptionList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_msgs
)
_generate_srv_eus(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/GetString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_msgs
)
_generate_srv_eus(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/GetStringList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_msgs
)
_generate_srv_eus(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/Ping.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_msgs
)
_generate_srv_eus(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/SetBool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_msgs
)
_generate_srv_eus(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/SetFloat.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_msgs
)
_generate_srv_eus(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/SetInt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_msgs
)
_generate_srv_eus(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/SetString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_msgs
)
_generate_srv_eus(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/Trigger.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_msgs
)

### Generating Module File
_generate_module_eus(niryo_robot_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(niryo_robot_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(niryo_robot_msgs_generate_messages niryo_robot_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/BusState.msg" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_eus _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/CommandStatus.msg" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_eus _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/HardwareStatus.msg" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_eus _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/MotorHeader.msg" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_eus _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/ObjectPose.msg" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_eus _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/RPY.msg" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_eus _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/RobotState.msg" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_eus _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/SoftwareVersion.msg" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_eus _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/AdvertiseShutdown.srv" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_eus _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/GetBool.srv" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_eus _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/GetInt.srv" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_eus _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/GetNameDescriptionList.srv" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_eus _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/GetString.srv" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_eus _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/GetStringList.srv" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_eus _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/Ping.srv" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_eus _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/SetBool.srv" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_eus _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/SetFloat.srv" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_eus _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/SetInt.srv" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_eus _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/SetString.srv" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_eus _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/Trigger.srv" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_eus _niryo_robot_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(niryo_robot_msgs_geneus)
add_dependencies(niryo_robot_msgs_geneus niryo_robot_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS niryo_robot_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/BusState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_msgs
)
_generate_msg_lisp(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/CommandStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_msgs
)
_generate_msg_lisp(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/HardwareStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_msgs
)
_generate_msg_lisp(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/MotorHeader.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_msgs
)
_generate_msg_lisp(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/ObjectPose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_msgs
)
_generate_msg_lisp(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/RPY.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_msgs
)
_generate_msg_lisp(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/RobotState.msg"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/RPY.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_msgs
)
_generate_msg_lisp(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/SoftwareVersion.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_msgs
)

### Generating Services
_generate_srv_lisp(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/AdvertiseShutdown.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_msgs
)
_generate_srv_lisp(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/GetBool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_msgs
)
_generate_srv_lisp(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/GetInt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_msgs
)
_generate_srv_lisp(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/GetNameDescriptionList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_msgs
)
_generate_srv_lisp(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/GetString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_msgs
)
_generate_srv_lisp(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/GetStringList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_msgs
)
_generate_srv_lisp(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/Ping.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_msgs
)
_generate_srv_lisp(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/SetBool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_msgs
)
_generate_srv_lisp(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/SetFloat.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_msgs
)
_generate_srv_lisp(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/SetInt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_msgs
)
_generate_srv_lisp(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/SetString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_msgs
)
_generate_srv_lisp(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/Trigger.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_msgs
)

### Generating Module File
_generate_module_lisp(niryo_robot_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(niryo_robot_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(niryo_robot_msgs_generate_messages niryo_robot_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/BusState.msg" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_lisp _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/CommandStatus.msg" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_lisp _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/HardwareStatus.msg" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_lisp _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/MotorHeader.msg" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_lisp _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/ObjectPose.msg" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_lisp _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/RPY.msg" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_lisp _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/RobotState.msg" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_lisp _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/SoftwareVersion.msg" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_lisp _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/AdvertiseShutdown.srv" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_lisp _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/GetBool.srv" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_lisp _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/GetInt.srv" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_lisp _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/GetNameDescriptionList.srv" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_lisp _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/GetString.srv" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_lisp _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/GetStringList.srv" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_lisp _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/Ping.srv" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_lisp _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/SetBool.srv" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_lisp _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/SetFloat.srv" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_lisp _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/SetInt.srv" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_lisp _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/SetString.srv" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_lisp _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/Trigger.srv" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_lisp _niryo_robot_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(niryo_robot_msgs_genlisp)
add_dependencies(niryo_robot_msgs_genlisp niryo_robot_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS niryo_robot_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/BusState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_msgs
)
_generate_msg_nodejs(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/CommandStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_msgs
)
_generate_msg_nodejs(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/HardwareStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_msgs
)
_generate_msg_nodejs(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/MotorHeader.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_msgs
)
_generate_msg_nodejs(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/ObjectPose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_msgs
)
_generate_msg_nodejs(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/RPY.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_msgs
)
_generate_msg_nodejs(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/RobotState.msg"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/RPY.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_msgs
)
_generate_msg_nodejs(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/SoftwareVersion.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_msgs
)

### Generating Services
_generate_srv_nodejs(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/AdvertiseShutdown.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_msgs
)
_generate_srv_nodejs(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/GetBool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_msgs
)
_generate_srv_nodejs(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/GetInt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_msgs
)
_generate_srv_nodejs(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/GetNameDescriptionList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_msgs
)
_generate_srv_nodejs(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/GetString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_msgs
)
_generate_srv_nodejs(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/GetStringList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_msgs
)
_generate_srv_nodejs(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/Ping.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_msgs
)
_generate_srv_nodejs(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/SetBool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_msgs
)
_generate_srv_nodejs(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/SetFloat.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_msgs
)
_generate_srv_nodejs(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/SetInt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_msgs
)
_generate_srv_nodejs(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/SetString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_msgs
)
_generate_srv_nodejs(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/Trigger.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_msgs
)

### Generating Module File
_generate_module_nodejs(niryo_robot_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(niryo_robot_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(niryo_robot_msgs_generate_messages niryo_robot_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/BusState.msg" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_nodejs _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/CommandStatus.msg" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_nodejs _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/HardwareStatus.msg" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_nodejs _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/MotorHeader.msg" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_nodejs _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/ObjectPose.msg" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_nodejs _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/RPY.msg" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_nodejs _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/RobotState.msg" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_nodejs _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/SoftwareVersion.msg" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_nodejs _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/AdvertiseShutdown.srv" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_nodejs _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/GetBool.srv" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_nodejs _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/GetInt.srv" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_nodejs _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/GetNameDescriptionList.srv" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_nodejs _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/GetString.srv" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_nodejs _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/GetStringList.srv" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_nodejs _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/Ping.srv" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_nodejs _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/SetBool.srv" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_nodejs _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/SetFloat.srv" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_nodejs _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/SetInt.srv" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_nodejs _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/SetString.srv" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_nodejs _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/Trigger.srv" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_nodejs _niryo_robot_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(niryo_robot_msgs_gennodejs)
add_dependencies(niryo_robot_msgs_gennodejs niryo_robot_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS niryo_robot_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/BusState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_msgs
)
_generate_msg_py(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/CommandStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_msgs
)
_generate_msg_py(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/HardwareStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_msgs
)
_generate_msg_py(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/MotorHeader.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_msgs
)
_generate_msg_py(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/ObjectPose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_msgs
)
_generate_msg_py(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/RPY.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_msgs
)
_generate_msg_py(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/RobotState.msg"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/RPY.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_msgs
)
_generate_msg_py(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/SoftwareVersion.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_msgs
)

### Generating Services
_generate_srv_py(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/AdvertiseShutdown.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_msgs
)
_generate_srv_py(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/GetBool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_msgs
)
_generate_srv_py(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/GetInt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_msgs
)
_generate_srv_py(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/GetNameDescriptionList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_msgs
)
_generate_srv_py(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/GetString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_msgs
)
_generate_srv_py(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/GetStringList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_msgs
)
_generate_srv_py(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/Ping.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_msgs
)
_generate_srv_py(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/SetBool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_msgs
)
_generate_srv_py(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/SetFloat.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_msgs
)
_generate_srv_py(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/SetInt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_msgs
)
_generate_srv_py(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/SetString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_msgs
)
_generate_srv_py(niryo_robot_msgs
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/Trigger.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_msgs
)

### Generating Module File
_generate_module_py(niryo_robot_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(niryo_robot_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(niryo_robot_msgs_generate_messages niryo_robot_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/BusState.msg" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_py _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/CommandStatus.msg" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_py _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/HardwareStatus.msg" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_py _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/MotorHeader.msg" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_py _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/ObjectPose.msg" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_py _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/RPY.msg" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_py _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/RobotState.msg" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_py _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/SoftwareVersion.msg" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_py _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/AdvertiseShutdown.srv" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_py _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/GetBool.srv" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_py _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/GetInt.srv" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_py _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/GetNameDescriptionList.srv" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_py _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/GetString.srv" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_py _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/GetStringList.srv" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_py _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/Ping.srv" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_py _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/SetBool.srv" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_py _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/SetFloat.srv" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_py _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/SetInt.srv" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_py _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/SetString.srv" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_py _niryo_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/srv/Trigger.srv" NAME_WE)
add_dependencies(niryo_robot_msgs_generate_messages_py _niryo_robot_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(niryo_robot_msgs_genpy)
add_dependencies(niryo_robot_msgs_genpy niryo_robot_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS niryo_robot_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(niryo_robot_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(niryo_robot_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(niryo_robot_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(niryo_robot_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(niryo_robot_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(niryo_robot_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(niryo_robot_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(niryo_robot_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(niryo_robot_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(niryo_robot_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
