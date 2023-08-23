# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "niryo_robot_tools_commander: 9 messages, 1 services")

set(MSG_I_FLAGS "-Iniryo_robot_tools_commander:/home/scps/catkin_ws/src/ned_ros/niryo_robot_tools_commander/msg;-Iniryo_robot_tools_commander:/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Iniryo_robot_msgs:/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(niryo_robot_tools_commander_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_tools_commander/msg/TCP.msg" NAME_WE)
add_custom_target(_niryo_robot_tools_commander_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_tools_commander" "/home/scps/catkin_ws/src/ned_ros/niryo_robot_tools_commander/msg/TCP.msg" "niryo_robot_msgs/RPY:geometry_msgs/Point:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_tools_commander/msg/ToolCommand.msg" NAME_WE)
add_custom_target(_niryo_robot_tools_commander_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_tools_commander" "/home/scps/catkin_ws/src/ned_ros/niryo_robot_tools_commander/msg/ToolCommand.msg" ""
)

get_filename_component(_filename "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolAction.msg" NAME_WE)
add_custom_target(_niryo_robot_tools_commander_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_tools_commander" "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolAction.msg" "niryo_robot_tools_commander/ToolFeedback:niryo_robot_tools_commander/ToolActionGoal:niryo_robot_tools_commander/ToolCommand:std_msgs/Header:niryo_robot_tools_commander/ToolActionFeedback:niryo_robot_tools_commander/ToolActionResult:niryo_robot_tools_commander/ToolGoal:actionlib_msgs/GoalStatus:niryo_robot_tools_commander/ToolResult:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionGoal.msg" NAME_WE)
add_custom_target(_niryo_robot_tools_commander_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_tools_commander" "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionGoal.msg" "niryo_robot_tools_commander/ToolGoal:std_msgs/Header:niryo_robot_tools_commander/ToolCommand:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionResult.msg" NAME_WE)
add_custom_target(_niryo_robot_tools_commander_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_tools_commander" "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionResult.msg" "niryo_robot_tools_commander/ToolResult:std_msgs/Header:actionlib_msgs/GoalStatus:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionFeedback.msg" NAME_WE)
add_custom_target(_niryo_robot_tools_commander_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_tools_commander" "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionFeedback.msg" "std_msgs/Header:niryo_robot_tools_commander/ToolFeedback:actionlib_msgs/GoalStatus:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolGoal.msg" NAME_WE)
add_custom_target(_niryo_robot_tools_commander_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_tools_commander" "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolGoal.msg" "niryo_robot_tools_commander/ToolCommand"
)

get_filename_component(_filename "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolResult.msg" NAME_WE)
add_custom_target(_niryo_robot_tools_commander_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_tools_commander" "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolResult.msg" ""
)

get_filename_component(_filename "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolFeedback.msg" NAME_WE)
add_custom_target(_niryo_robot_tools_commander_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_tools_commander" "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolFeedback.msg" ""
)

get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_tools_commander/srv/SetTCP.srv" NAME_WE)
add_custom_target(_niryo_robot_tools_commander_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_tools_commander" "/home/scps/catkin_ws/src/ned_ros/niryo_robot_tools_commander/srv/SetTCP.srv" "niryo_robot_msgs/RPY:geometry_msgs/Point:geometry_msgs/Quaternion"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(niryo_robot_tools_commander
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_tools_commander/msg/TCP.msg"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/RPY.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_tools_commander
)
_generate_msg_cpp(niryo_robot_tools_commander
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_tools_commander/msg/ToolCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_tools_commander
)
_generate_msg_cpp(niryo_robot_tools_commander
  "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolAction.msg"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolFeedback.msg;/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionGoal.msg;/home/scps/catkin_ws/src/ned_ros/niryo_robot_tools_commander/msg/ToolCommand.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionFeedback.msg;/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionResult.msg;/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_tools_commander
)
_generate_msg_cpp(niryo_robot_tools_commander
  "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/scps/catkin_ws/src/ned_ros/niryo_robot_tools_commander/msg/ToolCommand.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_tools_commander
)
_generate_msg_cpp(niryo_robot_tools_commander
  "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_tools_commander
)
_generate_msg_cpp(niryo_robot_tools_commander
  "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_tools_commander
)
_generate_msg_cpp(niryo_robot_tools_commander
  "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_tools_commander/msg/ToolCommand.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_tools_commander
)
_generate_msg_cpp(niryo_robot_tools_commander
  "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_tools_commander
)
_generate_msg_cpp(niryo_robot_tools_commander
  "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_tools_commander
)

### Generating Services
_generate_srv_cpp(niryo_robot_tools_commander
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_tools_commander/srv/SetTCP.srv"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/RPY.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_tools_commander
)

### Generating Module File
_generate_module_cpp(niryo_robot_tools_commander
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_tools_commander
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(niryo_robot_tools_commander_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(niryo_robot_tools_commander_generate_messages niryo_robot_tools_commander_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_tools_commander/msg/TCP.msg" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_cpp _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_tools_commander/msg/ToolCommand.msg" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_cpp _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolAction.msg" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_cpp _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionGoal.msg" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_cpp _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionResult.msg" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_cpp _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionFeedback.msg" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_cpp _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolGoal.msg" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_cpp _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolResult.msg" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_cpp _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolFeedback.msg" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_cpp _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_tools_commander/srv/SetTCP.srv" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_cpp _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(niryo_robot_tools_commander_gencpp)
add_dependencies(niryo_robot_tools_commander_gencpp niryo_robot_tools_commander_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS niryo_robot_tools_commander_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(niryo_robot_tools_commander
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_tools_commander/msg/TCP.msg"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/RPY.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_tools_commander
)
_generate_msg_eus(niryo_robot_tools_commander
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_tools_commander/msg/ToolCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_tools_commander
)
_generate_msg_eus(niryo_robot_tools_commander
  "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolAction.msg"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolFeedback.msg;/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionGoal.msg;/home/scps/catkin_ws/src/ned_ros/niryo_robot_tools_commander/msg/ToolCommand.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionFeedback.msg;/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionResult.msg;/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_tools_commander
)
_generate_msg_eus(niryo_robot_tools_commander
  "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/scps/catkin_ws/src/ned_ros/niryo_robot_tools_commander/msg/ToolCommand.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_tools_commander
)
_generate_msg_eus(niryo_robot_tools_commander
  "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_tools_commander
)
_generate_msg_eus(niryo_robot_tools_commander
  "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_tools_commander
)
_generate_msg_eus(niryo_robot_tools_commander
  "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_tools_commander/msg/ToolCommand.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_tools_commander
)
_generate_msg_eus(niryo_robot_tools_commander
  "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_tools_commander
)
_generate_msg_eus(niryo_robot_tools_commander
  "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_tools_commander
)

### Generating Services
_generate_srv_eus(niryo_robot_tools_commander
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_tools_commander/srv/SetTCP.srv"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/RPY.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_tools_commander
)

### Generating Module File
_generate_module_eus(niryo_robot_tools_commander
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_tools_commander
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(niryo_robot_tools_commander_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(niryo_robot_tools_commander_generate_messages niryo_robot_tools_commander_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_tools_commander/msg/TCP.msg" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_eus _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_tools_commander/msg/ToolCommand.msg" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_eus _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolAction.msg" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_eus _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionGoal.msg" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_eus _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionResult.msg" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_eus _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionFeedback.msg" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_eus _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolGoal.msg" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_eus _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolResult.msg" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_eus _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolFeedback.msg" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_eus _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_tools_commander/srv/SetTCP.srv" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_eus _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(niryo_robot_tools_commander_geneus)
add_dependencies(niryo_robot_tools_commander_geneus niryo_robot_tools_commander_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS niryo_robot_tools_commander_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(niryo_robot_tools_commander
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_tools_commander/msg/TCP.msg"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/RPY.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_tools_commander
)
_generate_msg_lisp(niryo_robot_tools_commander
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_tools_commander/msg/ToolCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_tools_commander
)
_generate_msg_lisp(niryo_robot_tools_commander
  "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolAction.msg"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolFeedback.msg;/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionGoal.msg;/home/scps/catkin_ws/src/ned_ros/niryo_robot_tools_commander/msg/ToolCommand.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionFeedback.msg;/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionResult.msg;/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_tools_commander
)
_generate_msg_lisp(niryo_robot_tools_commander
  "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/scps/catkin_ws/src/ned_ros/niryo_robot_tools_commander/msg/ToolCommand.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_tools_commander
)
_generate_msg_lisp(niryo_robot_tools_commander
  "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_tools_commander
)
_generate_msg_lisp(niryo_robot_tools_commander
  "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_tools_commander
)
_generate_msg_lisp(niryo_robot_tools_commander
  "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_tools_commander/msg/ToolCommand.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_tools_commander
)
_generate_msg_lisp(niryo_robot_tools_commander
  "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_tools_commander
)
_generate_msg_lisp(niryo_robot_tools_commander
  "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_tools_commander
)

### Generating Services
_generate_srv_lisp(niryo_robot_tools_commander
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_tools_commander/srv/SetTCP.srv"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/RPY.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_tools_commander
)

### Generating Module File
_generate_module_lisp(niryo_robot_tools_commander
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_tools_commander
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(niryo_robot_tools_commander_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(niryo_robot_tools_commander_generate_messages niryo_robot_tools_commander_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_tools_commander/msg/TCP.msg" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_lisp _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_tools_commander/msg/ToolCommand.msg" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_lisp _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolAction.msg" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_lisp _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionGoal.msg" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_lisp _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionResult.msg" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_lisp _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionFeedback.msg" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_lisp _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolGoal.msg" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_lisp _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolResult.msg" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_lisp _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolFeedback.msg" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_lisp _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_tools_commander/srv/SetTCP.srv" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_lisp _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(niryo_robot_tools_commander_genlisp)
add_dependencies(niryo_robot_tools_commander_genlisp niryo_robot_tools_commander_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS niryo_robot_tools_commander_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(niryo_robot_tools_commander
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_tools_commander/msg/TCP.msg"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/RPY.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_tools_commander
)
_generate_msg_nodejs(niryo_robot_tools_commander
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_tools_commander/msg/ToolCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_tools_commander
)
_generate_msg_nodejs(niryo_robot_tools_commander
  "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolAction.msg"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolFeedback.msg;/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionGoal.msg;/home/scps/catkin_ws/src/ned_ros/niryo_robot_tools_commander/msg/ToolCommand.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionFeedback.msg;/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionResult.msg;/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_tools_commander
)
_generate_msg_nodejs(niryo_robot_tools_commander
  "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/scps/catkin_ws/src/ned_ros/niryo_robot_tools_commander/msg/ToolCommand.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_tools_commander
)
_generate_msg_nodejs(niryo_robot_tools_commander
  "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_tools_commander
)
_generate_msg_nodejs(niryo_robot_tools_commander
  "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_tools_commander
)
_generate_msg_nodejs(niryo_robot_tools_commander
  "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_tools_commander/msg/ToolCommand.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_tools_commander
)
_generate_msg_nodejs(niryo_robot_tools_commander
  "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_tools_commander
)
_generate_msg_nodejs(niryo_robot_tools_commander
  "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_tools_commander
)

### Generating Services
_generate_srv_nodejs(niryo_robot_tools_commander
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_tools_commander/srv/SetTCP.srv"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/RPY.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_tools_commander
)

### Generating Module File
_generate_module_nodejs(niryo_robot_tools_commander
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_tools_commander
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(niryo_robot_tools_commander_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(niryo_robot_tools_commander_generate_messages niryo_robot_tools_commander_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_tools_commander/msg/TCP.msg" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_nodejs _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_tools_commander/msg/ToolCommand.msg" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_nodejs _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolAction.msg" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_nodejs _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionGoal.msg" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_nodejs _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionResult.msg" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_nodejs _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionFeedback.msg" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_nodejs _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolGoal.msg" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_nodejs _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolResult.msg" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_nodejs _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolFeedback.msg" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_nodejs _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_tools_commander/srv/SetTCP.srv" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_nodejs _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(niryo_robot_tools_commander_gennodejs)
add_dependencies(niryo_robot_tools_commander_gennodejs niryo_robot_tools_commander_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS niryo_robot_tools_commander_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(niryo_robot_tools_commander
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_tools_commander/msg/TCP.msg"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/RPY.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_tools_commander
)
_generate_msg_py(niryo_robot_tools_commander
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_tools_commander/msg/ToolCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_tools_commander
)
_generate_msg_py(niryo_robot_tools_commander
  "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolAction.msg"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolFeedback.msg;/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionGoal.msg;/home/scps/catkin_ws/src/ned_ros/niryo_robot_tools_commander/msg/ToolCommand.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionFeedback.msg;/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionResult.msg;/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_tools_commander
)
_generate_msg_py(niryo_robot_tools_commander
  "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/scps/catkin_ws/src/ned_ros/niryo_robot_tools_commander/msg/ToolCommand.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_tools_commander
)
_generate_msg_py(niryo_robot_tools_commander
  "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_tools_commander
)
_generate_msg_py(niryo_robot_tools_commander
  "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_tools_commander
)
_generate_msg_py(niryo_robot_tools_commander
  "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_tools_commander/msg/ToolCommand.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_tools_commander
)
_generate_msg_py(niryo_robot_tools_commander
  "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_tools_commander
)
_generate_msg_py(niryo_robot_tools_commander
  "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_tools_commander
)

### Generating Services
_generate_srv_py(niryo_robot_tools_commander
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_tools_commander/srv/SetTCP.srv"
  "${MSG_I_FLAGS}"
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/RPY.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_tools_commander
)

### Generating Module File
_generate_module_py(niryo_robot_tools_commander
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_tools_commander
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(niryo_robot_tools_commander_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(niryo_robot_tools_commander_generate_messages niryo_robot_tools_commander_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_tools_commander/msg/TCP.msg" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_py _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_tools_commander/msg/ToolCommand.msg" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_py _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolAction.msg" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_py _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionGoal.msg" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_py _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionResult.msg" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_py _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionFeedback.msg" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_py _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolGoal.msg" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_py _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolResult.msg" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_py _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolFeedback.msg" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_py _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_tools_commander/srv/SetTCP.srv" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_py _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(niryo_robot_tools_commander_genpy)
add_dependencies(niryo_robot_tools_commander_genpy niryo_robot_tools_commander_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS niryo_robot_tools_commander_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_tools_commander)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_tools_commander
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(niryo_robot_tools_commander_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(niryo_robot_tools_commander_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET niryo_robot_msgs_generate_messages_cpp)
  add_dependencies(niryo_robot_tools_commander_generate_messages_cpp niryo_robot_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(niryo_robot_tools_commander_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_tools_commander)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_tools_commander
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(niryo_robot_tools_commander_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(niryo_robot_tools_commander_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET niryo_robot_msgs_generate_messages_eus)
  add_dependencies(niryo_robot_tools_commander_generate_messages_eus niryo_robot_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(niryo_robot_tools_commander_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_tools_commander)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_tools_commander
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(niryo_robot_tools_commander_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(niryo_robot_tools_commander_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET niryo_robot_msgs_generate_messages_lisp)
  add_dependencies(niryo_robot_tools_commander_generate_messages_lisp niryo_robot_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(niryo_robot_tools_commander_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_tools_commander)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_tools_commander
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(niryo_robot_tools_commander_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(niryo_robot_tools_commander_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET niryo_robot_msgs_generate_messages_nodejs)
  add_dependencies(niryo_robot_tools_commander_generate_messages_nodejs niryo_robot_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(niryo_robot_tools_commander_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_tools_commander)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_tools_commander\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_tools_commander
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  string(REGEX REPLACE "([][+.*()^])" "\\\\\\1" ESCAPED_PATH "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_tools_commander")
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_tools_commander
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${ESCAPED_PATH}/.+/__init__.pyc?$"
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(niryo_robot_tools_commander_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(niryo_robot_tools_commander_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET niryo_robot_msgs_generate_messages_py)
  add_dependencies(niryo_robot_tools_commander_generate_messages_py niryo_robot_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(niryo_robot_tools_commander_generate_messages_py std_msgs_generate_messages_py)
endif()
