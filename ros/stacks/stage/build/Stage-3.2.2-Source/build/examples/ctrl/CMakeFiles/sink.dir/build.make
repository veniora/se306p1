# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canoncical targets will work.
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

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ubuntu-11-10/se306p1/ros/stacks/stage/build/Stage-3.2.2-Source

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu-11-10/se306p1/ros/stacks/stage/build/Stage-3.2.2-Source/build

# Include any dependencies generated for this target.
include examples/ctrl/CMakeFiles/sink.dir/depend.make

# Include the progress variables for this target.
include examples/ctrl/CMakeFiles/sink.dir/progress.make

# Include the compile flags for this target's objects.
include examples/ctrl/CMakeFiles/sink.dir/flags.make

examples/ctrl/CMakeFiles/sink.dir/sink.o: examples/ctrl/CMakeFiles/sink.dir/flags.make
examples/ctrl/CMakeFiles/sink.dir/sink.o: ../examples/ctrl/sink.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ubuntu-11-10/se306p1/ros/stacks/stage/build/Stage-3.2.2-Source/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object examples/ctrl/CMakeFiles/sink.dir/sink.o"
	cd /home/ubuntu-11-10/se306p1/ros/stacks/stage/build/Stage-3.2.2-Source/build/examples/ctrl && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS)  -I/usr/include/freetype2   -D_THREAD_SAFE -D_REENTRANT -o CMakeFiles/sink.dir/sink.o -c /home/ubuntu-11-10/se306p1/ros/stacks/stage/build/Stage-3.2.2-Source/examples/ctrl/sink.cc

examples/ctrl/CMakeFiles/sink.dir/sink.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sink.dir/sink.i"
	cd /home/ubuntu-11-10/se306p1/ros/stacks/stage/build/Stage-3.2.2-Source/build/examples/ctrl && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS)  -I/usr/include/freetype2   -D_THREAD_SAFE -D_REENTRANT -E /home/ubuntu-11-10/se306p1/ros/stacks/stage/build/Stage-3.2.2-Source/examples/ctrl/sink.cc > CMakeFiles/sink.dir/sink.i

examples/ctrl/CMakeFiles/sink.dir/sink.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sink.dir/sink.s"
	cd /home/ubuntu-11-10/se306p1/ros/stacks/stage/build/Stage-3.2.2-Source/build/examples/ctrl && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS)  -I/usr/include/freetype2   -D_THREAD_SAFE -D_REENTRANT -S /home/ubuntu-11-10/se306p1/ros/stacks/stage/build/Stage-3.2.2-Source/examples/ctrl/sink.cc -o CMakeFiles/sink.dir/sink.s

examples/ctrl/CMakeFiles/sink.dir/sink.o.requires:
.PHONY : examples/ctrl/CMakeFiles/sink.dir/sink.o.requires

examples/ctrl/CMakeFiles/sink.dir/sink.o.provides: examples/ctrl/CMakeFiles/sink.dir/sink.o.requires
	$(MAKE) -f examples/ctrl/CMakeFiles/sink.dir/build.make examples/ctrl/CMakeFiles/sink.dir/sink.o.provides.build
.PHONY : examples/ctrl/CMakeFiles/sink.dir/sink.o.provides

examples/ctrl/CMakeFiles/sink.dir/sink.o.provides.build: examples/ctrl/CMakeFiles/sink.dir/sink.o

# Object files for target sink
sink_OBJECTS = \
"CMakeFiles/sink.dir/sink.o"

# External object files for target sink
sink_EXTERNAL_OBJECTS =

examples/ctrl/sink.so: examples/ctrl/CMakeFiles/sink.dir/sink.o
examples/ctrl/sink.so: libstage/libstage.so.3.2.2
examples/ctrl/sink.so: /usr/lib/x86_64-linux-gnu/libGLU.so
examples/ctrl/sink.so: /usr/lib/x86_64-linux-gnu/libGL.so
examples/ctrl/sink.so: /usr/lib/x86_64-linux-gnu/libSM.so
examples/ctrl/sink.so: /usr/lib/x86_64-linux-gnu/libICE.so
examples/ctrl/sink.so: /usr/lib/x86_64-linux-gnu/libX11.so
examples/ctrl/sink.so: /usr/lib/x86_64-linux-gnu/libXext.so
examples/ctrl/sink.so: /usr/lib/libltdl.so
examples/ctrl/sink.so: examples/ctrl/CMakeFiles/sink.dir/build.make
examples/ctrl/sink.so: examples/ctrl/CMakeFiles/sink.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared module sink.so"
	cd /home/ubuntu-11-10/se306p1/ros/stacks/stage/build/Stage-3.2.2-Source/build/examples/ctrl && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sink.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/ctrl/CMakeFiles/sink.dir/build: examples/ctrl/sink.so
.PHONY : examples/ctrl/CMakeFiles/sink.dir/build

examples/ctrl/CMakeFiles/sink.dir/requires: examples/ctrl/CMakeFiles/sink.dir/sink.o.requires
.PHONY : examples/ctrl/CMakeFiles/sink.dir/requires

examples/ctrl/CMakeFiles/sink.dir/clean:
	cd /home/ubuntu-11-10/se306p1/ros/stacks/stage/build/Stage-3.2.2-Source/build/examples/ctrl && $(CMAKE_COMMAND) -P CMakeFiles/sink.dir/cmake_clean.cmake
.PHONY : examples/ctrl/CMakeFiles/sink.dir/clean

examples/ctrl/CMakeFiles/sink.dir/depend:
	cd /home/ubuntu-11-10/se306p1/ros/stacks/stage/build/Stage-3.2.2-Source/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu-11-10/se306p1/ros/stacks/stage/build/Stage-3.2.2-Source /home/ubuntu-11-10/se306p1/ros/stacks/stage/build/Stage-3.2.2-Source/examples/ctrl /home/ubuntu-11-10/se306p1/ros/stacks/stage/build/Stage-3.2.2-Source/build /home/ubuntu-11-10/se306p1/ros/stacks/stage/build/Stage-3.2.2-Source/build/examples/ctrl /home/ubuntu-11-10/se306p1/ros/stacks/stage/build/Stage-3.2.2-Source/build/examples/ctrl/CMakeFiles/sink.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/ctrl/CMakeFiles/sink.dir/depend

