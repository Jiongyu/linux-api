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
CMAKE_SOURCE_DIR = "/home/tan/Documents/linux imbed/linux_api_test/thread"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/tan/Documents/linux imbed/linux_api_test/thread/build"

# Include any dependencies generated for this target.
include CMakeFiles/mute_lock.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/mute_lock.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/mute_lock.dir/flags.make

CMakeFiles/mute_lock.dir/mute_lock.c.o: CMakeFiles/mute_lock.dir/flags.make
CMakeFiles/mute_lock.dir/mute_lock.c.o: ../mute_lock.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/tan/Documents/linux imbed/linux_api_test/thread/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/mute_lock.dir/mute_lock.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mute_lock.dir/mute_lock.c.o   -c "/home/tan/Documents/linux imbed/linux_api_test/thread/mute_lock.c"

CMakeFiles/mute_lock.dir/mute_lock.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mute_lock.dir/mute_lock.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/home/tan/Documents/linux imbed/linux_api_test/thread/mute_lock.c" > CMakeFiles/mute_lock.dir/mute_lock.c.i

CMakeFiles/mute_lock.dir/mute_lock.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mute_lock.dir/mute_lock.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/home/tan/Documents/linux imbed/linux_api_test/thread/mute_lock.c" -o CMakeFiles/mute_lock.dir/mute_lock.c.s

CMakeFiles/mute_lock.dir/mute_lock.c.o.requires:

.PHONY : CMakeFiles/mute_lock.dir/mute_lock.c.o.requires

CMakeFiles/mute_lock.dir/mute_lock.c.o.provides: CMakeFiles/mute_lock.dir/mute_lock.c.o.requires
	$(MAKE) -f CMakeFiles/mute_lock.dir/build.make CMakeFiles/mute_lock.dir/mute_lock.c.o.provides.build
.PHONY : CMakeFiles/mute_lock.dir/mute_lock.c.o.provides

CMakeFiles/mute_lock.dir/mute_lock.c.o.provides.build: CMakeFiles/mute_lock.dir/mute_lock.c.o


# Object files for target mute_lock
mute_lock_OBJECTS = \
"CMakeFiles/mute_lock.dir/mute_lock.c.o"

# External object files for target mute_lock
mute_lock_EXTERNAL_OBJECTS =

mute_lock: CMakeFiles/mute_lock.dir/mute_lock.c.o
mute_lock: CMakeFiles/mute_lock.dir/build.make
mute_lock: CMakeFiles/mute_lock.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/tan/Documents/linux imbed/linux_api_test/thread/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable mute_lock"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mute_lock.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/mute_lock.dir/build: mute_lock

.PHONY : CMakeFiles/mute_lock.dir/build

CMakeFiles/mute_lock.dir/requires: CMakeFiles/mute_lock.dir/mute_lock.c.o.requires

.PHONY : CMakeFiles/mute_lock.dir/requires

CMakeFiles/mute_lock.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/mute_lock.dir/cmake_clean.cmake
.PHONY : CMakeFiles/mute_lock.dir/clean

CMakeFiles/mute_lock.dir/depend:
	cd "/home/tan/Documents/linux imbed/linux_api_test/thread/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/tan/Documents/linux imbed/linux_api_test/thread" "/home/tan/Documents/linux imbed/linux_api_test/thread" "/home/tan/Documents/linux imbed/linux_api_test/thread/build" "/home/tan/Documents/linux imbed/linux_api_test/thread/build" "/home/tan/Documents/linux imbed/linux_api_test/thread/build/CMakeFiles/mute_lock.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/mute_lock.dir/depend

