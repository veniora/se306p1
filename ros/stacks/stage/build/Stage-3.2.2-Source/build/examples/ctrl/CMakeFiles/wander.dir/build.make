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
CMAKE_SOURCE_DIR = /home/charu/se306p1/ros/stacks/stage/build/Stage-3.2.2-Source

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/charu/se306p1/ros/stacks/stage/build/Stage-3.2.2-Source/build

# Include any dependencies generated for this target.
include examples/ctrl/CMakeFiles/wander.dir/depend.make

# Include the progress variables for this target.
include examples/ctrl/CMakeFiles/wander.dir/progress.make

# Include the compile flags for this target's objects.
include examples/ctrl/CMakeFiles/wander.dir/flags.make

examples/ctrl/CMakeFiles/wander.dir/wander.o: examples/ctrl/CMakeFiles/wander.dir/flags.make
examples/ctrl/CMakeFiles/wander.dir/wander.o: ../examples/ctrl/wander.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/charu/se306p1/ros/stacks/stage/build/Stage-3.2.2-Source/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object examples/ctrl/CMakeFiles/wander.dir/wander.o"
	cd /home/charu/se306p1/ros/stacks/stage/build/Stage-3.2.2-Source/build/examples/ctrl && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS)  -I/usr/include/freetype2   -D_THREAD_SAFE -D_REENTRANT -o CMakeFiles/wander.dir/wander.o -c /home/charu/se306p1/ros/stacks/stage/build/Stage-3.2.2-Source/examples/ctrl/wander.cc

examples/ctrl/CMakeFiles/wander.dir/wander.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wander.dir/wander.i"
	cd /home/charu/se306p1/ros/stacks/stage/build/Stage-3.2.2-Source/build/examples/ctrl && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS)  -I/usr/include/freetype2   -D_THREAD_SAFE -D_REENTRANT -E /home/charu/se306p1/ros/stacks/stage/build/Stage-3.2.2-Source/examples/ctrl/wander.cc > CMakeFiles/wander.dir/wander.i

examples/ctrl/CMakeFiles/wander.dir/wander.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wander.dir/wander.s"
	cd /home/charu/se306p1/ros/stacks/stage/build/Stage-3.2.2-Source/build/examples/ctrl && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS)  -I/usr/include/freetype2   -D_THREAD_SAFE -D_REENTRANT -S /home/charu/se306p1/ros/stacks/stage/build/Stage-3.2.2-Source/examples/ctrl/wander.cc -o CMakeFiles/wander.dir/wander.s

examples/ctrl/CMakeFiles/wander.dir/wander.o.requires:
.PHONY : examples/ctrl/CMakeFiles/wander.dir/wander.o.requires

examples/ctrl/CMakeFiles/wander.dir/wander.o.provides: examples/ctrl/CMakeFiles/wander.dir/wander.o.requires
	$(MAKE) -f examples/ctrl/CMakeFiles/wander.dir/build.make examples/ctrl/CMakeFiles/wander.dir/wander.o.provides.build
.PHONY : examples/ctrl/CMakeFiles/wander.dir/wander.o.provides

examples/ctrl/CMakeFiles/wander.dir/wander.o.provides.build: examples/ctrl/CMakeFiles/wander.dir/wander.o

# Object files for target wander
wander_OBJECTS = \
"CMakeFiles/wander.dir/wander.o"

# External object files for target wander
wander_EXTERNAL_OBJECTS =

examples/ctrl/wander.so: examples/ctrl/CMakeFiles/wander.dir/wander.o
examples/ctrl/wander.so: libstage/libstage.so.3.2.2
examples/ctrl/wander.so: /usr/lib/x86_64-linux-gnu/libGLU.so
examples/ctrl/wander.so: /usr/lib/x86_64-linux-gnu/libGL.so
examples/ctrl/wander.so: /usr/lib/x86_64-linux-gnu/libSM.so
examples/ctrl/wander.so: /usr/lib/x86_64-linux-gnu/libICE.so
examples/ctrl/wander.so: /usr/lib/x86_64-linux-gnu/libX11.so
examples/ctrl/wander.so: /usr/lib/x86_64-linux-gnu/libXext.so
examples/ctrl/wander.so: /usr/lib/libltdl.so
examples/ctrl/wander.so: examples/ctrl/CMakeFiles/wander.dir/build.make
examples/ctrl/wander.so: examples/ctrl/CMakeFiles/wander.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared module wander.so"
	cd /home/charu/se306p1/ros/stacks/stage/build/Stage-3.2.2-Source/build/examples/ctrl && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/wander.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/ctrl/CMakeFiles/wander.dir/build: examples/ctrl/wander.so
.PHONY : examples/ctrl/CMakeFiles/wander.dir/build

examples/ctrl/CMakeFiles/wander.dir/requires: examples/ctrl/CMakeFiles/wander.dir/wander.o.requires
.PHONY : examples/ctrl/CMakeFiles/wander.dir/requires

examples/ctrl/CMakeFiles/wander.dir/clean:
	cd /home/charu/se306p1/ros/stacks/stage/build/Stage-3.2.2-Source/build/examples/ctrl && $(CMAKE_COMMAND) -P CMakeFiles/wander.dir/cmake_clean.cmake
.PHONY : examples/ctrl/CMakeFiles/wander.dir/clean

examples/ctrl/CMakeFiles/wander.dir/depend:
	cd /home/charu/se306p1/ros/stacks/stage/build/Stage-3.2.2-Source/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/charu/se306p1/ros/stacks/stage/build/Stage-3.2.2-Source /home/charu/se306p1/ros/stacks/stage/build/Stage-3.2.2-Source/examples/ctrl /home/charu/se306p1/ros/stacks/stage/build/Stage-3.2.2-Source/build /home/charu/se306p1/ros/stacks/stage/build/Stage-3.2.2-Source/build/examples/ctrl /home/charu/se306p1/ros/stacks/stage/build/Stage-3.2.2-Source/build/examples/ctrl/CMakeFiles/wander.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/ctrl/CMakeFiles/wander.dir/depend

