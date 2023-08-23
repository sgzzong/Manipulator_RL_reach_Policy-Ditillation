# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "actionlib;can_driver;common;controller_manager;hardware_interface;niryo_robot_msgs;roscpp;ttl_driver".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-ljoints_interface;-ljoints_interface_core".split(';') if "-ljoints_interface;-ljoints_interface_core" != "" else []
PROJECT_NAME = "joints_interface"
PROJECT_SPACE_DIR = "/home/scps/catkin_ws/install"
PROJECT_VERSION = "4.1.0"
