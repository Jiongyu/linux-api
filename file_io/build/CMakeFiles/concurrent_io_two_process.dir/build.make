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
CMAKE_SOURCE_DIR = "/home/tan/Documents/linux imbed/linux_api_test/file_io"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/tan/Documents/linux imbed/linux_api_test/file_io/build"

# Include any dependencies generated for this target.
include CMakeFiles/concurrent_io_two_process.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/concurrent_io_two_process.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/concurrent_io_two_process.dir/flags.make

CMakeFiles/concurrent_io_two_process.dir/concurrent_io_two_process.c.o: CMakeFiles/concurrent_io_two_process.dir/flags.make
CMakeFiles/concurrent_io_two_process.dir/concurrent_io_two_process.c.o: ../concurrent_io_two_process.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/tan/Documents/linux imbed/linux_api_test/file_io/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/concurrent_io_two_process.dir/concurrent_io_two_process.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/concurrent_io_two_process.dir/concurrent_io_two_process.c.o   -c "/home/tan/Documents/linux imbed/linux_api_test/file_io/concurrent_io_two_process.c"

CMakeFiles/concurrent_io_two_process.dir/concurrent_io_two_process.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/concurrent_io_two_process.dir/concurrent_io_two_process.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/home/tan/Documents/linux imbed/linux_api_test/file_io/concurrent_io_two_process.c" > CMakeFiles/concurrent_io_two_process.dir/concurrent_io_two_process.c.i

CMakeFiles/concurrent_io_two_process.dir/concurrent_io_two_process.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/concurrent_io_two_process.dir/concurrent_io_two_process.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/home/tan/Documents/linux imbed/linux_api_test/file_io/concurrent_io_two_process.c" -o CMakeFiles/concurrent_io_two_process.dir/concurrent_io_two_process.c.s

CMakeFiles/concurrent_io_two_process.dir/concurrent_io_two_process.c.o.requires:

.PHONY : CMakeFiles/concurrent_io_two_process.dir/concurrent_io_two_process.c.o.requires

CMakeFiles/concurrent_io_two_process.dir/concurrent_io_two_process.c.o.provides: CMakeFiles/concurrent_io_two_process.dir/concurrent_io_two_process.c.o.requires
	$(MAKE) -f CMakeFiles/concurrent_io_two_process.dir/build.make CMakeFiles/concurrent_io_two_process.dir/concurrent_io_two_process.c.o.provides.build
.PHONY : CMakeFiles/concurrent_io_two_process.dir/concurrent_io_two_process.c.o.provides

CMakeFiles/concurrent_io_two_process.dir/concurrent_io_two_process.c.o.provides.build: CMakeFiles/concurrent_io_two_process.dir/concurrent_io_two_process.c.o


# Object files for target concurrent_io_two_process
concurrent_io_two_process_OBJECTS = \
"CMakeFiles/concurrent_io_two_process.dir/concurrent_io_two_process.c.o"

# External object files for target concurrent_io_two_process
concurrent_io_two_process_EXTERNAL_OBJECTS =

concurrent_io_two_process: CMakeFiles/concurrent_io_two_process.dir/concurrent_io_two_process.c.o
concurrent_io_two_process: CMakeFiles/concurrent_io_two_process.dir/build.make
concurrent_io_two_process: CMakeFiles/concurrent_io_two_process.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/tan/Documents/linux imbed/linux_api_test/file_io/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable concurrent_io_two_process"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/concurrent_io_two_process.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/concurrent_io_two_process.dir/build: concurrent_io_two_process

.PHONY : CMakeFiles/concurrent_io_two_process.dir/build

CMakeFiles/concurrent_io_two_process.dir/requires: CMakeFiles/concurrent_io_two_process.dir/concurrent_io_two_process.c.o.requires

.PHONY : CMakeFiles/concurrent_io_two_process.dir/requires

CMakeFiles/concurrent_io_two_process.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/concurrent_io_two_process.dir/cmake_clean.cmake
.PHONY : CMakeFiles/concurrent_io_two_process.dir/clean

CMakeFiles/concurrent_io_two_process.dir/depend:
	cd "/home/tan/Documents/linux imbed/linux_api_test/file_io/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/tan/Documents/linux imbed/linux_api_test/file_io" "/home/tan/Documents/linux imbed/linux_api_test/file_io" "/home/tan/Documents/linux imbed/linux_api_test/file_io/build" "/home/tan/Documents/linux imbed/linux_api_test/file_io/build" "/home/tan/Documents/linux imbed/linux_api_test/file_io/build/CMakeFiles/concurrent_io_two_process.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/concurrent_io_two_process.dir/depend
