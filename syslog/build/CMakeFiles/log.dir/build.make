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
CMAKE_SOURCE_DIR = "/home/tan/Documents/linux imbed/linux_api_test/syslog"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/tan/Documents/linux imbed/linux_api_test/syslog/build"

# Include any dependencies generated for this target.
include CMakeFiles/log.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/log.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/log.dir/flags.make

CMakeFiles/log.dir/log.c.o: CMakeFiles/log.dir/flags.make
CMakeFiles/log.dir/log.c.o: ../log.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/tan/Documents/linux imbed/linux_api_test/syslog/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/log.dir/log.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/log.dir/log.c.o   -c "/home/tan/Documents/linux imbed/linux_api_test/syslog/log.c"

CMakeFiles/log.dir/log.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/log.dir/log.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/home/tan/Documents/linux imbed/linux_api_test/syslog/log.c" > CMakeFiles/log.dir/log.c.i

CMakeFiles/log.dir/log.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/log.dir/log.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/home/tan/Documents/linux imbed/linux_api_test/syslog/log.c" -o CMakeFiles/log.dir/log.c.s

CMakeFiles/log.dir/log.c.o.requires:

.PHONY : CMakeFiles/log.dir/log.c.o.requires

CMakeFiles/log.dir/log.c.o.provides: CMakeFiles/log.dir/log.c.o.requires
	$(MAKE) -f CMakeFiles/log.dir/build.make CMakeFiles/log.dir/log.c.o.provides.build
.PHONY : CMakeFiles/log.dir/log.c.o.provides

CMakeFiles/log.dir/log.c.o.provides.build: CMakeFiles/log.dir/log.c.o


# Object files for target log
log_OBJECTS = \
"CMakeFiles/log.dir/log.c.o"

# External object files for target log
log_EXTERNAL_OBJECTS =

log: CMakeFiles/log.dir/log.c.o
log: CMakeFiles/log.dir/build.make
log: CMakeFiles/log.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/tan/Documents/linux imbed/linux_api_test/syslog/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable log"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/log.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/log.dir/build: log

.PHONY : CMakeFiles/log.dir/build

CMakeFiles/log.dir/requires: CMakeFiles/log.dir/log.c.o.requires

.PHONY : CMakeFiles/log.dir/requires

CMakeFiles/log.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/log.dir/cmake_clean.cmake
.PHONY : CMakeFiles/log.dir/clean

CMakeFiles/log.dir/depend:
	cd "/home/tan/Documents/linux imbed/linux_api_test/syslog/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/tan/Documents/linux imbed/linux_api_test/syslog" "/home/tan/Documents/linux imbed/linux_api_test/syslog" "/home/tan/Documents/linux imbed/linux_api_test/syslog/build" "/home/tan/Documents/linux imbed/linux_api_test/syslog/build" "/home/tan/Documents/linux imbed/linux_api_test/syslog/build/CMakeFiles/log.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/log.dir/depend

