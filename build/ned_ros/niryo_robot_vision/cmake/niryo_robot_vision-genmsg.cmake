# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "niryo_robot_vision: 1 messages, 6 services")

set(MSG_I_FLAGS "-Iniryo_robot_vision:/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/msg;-Iniryo_robot_msgs:/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(niryo_robot_vision_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/msg/ImageParameters.msg" NAME_WE)
add_custom_target(_niryo_robot_vision_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_vision" "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/msg/ImageParameters.msg" ""
)

get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/DebugColorDetection.srv" NAME_WE)
add_custom_target(_niryo_robot_vision_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_vision" "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/DebugColorDetection.srv" "sensor_msgs/CompressedImage:std_msgs/Header"
)

get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/DebugMarkers.srv" NAME_WE)
add_custom_target(_niryo_robot_vision_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_vision" "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/DebugMarkers.srv" "sensor_msgs/CompressedImage:std_msgs/Header"
)

get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/ObjDetection.srv" NAME_WE)
add_custom_target(_niryo_robot_vision_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_vision" "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/ObjDetection.srv" "sensor_msgs/CompressedImage:std_msgs/Header:niryo_robot_msgs/ObjectPose"
)

get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/SetImageParameter.srv" NAME_WE)
add_custom_target(_niryo_robot_vision_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_vision" "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/SetImageParameter.srv" ""
)

get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/TakePicture.srv" NAME_WE)
add_custom_target(_niryo_robot_vision_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_vision" "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/TakePicture.srv" ""
)

