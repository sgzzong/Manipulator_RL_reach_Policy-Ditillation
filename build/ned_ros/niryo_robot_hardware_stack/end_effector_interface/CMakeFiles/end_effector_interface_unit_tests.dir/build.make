# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/scps/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/scps/catkin_ws/build

# Include any dependencies generated for this target.
include ned_ros/niryo_robot_hardware_stack/end_effector_interface/CMakeFiles/end_effector_interface_unit_tests.dir/depend.make

# Include the progress variables for this target.
include ned_ros/niryo_robot_hardware_stack/end_effector_interface/CMakeFiles/end_effector_interface_unit_tests.dir/progress.make

# Include the compile flags for this target's objects.
include ned_ros/niryo_robot_hardware_stack/end_effector_interface/CMakeFiles/end_effector_interface_unit_tests.dir/flags.make

ned_ros/niryo_robot_hardware_stack/end_effector_interface/CMakeFiles/end_effector_interface_unit_tests.dir/test/unit_tests_fake.cpp.o: ned_ros/niryo_robot_hardware_stack/end_effector_interface/CMakeFiles/end_effector_interface_unit_tests.dir/flags.make
ned_ros/niryo_robot_hardware_stack/end_effector_interface/CMakeFiles/end_effector_interface_unit_tests.dir/test/unit_tests_fake.cpp.o: /home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/end_effector_interface/test/unit_tests_fake.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/scps/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object ned_ros/niryo_robot_hardware_stack/end_effector_interface/CMakeFiles/end_effector_interface_unit_tests.dir/test/unit_tests_fake.cpp.o"
	cd /home/scps/catkin_ws/build/ned_ros/niryo_robot_hardware_stack/end_effector_interface && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/end_effector_interface_unit_tests.dir/test/unit_tests_fake.cpp.o -c /home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/end_effector_interface/test/unit_tests_fake.cpp

ned_ros/niryo_robot_hardware_stack/end_effector_interface/CMakeFiles/end_effector_interface_unit_tests.dir/test/unit_tests_fake.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/end_effector_interface_unit_tests.dir/test/unit_tests_fake.cpp.i"
	cd /home/scps/catkin_ws/build/ned_ros/niryo_robot_hardware_stack/end_effector_interface && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/end_effector_interface/test/unit_tests_fake.cpp > CMakeFiles/end_effector_interface_unit_tests.dir/test/unit_tests_fake.cpp.i

ned_ros/niryo_robot_hardware_stack/end_effector_interface/CMakeFiles/end_effector_interface_unit_tests.dir/test/unit_tests_fake.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/end_effector_interface_unit_tests.dir/test/unit_tests_fake.cpp.s"
	cd /home/scps/catkin_ws/build/ned_ros/niryo_robot_hardware_stack/end_effector_interface && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/end_effector_interface/test/unit_tests_fake.cpp -o CMakeFiles/end_effector_interface_unit_tests.dir/test/unit_tests_fake.cpp.s

# Object files for target end_effector_interface_unit_tests
end_effector_interface_unit_tests_OBJECTS = \
"CMakeFiles/end_effector_interface_unit_tests.dir/test/unit_tests_fake.cpp.o"

# External object files for target end_effector_interface_unit_tests
end_effector_interface_unit_tests_EXTERNAL_OBJECTS =

