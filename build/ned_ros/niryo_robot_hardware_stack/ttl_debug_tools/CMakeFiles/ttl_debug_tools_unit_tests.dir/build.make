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
include ned_ros/niryo_robot_hardware_stack/ttl_debug_tools/CMakeFiles/ttl_debug_tools_unit_tests.dir/depend.make

# Include the progress variables for this target.
include ned_ros/niryo_robot_hardware_stack/ttl_debug_tools/CMakeFiles/ttl_debug_tools_unit_tests.dir/progress.make

# Include the compile flags for this target's objects.
include ned_ros/niryo_robot_hardware_stack/ttl_debug_tools/CMakeFiles/ttl_debug_tools_unit_tests.dir/flags.make

ned_ros/niryo_robot_hardware_stack/ttl_debug_tools/CMakeFiles/ttl_debug_tools_unit_tests.dir/test/ttl_tools_unit_tests.cpp.o: ned_ros/niryo_robot_hardware_stack/ttl_debug_tools/CMakeFiles/ttl_debug_tools_unit_tests.dir/flags.make
ned_ros/niryo_robot_hardware_stack/ttl_debug_tools/CMakeFiles/ttl_debug_tools_unit_tests.dir/test/ttl_tools_unit_tests.cpp.o: /home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_debug_tools/test/ttl_tools_unit_tests.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/scps/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object ned_ros/niryo_robot_hardware_stack/ttl_debug_tools/CMakeFiles/ttl_debug_tools_unit_tests.dir/test/ttl_tools_unit_tests.cpp.o"
	cd /home/scps/catkin_ws/build/ned_ros/niryo_robot_hardware_stack/ttl_debug_tools && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ttl_debug_tools_unit_tests.dir/test/ttl_tools_unit_tests.cpp.o -c /home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_debug_tools/test/ttl_tools_unit_tests.cpp

ned_ros/niryo_robot_hardware_stack/ttl_debug_tools/CMakeFiles/ttl_debug_tools_unit_tests.dir/test/ttl_tools_unit_tests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ttl_debug_tools_unit_tests.dir/test/ttl_tools_unit_tests.cpp.i"
	cd /home/scps/catkin_ws/build/ned_ros/niryo_robot_hardware_stack/ttl_debug_tools && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_debug_tools/test/ttl_tools_unit_tests.cpp > CMakeFiles/ttl_debug_tools_unit_tests.dir/test/ttl_tools_unit_tests.cpp.i

ned_ros/niryo_robot_hardware_stack/ttl_debug_tools/CMakeFiles/ttl_debug_tools_unit_tests.dir/test/ttl_tools_unit_tests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ttl_debug_tools_unit_tests.dir/test/ttl_tools_unit_tests.cpp.s"
	cd /home/scps/catkin_ws/build/ned_ros/niryo_robot_hardware_stack/ttl_debug_tools && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_debug_tools/test/ttl_tools_unit_tests.cpp -o CMakeFiles/ttl_debug_tools_unit_tests.dir/test/ttl_tools_unit_tests.cpp.s

# Object files for target ttl_debug_tools_unit_tests
ttl_debug_tools_unit_tests_OBJECTS = \
"CMakeFiles/ttl_debug_tools_unit_tests.dir/test/ttl_tools_unit_tests.cpp.o"

# External object files for target ttl_debug_tools_unit_tests
ttl_debug_tools_unit_tests_EXTERNAL_OBJECTS =

/home/scps/catkin_ws/devel/lib/ttl_debug_tools/ttl_debug_tools_unit_tests: ned_ros/niryo_robot_hardware_stack/ttl_debug_tools/CMakeFiles/ttl_debug_tools_unit_tests.dir/test/ttl_tools_unit_tests.cpp.o
/home/scps/catkin_ws/devel/lib/ttl_debug_tools/ttl_debug_tools_unit_tests: ned_ros/niryo_robot_hardware_stack/ttl_debug_tools/CMakeFiles/ttl_debug_tools_unit_tests.dir/build.make
/home/scps/catkin_ws/devel/lib/ttl_debug_tools/ttl_debug_tools_unit_tests: gtest/lib/libgtest.so
/home/scps/catkin_ws/devel/lib/ttl_debug_tools/ttl_debug_tools_unit_tests: /home/scps/catkin_ws/devel/lib/libdynamixel_sdk.so
/home/scps/catkin_ws/devel/lib/ttl_debug_tools/ttl_debug_tools_unit_tests: /home/scps/catkin_ws/devel/lib/libserial.so
/home/scps/catkin_ws/devel/lib/ttl_debug_tools/ttl_debug_tools_unit_tests: /home/scps/catkin_ws/devel/lib/libttl_debug_tools_core.so
/home/scps/catkin_ws/devel/lib/ttl_debug_tools/ttl_debug_tools_unit_tests: ned_ros/niryo_robot_hardware_stack/ttl_debug_tools/CMakeFiles/ttl_debug_tools_unit_tests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/scps/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/scps/catkin_ws/devel/lib/ttl_debug_tools/ttl_debug_tools_unit_tests"
	cd /home/scps/catkin_ws/build/ned_ros/niryo_robot_hardware_stack/ttl_debug_tools && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ttl_debug_tools_unit_tests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
ned_ros/niryo_robot_hardware_stack/ttl_debug_tools/CMakeFiles/ttl_debug_tools_unit_tests.dir/build: /home/scps/catkin_ws/devel/lib/ttl_debug_tools/ttl_debug_tools_unit_tests

.PHONY : ned_ros/niryo_robot_hardware_stack/ttl_debug_tools/CMakeFiles/ttl_debug_tools_unit_tests.dir/build

ned_ros/niryo_robot_hardware_stack/ttl_debug_tools/CMakeFiles/ttl_debug_tools_unit_tests.dir/clean:
	cd /home/scps/catkin_ws/build/ned_ros/niryo_robot_hardware_stack/ttl_debug_tools && $(CMAKE_COMMAND) -P CMakeFiles/ttl_debug_tools_unit_tests.dir/cmake_clean.cmake
.PHONY : ned_ros/niryo_robot_hardware_stack/ttl_debug_tools/CMakeFiles/ttl_debug_tools_unit_tests.dir/clean

ned_ros/niryo_robot_hardware_stack/ttl_debug_tools/CMakeFiles/ttl_debug_tools_unit_tests.dir/depend:
	cd /home/scps/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/scps/catkin_ws/src /home/scps/catkin_ws/src/ned_ros/niryo_robot_hardware_stack/ttl_debug_tools /home/scps/catkin_ws/build /home/scps/catkin_ws/build/ned_ros/niryo_robot_hardware_stack/ttl_debug_tools /home/scps/catkin_ws/build/ned_ros/niryo_robot_hardware_stack/ttl_debug_tools/CMakeFiles/ttl_debug_tools_unit_tests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ned_ros/niryo_robot_hardware_stack/ttl_debug_tools/CMakeFiles/ttl_debug_tools_unit_tests.dir/depend