get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/Visualization.srv" NAME_WE)
add_custom_target(_niryo_robot_vision_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_vision" "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/Visualization.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(niryo_robot_vision
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/msg/ImageParameters.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_vision
)

### Generating Services
_generate_srv_cpp(niryo_robot_vision
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/DebugColorDetection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_vision
)
_generate_srv_cpp(niryo_robot_vision
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/DebugMarkers.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_vision
)
_generate_srv_cpp(niryo_robot_vision
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/ObjDetection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/ObjectPose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_vision
)
_generate_srv_cpp(niryo_robot_vision
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/SetImageParameter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_vision
)
_generate_srv_cpp(niryo_robot_vision
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/TakePicture.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_vision
)
_generate_srv_cpp(niryo_robot_vision
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/Visualization.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_vision
)

### Generating Module File
_generate_module_cpp(niryo_robot_vision
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_vision
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(niryo_robot_vision_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(niryo_robot_vision_generate_messages niryo_robot_vision_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/msg/ImageParameters.msg" NAME_WE)
add_dependencies(niryo_robot_vision_generate_messages_cpp _niryo_robot_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/DebugColorDetection.srv" NAME_WE)
add_dependencies(niryo_robot_vision_generate_messages_cpp _niryo_robot_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/DebugMarkers.srv" NAME_WE)
add_dependencies(niryo_robot_vision_generate_messages_cpp _niryo_robot_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/ObjDetection.srv" NAME_WE)
add_dependencies(niryo_robot_vision_generate_messages_cpp _niryo_robot_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/SetImageParameter.srv" NAME_WE)
add_dependencies(niryo_robot_vision_generate_messages_cpp _niryo_robot_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/TakePicture.srv" NAME_WE)
add_dependencies(niryo_robot_vision_generate_messages_cpp _niryo_robot_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/Visualization.srv" NAME_WE)
add_dependencies(niryo_robot_vision_generate_messages_cpp _niryo_robot_vision_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(niryo_robot_vision_gencpp)
add_dependencies(niryo_robot_vision_gencpp niryo_robot_vision_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS niryo_robot_vision_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(niryo_robot_vision
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/msg/ImageParameters.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_vision
)

### Generating Services
_generate_srv_eus(niryo_robot_vision
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/DebugColorDetection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_vision
)
_generate_srv_eus(niryo_robot_vision
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/DebugMarkers.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_vision
)
_generate_srv_eus(niryo_robot_vision
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/ObjDetection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/ObjectPose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_vision
)
_generate_srv_eus(niryo_robot_vision
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/SetImageParameter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_vision
)
_generate_srv_eus(niryo_robot_vision
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/TakePicture.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_vision
)
_generate_srv_eus(niryo_robot_vision
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/Visualization.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_vision
)

### Generating Module File
_generate_module_eus(niryo_robot_vision
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_vision
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(niryo_robot_vision_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(niryo_robot_vision_generate_messages niryo_robot_vision_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/msg/ImageParameters.msg" NAME_WE)
add_dependencies(niryo_robot_vision_generate_messages_eus _niryo_robot_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/DebugColorDetection.srv" NAME_WE)
add_dependencies(niryo_robot_vision_generate_messages_eus _niryo_robot_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/DebugMarkers.srv" NAME_WE)
add_dependencies(niryo_robot_vision_generate_messages_eus _niryo_robot_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/ObjDetection.srv" NAME_WE)
add_dependencies(niryo_robot_vision_generate_messages_eus _niryo_robot_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/SetImageParameter.srv" NAME_WE)
add_dependencies(niryo_robot_vision_generate_messages_eus _niryo_robot_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/TakePicture.srv" NAME_WE)
add_dependencies(niryo_robot_vision_generate_messages_eus _niryo_robot_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/Visualization.srv" NAME_WE)
add_dependencies(niryo_robot_vision_generate_messages_eus _niryo_robot_vision_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(niryo_robot_vision_geneus)
add_dependencies(niryo_robot_vision_geneus niryo_robot_vision_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS niryo_robot_vision_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(niryo_robot_vision
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/msg/ImageParameters.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_vision
)

### Generating Services
_generate_srv_lisp(niryo_robot_vision
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/DebugColorDetection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_vision
)
_generate_srv_lisp(niryo_robot_vision
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/DebugMarkers.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_vision
)
_generate_srv_lisp(niryo_robot_vision
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/ObjDetection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/ObjectPose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_vision
)
_generate_srv_lisp(niryo_robot_vision
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/SetImageParameter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_vision
)
_generate_srv_lisp(niryo_robot_vision
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/TakePicture.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_vision
)
_generate_srv_lisp(niryo_robot_vision
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/Visualization.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_vision
)

### Generating Module File
_generate_module_lisp(niryo_robot_vision
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_vision
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(niryo_robot_vision_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(niryo_robot_vision_generate_messages niryo_robot_vision_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/msg/ImageParameters.msg" NAME_WE)
add_dependencies(niryo_robot_vision_generate_messages_lisp _niryo_robot_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/DebugColorDetection.srv" NAME_WE)
add_dependencies(niryo_robot_vision_generate_messages_lisp _niryo_robot_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/DebugMarkers.srv" NAME_WE)
add_dependencies(niryo_robot_vision_generate_messages_lisp _niryo_robot_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/ObjDetection.srv" NAME_WE)
add_dependencies(niryo_robot_vision_generate_messages_lisp _niryo_robot_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/SetImageParameter.srv" NAME_WE)
add_dependencies(niryo_robot_vision_generate_messages_lisp _niryo_robot_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/TakePicture.srv" NAME_WE)
add_dependencies(niryo_robot_vision_generate_messages_lisp _niryo_robot_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/Visualization.srv" NAME_WE)
add_dependencies(niryo_robot_vision_generate_messages_lisp _niryo_robot_vision_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(niryo_robot_vision_genlisp)
add_dependencies(niryo_robot_vision_genlisp niryo_robot_vision_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS niryo_robot_vision_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(niryo_robot_vision
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/msg/ImageParameters.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_vision
)

### Generating Services
_generate_srv_nodejs(niryo_robot_vision
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/DebugColorDetection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_vision
)
_generate_srv_nodejs(niryo_robot_vision
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/DebugMarkers.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_vision
)
_generate_srv_nodejs(niryo_robot_vision
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/ObjDetection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/ObjectPose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_vision
)
_generate_srv_nodejs(niryo_robot_vision
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/SetImageParameter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_vision
)
_generate_srv_nodejs(niryo_robot_vision
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/TakePicture.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_vision
)
_generate_srv_nodejs(niryo_robot_vision
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/Visualization.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_vision
)

### Generating Module File
_generate_module_nodejs(niryo_robot_vision
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_vision
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(niryo_robot_vision_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(niryo_robot_vision_generate_messages niryo_robot_vision_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/msg/ImageParameters.msg" NAME_WE)
add_dependencies(niryo_robot_vision_generate_messages_nodejs _niryo_robot_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/DebugColorDetection.srv" NAME_WE)
add_dependencies(niryo_robot_vision_generate_messages_nodejs _niryo_robot_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/DebugMarkers.srv" NAME_WE)
add_dependencies(niryo_robot_vision_generate_messages_nodejs _niryo_robot_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/ObjDetection.srv" NAME_WE)
add_dependencies(niryo_robot_vision_generate_messages_nodejs _niryo_robot_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/SetImageParameter.srv" NAME_WE)
add_dependencies(niryo_robot_vision_generate_messages_nodejs _niryo_robot_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/TakePicture.srv" NAME_WE)
add_dependencies(niryo_robot_vision_generate_messages_nodejs _niryo_robot_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/Visualization.srv" NAME_WE)
add_dependencies(niryo_robot_vision_generate_messages_nodejs _niryo_robot_vision_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(niryo_robot_vision_gennodejs)
add_dependencies(niryo_robot_vision_gennodejs niryo_robot_vision_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS niryo_robot_vision_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(niryo_robot_vision
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/msg/ImageParameters.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_vision
)

### Generating Services
_generate_srv_py(niryo_robot_vision
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/DebugColorDetection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_vision
)
_generate_srv_py(niryo_robot_vision
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/DebugMarkers.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_vision
)
_generate_srv_py(niryo_robot_vision
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/ObjDetection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/scps/catkin_ws/src/ned_ros/niryo_robot_msgs/msg/ObjectPose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_vision
)
_generate_srv_py(niryo_robot_vision
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/SetImageParameter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_vision
)
_generate_srv_py(niryo_robot_vision
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/TakePicture.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_vision
)
_generate_srv_py(niryo_robot_vision
  "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/Visualization.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_vision
)

### Generating Module File
_generate_module_py(niryo_robot_vision
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_vision
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(niryo_robot_vision_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(niryo_robot_vision_generate_messages niryo_robot_vision_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/msg/ImageParameters.msg" NAME_WE)
add_dependencies(niryo_robot_vision_generate_messages_py _niryo_robot_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/DebugColorDetection.srv" NAME_WE)
add_dependencies(niryo_robot_vision_generate_messages_py _niryo_robot_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/DebugMarkers.srv" NAME_WE)
add_dependencies(niryo_robot_vision_generate_messages_py _niryo_robot_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/ObjDetection.srv" NAME_WE)
add_dependencies(niryo_robot_vision_generate_messages_py _niryo_robot_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/SetImageParameter.srv" NAME_WE)
add_dependencies(niryo_robot_vision_generate_messages_py _niryo_robot_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/TakePicture.srv" NAME_WE)
add_dependencies(niryo_robot_vision_generate_messages_py _niryo_robot_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/scps/catkin_ws/src/ned_ros/niryo_robot_vision/srv/Visualization.srv" NAME_WE)
add_dependencies(niryo_robot_vision_generate_messages_py _niryo_robot_vision_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(niryo_robot_vision_genpy)
add_dependencies(niryo_robot_vision_genpy niryo_robot_vision_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS niryo_robot_vision_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_vision)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_vision
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET niryo_robot_msgs_generate_messages_cpp)
  add_dependencies(niryo_robot_vision_generate_messages_cpp niryo_robot_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(niryo_robot_vision_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_vision)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_vision
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET niryo_robot_msgs_generate_messages_eus)
  add_dependencies(niryo_robot_vision_generate_messages_eus niryo_robot_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(niryo_robot_vision_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_vision)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_vision
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET niryo_robot_msgs_generate_messages_lisp)
  add_dependencies(niryo_robot_vision_generate_messages_lisp niryo_robot_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(niryo_robot_vision_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_vision)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_vision
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET niryo_robot_msgs_generate_messages_nodejs)
  add_dependencies(niryo_robot_vision_generate_messages_nodejs niryo_robot_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(niryo_robot_vision_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_vision)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_vision\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_vision
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  string(REGEX REPLACE "([][+.*()^])" "\\\\\\1" ESCAPED_PATH "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_vision")
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_vision
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${ESCAPED_PATH}/.+/__init__.pyc?$"
  )
endif()
if(TARGET niryo_robot_msgs_generate_messages_py)
  add_dependencies(niryo_robot_vision_generate_messages_py niryo_robot_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(niryo_robot_vision_generate_messages_py sensor_msgs_generate_messages_py)
endif()