/home/scps/catkin_ws/devel/lib/end_effector_interface/end_effector_interface_unit_tests: ned_ros/niryo_robot_hardware_stack/end_effector_interface/CMakeFiles/end_effector_interface_unit_tests.dir/test/unit_tests_fake.cpp.o
/home/scps/catkin_ws/devel/lib/end_effector_interface/end_effector_interface_unit_tests: ned_ros/niryo_robot_hardware_stack/end_effector_interface/CMakeFiles/end_effector_interface_unit_tests.dir/build.make
/home/scps/catkin_ws/devel/lib/end_effector_interface/end_effector_interface_unit_tests: gtest/lib/libgtest.so
/home/scps/catkin_ws/devel/lib/end_effector_interface/end_effector_interface_unit_tests: /home/scps/catkin_ws/devel/lib/libend_effector_interface.so
/home/scps/catkin_ws/devel/lib/end_effector_interface/end_effector_interface_unit_tests: /home/scps/catkin_ws/devel/lib/libttl_driver.so
/home/scps/catkin_ws/devel/lib/end_effector_interface/end_effector_interface_unit_tests: /home/scps/catkin_ws/devel/lib/libcommon.so
/home/scps/catkin_ws/devel/lib/end_effector_interface/end_effector_interface_unit_tests: /home/scps/catkin_ws/devel/lib/libdynamixel_sdk.so
/home/scps/catkin_ws/devel/lib/end_effector_interface/end_effector_interface_unit_tests: /home/scps/catkin_ws/devel/lib/libserial.so
/home/scps/catkin_ws/devel/lib/end_effector_interface/end_effector_interface_unit_tests: /opt/ros/noetic/lib/libroscpp.so
/home/scps/catkin_ws/devel/lib/end_effector_interface/end_effector_interface_unit_tests: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/scps/catkin_ws/devel/lib/end_effector_interface/end_effector_interface_unit_tests: /usr/lib/x86_64-linux-gnu/libboost_chrono.so.1.71.0
/home/scps/catkin_ws/devel/lib/end_effector_interface/end_effector_interface_unit_tests: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
/home/scps/catkin_ws/devel/lib/end_effector_interface/end_effector_interface_unit_tests: /opt/ros/noetic/lib/librosconsole.so
/home/scps/catkin_ws/devel/lib/end_effector_interface/end_effector_interface_unit_tests: /opt/ros/noetic/lib/librosconsole_log4cxx.so
/home/scps/catkin_ws/devel/lib/end_effector_interface/end_effector_interface_unit_tests: /opt/ros/noetic/lib/librosconsole_backend_interface.so
/home/scps/catkin_ws/devel/lib/end_effector_interface/end_effector_interface_unit_tests: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/scps/catkin_ws/devel/lib/end_effector_interface/end_effector_interface_unit_tests: /usr/lib/x86_64-linux-gnu/libboost_regex.so.1.71.0
/home/scps/catkin_ws/devel/lib/end_effector_interface/end_effector_interface_unit_tests: /opt/ros/noetic/lib/libxmlrpcpp.so
/home/scps/catkin_ws/devel/lib/end_effector_interface/end_effector_interface_unit_tests: /opt/ros/noetic/lib/libroscpp_serialization.so
/home/scps/catkin_ws/devel/lib/end_effector_interface/end_effector_interface_unit_tests: /opt/ros/noetic/lib/librostime.so
/home/scps/catkin_ws/devel/lib/end_effector_interface/end_effector_interface_unit_tests: /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0
/home/scps/catkin_ws/devel/lib/end_effector_interface/end_effector_interface_unit_tests: /opt/ros/noetic/lib/libcpp_common.so
/home/scps/catkin_ws/devel/lib/end_effector_interface/end_effector_interface_unit_tests: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
/home/scps/catkin_ws/devel/lib/end_effector_interface/end_effector_interface_unit_tests: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
/home/scps/catkin_ws/devel/lib/end_effector_interface/end_effector_interface_unit_tests: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/scps/catkin_ws/devel/lib/end_effector_interface/end_effector_interface_unit_tests: ned_ros/niryo_robot_hardware_stack/end_effector_interface/CMakeFiles/end_effector_interface_unit_tests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/scps/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/scps/catkin_ws/devel/lib/end_effector_interface/end_effector_interface_unit_tests"
	cd /home/scps/catkin_ws/build/ned_ros/niryo_robot_hardware_stack/end_effector_interface && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/end_effector_interface_unit_tests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
ned_ros/niryo_robot_hardware_stack/end_effector_interface/CMakeFiles/end_effector_interface_unit_tests.dir/build: /home/scps/catkin_ws/devel/lib/end_effector_interface/end_effector_interface_unit_tests

.PHONY : ned_ros/niryo_robot_hardware_stack/end_effector_interface/CMakeFiles/end_effector_interface_unit_tests.dir/build

ned_ros/niryo_robot_hardware_stack/end_effector_interface/CMakeFiles/end_effector_interface_unit_tests.dir/clean:
	cd /home/scps/catkin_ws/build/ned_ros/niryo_robot_hardware_stack/end_effector_interface && $(CMAKE_COMMAND) -P CMakeFiles/end_effector_interface_unit_tests.dir/cmake_clean.cmake
.PHONY : ned_ros/niryo_robot_hardware_stack/end_effector_interface/CMakeFiles/end_effector_interface_unit_tests.dir/clean

ned_ros/niryo_robot_hardware_stack/end_effector_interface/CMakeFiles/end_effector_interface_unit_tests.dir/depend:
	cd /home/scps/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/scps/catkin_ws/src /home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/end_effector_interface /home/scps/catkin_ws/build /home/scps/catkin_ws/build/ned_ros/niryo_robot_hardware_stack/end_effector_interface /home/scps/catkin_ws/build/ned_ros/niryo_robot_hardware_stack/end_effector_interface/CMakeFiles/end_effector_interface_unit_tests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ned_ros/niryo_robot_hardware_stack/end_effector_interface/CMakeFiles/end_effector_interface_unit_tests.dir/depend
