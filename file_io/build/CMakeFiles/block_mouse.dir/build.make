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
include CMakeFiles/block_mouse.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/block_mouse.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/block_mouse.dir/flags.make

CMakeFiles/block_mouse.dir/block_mouse.c.o: CMakeFiles/block_mouse.dir/flags.make
CMakeFiles/block_mouse.dir/block_mouse.c.o: ../block_mouse.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/tan/Documents/linux imbed/linux_api_test/file_io/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/block_mouse.dir/block_mouse.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/block_mouse.dir/block_mouse.c.o   -c "/home/tan/Documents/linux imbed/linux_api_test/file_io/block_mouse.c"

CMakeFiles/block_mouse.dir/block_mouse.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/block_mouse.dir/block_mouse.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/home/tan/Documents/linux imbed/linux_api_test/file_io/block_mouse.c" > CMakeFiles/block_mouse.dir/block_mouse.c.i

CMakeFiles/block_mouse.dir/block_mouse.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/block_mouse.dir/block_mouse.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/home/tan/Documents/linux imbed/linux_api_test/file_io/block_mouse.c" -o CMakeFiles/block_mouse.dir/block_mouse.c.s

CMakeFiles/block_mouse.dir/block_mouse.c.o.requires:

.PHONY : CMakeFiles/block_mouse.dir/block_mouse.c.o.requires

CMakeFiles/block_mouse.dir/block_mouse.c.o.provides: CMakeFiles/block_mouse.dir/block_mouse.c.o.requires
	$(MAKE) -f CMakeFiles/block_mouse.dir/build.make CMakeFiles/block_mouse.dir/block_mouse.c.o.provides.build
.PHONY : CMakeFiles/block_mouse.dir/block_mouse.c.o.provides

CMakeFiles/block_mouse.dir/block_mouse.c.o.provides.build: CMakeFiles/block_mouse.dir/block_mouse.c.o


# Object files for target block_mouse
block_mouse_OBJECTS = \
"CMakeFiles/block_mouse.dir/block_mouse.c.o"

# External object files for target block_mouse
block_mouse_EXTERNAL_OBJECTS =

block_mouse: CMakeFiles/block_mouse.dir/block_mouse.c.o
block_mouse: CMakeFiles/block_mouse.dir/build.make
block_mouse: CMakeFiles/block_mouse.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/tan/Documents/linux imbed/linux_api_test/file_io/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable block_mouse"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/block_mouse.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/block_mouse.dir/build: block_mouse

.PHONY : CMakeFiles/block_mouse.dir/build

CMakeFiles/block_mouse.dir/requires: CMakeFiles/block_mouse.dir/block_mouse.c.o.requires

.PHONY : CMakeFiles/block_mouse.dir/requires

CMakeFiles/block_mouse.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/block_mouse.dir/cmake_clean.cmake
.PHONY : CMakeFiles/block_mouse.dir/clean

CMakeFiles/block_mouse.dir/depend:
	cd "/home/tan/Documents/linux imbed/linux_api_test/file_io/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/tan/Documents/linux imbed/linux_api_test/file_io" "/home/tan/Documents/linux imbed/linux_api_test/file_io" "/home/tan/Documents/linux imbed/linux_api_test/file_io/build" "/home/tan/Documents/linux imbed/linux_api_test/file_io/build" "/home/tan/Documents/linux imbed/linux_api_test/file_io/build/CMakeFiles/block_mouse.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/block_mouse.dir/depend

