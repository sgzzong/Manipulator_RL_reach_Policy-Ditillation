# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "common;conveyor_interface;cpu_interface;end_effector_interface;joints_interface;message_runtime;niryo_robot_msgs;roscpp;tools_interface".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lniryo_robot_hardware_interface".split(';') if "-lniryo_robot_hardware_interface" != "" else []
PROJECT_NAME = "niryo_robot_hardware_interface"
PROJECT_SPACE_DIR = "/home/scps/catkin_ws/install"
PROJECT_VERSION = "4.1.0"
