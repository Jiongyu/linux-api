# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = "/home/tan/Documents/linux imbed/linux_api_test/exec"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/tan/Documents/linux imbed/linux_api_test/exec/build"

# Include any dependencies generated for this target.
include CMakeFiles/exec.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/exec.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/exec.dir/flags.make

CMakeFiles/exec.dir/exec.c.o: CMakeFiles/exec.dir/flags.make
CMakeFiles/exec.dir/exec.c.o: ../exec.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/tan/Documents/linux imbed/linux_api_test/exec/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/exec.dir/exec.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/exec.dir/exec.c.o   -c "/home/tan/Documents/linux imbed/linux_api_test/exec/exec.c"

CMakeFiles/exec.dir/exec.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/exec.dir/exec.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/home/tan/Documents/linux imbed/linux_api_test/exec/exec.c" > CMakeFiles/exec.dir/exec.c.i

CMakeFiles/exec.dir/exec.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/exec.dir/exec.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/home/tan/Documents/linux imbed/linux_api_test/exec/exec.c" -o CMakeFiles/exec.dir/exec.c.s

CMakeFiles/exec.dir/exec.c.o.requires:

.PHONY : CMakeFiles/exec.dir/exec.c.o.requires

CMakeFiles/exec.dir/exec.c.o.provides: CMakeFiles/exec.dir/exec.c.o.requires
	$(MAKE) -f CMakeFiles/exec.dir/build.make CMakeFiles/exec.dir/exec.c.o.provides.build
.PHONY : CMakeFiles/exec.dir/exec.c.o.provides

CMakeFiles/exec.dir/exec.c.o.provides.build: CMakeFiles/exec.dir/exec.c.o


# Object files for target exec
exec_OBJECTS = \
"CMakeFiles/exec.dir/exec.c.o"

# External object files for target exec
exec_EXTERNAL_OBJECTS =

exec: CMakeFiles/exec.dir/exec.c.o
exec: CMakeFiles/exec.dir/build.make
exec: CMakeFiles/exec.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/tan/Documents/linux imbed/linux_api_test/exec/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable exec"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/exec.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/exec.dir/build: exec

.PHONY : CMakeFiles/exec.dir/build

CMakeFiles/exec.dir/requires: CMakeFiles/exec.dir/exec.c.o.requires

.PHONY : CMakeFiles/exec.dir/requires

CMakeFiles/exec.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/exec.dir/cmake_clean.cmake
.PHONY : CMakeFiles/exec.dir/clean

CMakeFiles/exec.dir/depend:
	cd "/home/tan/Documents/linux imbed/linux_api_test/exec/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/tan/Documents/linux imbed/linux_api_test/exec" "/home/tan/Documents/linux imbed/linux_api_test/exec" "/home/tan/Documents/linux imbed/linux_api_test/exec/build" "/home/tan/Documents/linux imbed/linux_api_test/exec/build" "/home/tan/Documents/linux imbed/linux_api_test/exec/build/CMakeFiles/exec.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/exec.dir/depend

