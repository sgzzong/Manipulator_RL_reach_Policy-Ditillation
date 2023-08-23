# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "common;dynamixel_sdk;message_runtime;niryo_robot_msgs;roscpp;std_msgs".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lttl_driver".split(';') if "-lttl_driver" != "" else []
PROJECT_NAME = "ttl_driver"
PROJECT_SPACE_DIR = "/home/scps/catkin_ws/install"
PROJECT_VERSION = "4.1.0"
