# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

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
CMAKE_COMMAND = /usr/local/lib/python2.7/dist-packages/cmake/data/bin/cmake

# The command to remove a file.
RM = /usr/local/lib/python2.7/dist-packages/cmake/data/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /content/O-CNN_updated/octree

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /content/O-CNN_updated/octree/build

# Include any dependencies generated for this target.
include CMakeFiles/upgrade_points.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/upgrade_points.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/upgrade_points.dir/flags.make

CMakeFiles/upgrade_points.dir/tools/upgrade_points.cpp.o: CMakeFiles/upgrade_points.dir/flags.make
CMakeFiles/upgrade_points.dir/tools/upgrade_points.cpp.o: ../tools/upgrade_points.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/content/O-CNN_updated/octree/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/upgrade_points.dir/tools/upgrade_points.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/upgrade_points.dir/tools/upgrade_points.cpp.o -c /content/O-CNN_updated/octree/tools/upgrade_points.cpp

CMakeFiles/upgrade_points.dir/tools/upgrade_points.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/upgrade_points.dir/tools/upgrade_points.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /content/O-CNN_updated/octree/tools/upgrade_points.cpp > CMakeFiles/upgrade_points.dir/tools/upgrade_points.cpp.i

CMakeFiles/upgrade_points.dir/tools/upgrade_points.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/upgrade_points.dir/tools/upgrade_points.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /content/O-CNN_updated/octree/tools/upgrade_points.cpp -o CMakeFiles/upgrade_points.dir/tools/upgrade_points.cpp.s

# Object files for target upgrade_points
upgrade_points_OBJECTS = \
"CMakeFiles/upgrade_points.dir/tools/upgrade_points.cpp.o"

# External object files for target upgrade_points
upgrade_points_EXTERNAL_OBJECTS =

CMakeFiles/upgrade_points.dir/cmake_device_link.o: CMakeFiles/upgrade_points.dir/tools/upgrade_points.cpp.o
CMakeFiles/upgrade_points.dir/cmake_device_link.o: CMakeFiles/upgrade_points.dir/build.make
CMakeFiles/upgrade_points.dir/cmake_device_link.o: liboctree_lib.a
CMakeFiles/upgrade_points.dir/cmake_device_link.o: librply.a
CMakeFiles/upgrade_points.dir/cmake_device_link.o: CMakeFiles/upgrade_points.dir/dlink.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/content/O-CNN_updated/octree/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CUDA device code CMakeFiles/upgrade_points.dir/cmake_device_link.o"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/upgrade_points.dir/dlink.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/upgrade_points.dir/build: CMakeFiles/upgrade_points.dir/cmake_device_link.o

.PHONY : CMakeFiles/upgrade_points.dir/build

# Object files for target upgrade_points
upgrade_points_OBJECTS = \
"CMakeFiles/upgrade_points.dir/tools/upgrade_points.cpp.o"

# External object files for target upgrade_points
upgrade_points_EXTERNAL_OBJECTS =

upgrade_points: CMakeFiles/upgrade_points.dir/tools/upgrade_points.cpp.o
upgrade_points: CMakeFiles/upgrade_points.dir/build.make
upgrade_points: liboctree_lib.a
upgrade_points: librply.a
upgrade_points: CMakeFiles/upgrade_points.dir/cmake_device_link.o
upgrade_points: CMakeFiles/upgrade_points.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/content/O-CNN_updated/octree/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable upgrade_points"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/upgrade_points.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/upgrade_points.dir/build: upgrade_points

.PHONY : CMakeFiles/upgrade_points.dir/build

CMakeFiles/upgrade_points.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/upgrade_points.dir/cmake_clean.cmake
.PHONY : CMakeFiles/upgrade_points.dir/clean

CMakeFiles/upgrade_points.dir/depend:
	cd /content/O-CNN_updated/octree/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /content/O-CNN_updated/octree /content/O-CNN_updated/octree /content/O-CNN_updated/octree/build /content/O-CNN_updated/octree/build /content/O-CNN_updated/octree/build/CMakeFiles/upgrade_points.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/upgrade_points.dir/depend
