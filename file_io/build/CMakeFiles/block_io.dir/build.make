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
include CMakeFiles/block_io.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/block_io.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/block_io.dir/flags.make

CMakeFiles/block_io.dir/block_io.c.o: CMakeFiles/block_io.dir/flags.make
CMakeFiles/block_io.dir/block_io.c.o: ../block_io.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/tan/Documents/linux imbed/linux_api_test/file_io/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/block_io.dir/block_io.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/block_io.dir/block_io.c.o   -c "/home/tan/Documents/linux imbed/linux_api_test/file_io/block_io.c"

CMakeFiles/block_io.dir/block_io.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/block_io.dir/block_io.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/home/tan/Documents/linux imbed/linux_api_test/file_io/block_io.c" > CMakeFiles/block_io.dir/block_io.c.i

CMakeFiles/block_io.dir/block_io.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/block_io.dir/block_io.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/home/tan/Documents/linux imbed/linux_api_test/file_io/block_io.c" -o CMakeFiles/block_io.dir/block_io.c.s

CMakeFiles/block_io.dir/block_io.c.o.requires:

.PHONY : CMakeFiles/block_io.dir/block_io.c.o.requires

CMakeFiles/block_io.dir/block_io.c.o.provides: CMakeFiles/block_io.dir/block_io.c.o.requires
	$(MAKE) -f CMakeFiles/block_io.dir/build.make CMakeFiles/block_io.dir/block_io.c.o.provides.build
.PHONY : CMakeFiles/block_io.dir/block_io.c.o.provides

CMakeFiles/block_io.dir/block_io.c.o.provides.build: CMakeFiles/block_io.dir/block_io.c.o


# Object files for target block_io
block_io_OBJECTS = \
"CMakeFiles/block_io.dir/block_io.c.o"

# External object files for target block_io
block_io_EXTERNAL_OBJECTS =

block_io: CMakeFiles/block_io.dir/block_io.c.o
block_io: CMakeFiles/block_io.dir/build.make
block_io: CMakeFiles/block_io.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/tan/Documents/linux imbed/linux_api_test/file_io/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable block_io"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/block_io.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/block_io.dir/build: block_io

.PHONY : CMakeFiles/block_io.dir/build

CMakeFiles/block_io.dir/requires: CMakeFiles/block_io.dir/block_io.c.o.requires

.PHONY : CMakeFiles/block_io.dir/requires

CMakeFiles/block_io.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/block_io.dir/cmake_clean.cmake
.PHONY : CMakeFiles/block_io.dir/clean

CMakeFiles/block_io.dir/depend:
	cd "/home/tan/Documents/linux imbed/linux_api_test/file_io/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/tan/Documents/linux imbed/linux_api_test/file_io" "/home/tan/Documents/linux imbed/linux_api_test/file_io" "/home/tan/Documents/linux imbed/linux_api_test/file_io/build" "/home/tan/Documents/linux imbed/linux_api_test/file_io/build" "/home/tan/Documents/linux imbed/linux_api_test/file_io/build/CMakeFiles/block_io.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/block_io.dir/depend

