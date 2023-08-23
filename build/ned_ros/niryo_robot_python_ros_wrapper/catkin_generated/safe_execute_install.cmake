execute_process(COMMAND "/home/scps/catkin_ws/build/ned_ros/niryo_robot_python_ros_wrapper/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/scps/catkin_ws/build/ned_ros/niryo_robot_python_ros_wrapper/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
