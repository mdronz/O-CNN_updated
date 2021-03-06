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
include CMakeFiles/clip_points.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/clip_points.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/clip_points.dir/flags.make

CMakeFiles/clip_points.dir/tools/clip_points.cpp.o: CMakeFiles/clip_points.dir/flags.make
CMakeFiles/clip_points.dir/tools/clip_points.cpp.o: ../tools/clip_points.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/content/O-CNN_updated/octree/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/clip_points.dir/tools/clip_points.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/clip_points.dir/tools/clip_points.cpp.o -c /content/O-CNN_updated/octree/tools/clip_points.cpp

CMakeFiles/clip_points.dir/tools/clip_points.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/clip_points.dir/tools/clip_points.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /content/O-CNN_updated/octree/tools/clip_points.cpp > CMakeFiles/clip_points.dir/tools/clip_points.cpp.i

CMakeFiles/clip_points.dir/tools/clip_points.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/clip_points.dir/tools/clip_points.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /content/O-CNN_updated/octree/tools/clip_points.cpp -o CMakeFiles/clip_points.dir/tools/clip_points.cpp.s

# Object files for target clip_points
clip_points_OBJECTS = \
"CMakeFiles/clip_points.dir/tools/clip_points.cpp.o"

# External object files for target clip_points
clip_points_EXTERNAL_OBJECTS =

CMakeFiles/clip_points.dir/cmake_device_link.o: CMakeFiles/clip_points.dir/tools/clip_points.cpp.o
CMakeFiles/clip_points.dir/cmake_device_link.o: CMakeFiles/clip_points.dir/build.make
CMakeFiles/clip_points.dir/cmake_device_link.o: liboctree_lib.a
CMakeFiles/clip_points.dir/cmake_device_link.o: librply.a
CMakeFiles/clip_points.dir/cmake_device_link.o: CMakeFiles/clip_points.dir/dlink.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/content/O-CNN_updated/octree/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CUDA device code CMakeFiles/clip_points.dir/cmake_device_link.o"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/clip_points.dir/dlink.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/clip_points.dir/build: CMakeFiles/clip_points.dir/cmake_device_link.o

.PHONY : CMakeFiles/clip_points.dir/build

# Object files for target clip_points
clip_points_OBJECTS = \
"CMakeFiles/clip_points.dir/tools/clip_points.cpp.o"

# External object files for target clip_points
clip_points_EXTERNAL_OBJECTS =

clip_points: CMakeFiles/clip_points.dir/tools/clip_points.cpp.o
clip_points: CMakeFiles/clip_points.dir/build.make
clip_points: liboctree_lib.a
clip_points: librply.a
clip_points: CMakeFiles/clip_points.dir/cmake_device_link.o
clip_points: CMakeFiles/clip_points.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/content/O-CNN_updated/octree/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable clip_points"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/clip_points.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/clip_points.dir/build: clip_points

.PHONY : CMakeFiles/clip_points.dir/build

CMakeFiles/clip_points.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/clip_points.dir/cmake_clean.cmake
.PHONY : CMakeFiles/clip_points.dir/clean

CMakeFiles/clip_points.dir/depend:
	cd /content/O-CNN_updated/octree/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /content/O-CNN_updated/octree /content/O-CNN_updated/octree /content/O-CNN_updated/octree/build /content/O-CNN_updated/octree/build /content/O-CNN_updated/octree/build/CMakeFiles/clip_points.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/clip_points.dir/depend

