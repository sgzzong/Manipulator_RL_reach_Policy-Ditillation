# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "common;mcp_can_rpi;message_runtime;niryo_robot_msgs;roscpp;std_msgs".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lcan_driver".split(';') if "-lcan_driver" != "" else []
PROJECT_NAME = "can_driver"
PROJECT_SPACE_DIR = "/home/scps/catkin_ws/install"
PROJECT_VERSION = "4.1.0"
