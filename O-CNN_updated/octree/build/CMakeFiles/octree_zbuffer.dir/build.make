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
include CMakeFiles/octree_zbuffer.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/octree_zbuffer.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/octree_zbuffer.dir/flags.make

CMakeFiles/octree_zbuffer.dir/tools/octree_zbuffer.cpp.o: CMakeFiles/octree_zbuffer.dir/flags.make
CMakeFiles/octree_zbuffer.dir/tools/octree_zbuffer.cpp.o: ../tools/octree_zbuffer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/content/O-CNN_updated/octree/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/octree_zbuffer.dir/tools/octree_zbuffer.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/octree_zbuffer.dir/tools/octree_zbuffer.cpp.o -c /content/O-CNN_updated/octree/tools/octree_zbuffer.cpp

CMakeFiles/octree_zbuffer.dir/tools/octree_zbuffer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/octree_zbuffer.dir/tools/octree_zbuffer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /content/O-CNN_updated/octree/tools/octree_zbuffer.cpp > CMakeFiles/octree_zbuffer.dir/tools/octree_zbuffer.cpp.i

CMakeFiles/octree_zbuffer.dir/tools/octree_zbuffer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/octree_zbuffer.dir/tools/octree_zbuffer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /content/O-CNN_updated/octree/tools/octree_zbuffer.cpp -o CMakeFiles/octree_zbuffer.dir/tools/octree_zbuffer.cpp.s

# Object files for target octree_zbuffer
octree_zbuffer_OBJECTS = \
"CMakeFiles/octree_zbuffer.dir/tools/octree_zbuffer.cpp.o"

# External object files for target octree_zbuffer
octree_zbuffer_EXTERNAL_OBJECTS =

CMakeFiles/octree_zbuffer.dir/cmake_device_link.o: CMakeFiles/octree_zbuffer.dir/tools/octree_zbuffer.cpp.o
CMakeFiles/octree_zbuffer.dir/cmake_device_link.o: CMakeFiles/octree_zbuffer.dir/build.make
CMakeFiles/octree_zbuffer.dir/cmake_device_link.o: liboctree_lib.a
CMakeFiles/octree_zbuffer.dir/cmake_device_link.o: librply.a
CMakeFiles/octree_zbuffer.dir/cmake_device_link.o: CMakeFiles/octree_zbuffer.dir/dlink.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/content/O-CNN_updated/octree/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CUDA device code CMakeFiles/octree_zbuffer.dir/cmake_device_link.o"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/octree_zbuffer.dir/dlink.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/octree_zbuffer.dir/build: CMakeFiles/octree_zbuffer.dir/cmake_device_link.o

.PHONY : CMakeFiles/octree_zbuffer.dir/build

# Object files for target octree_zbuffer
octree_zbuffer_OBJECTS = \
"CMakeFiles/octree_zbuffer.dir/tools/octree_zbuffer.cpp.o"

# External object files for target octree_zbuffer
octree_zbuffer_EXTERNAL_OBJECTS =

octree_zbuffer: CMakeFiles/octree_zbuffer.dir/tools/octree_zbuffer.cpp.o
octree_zbuffer: CMakeFiles/octree_zbuffer.dir/build.make
octree_zbuffer: liboctree_lib.a
octree_zbuffer: librply.a
octree_zbuffer: CMakeFiles/octree_zbuffer.dir/cmake_device_link.o
octree_zbuffer: CMakeFiles/octree_zbuffer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/content/O-CNN_updated/octree/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable octree_zbuffer"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/octree_zbuffer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/octree_zbuffer.dir/build: octree_zbuffer

.PHONY : CMakeFiles/octree_zbuffer.dir/build

CMakeFiles/octree_zbuffer.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/octree_zbuffer.dir/cmake_clean.cmake
.PHONY : CMakeFiles/octree_zbuffer.dir/clean

CMakeFiles/octree_zbuffer.dir/depend:
	cd /content/O-CNN_updated/octree/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /content/O-CNN_updated/octree /content/O-CNN_updated/octree /content/O-CNN_updated/octree/build /content/O-CNN_updated/octree/build /content/O-CNN_updated/octree/build/CMakeFiles/octree_zbuffer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/octree_zbuffer.dir/depend

