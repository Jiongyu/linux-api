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
CMAKE_SOURCE_DIR = "/home/tan/Documents/linux imbed/linux_api_test/process"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/tan/Documents/linux imbed/linux_api_test/process/build"

# Include any dependencies generated for this target.
include CMakeFiles/environ.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/environ.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/environ.dir/flags.make

CMakeFiles/environ.dir/environ.c.o: CMakeFiles/environ.dir/flags.make
CMakeFiles/environ.dir/environ.c.o: ../environ.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/tan/Documents/linux imbed/linux_api_test/process/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/environ.dir/environ.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/environ.dir/environ.c.o   -c "/home/tan/Documents/linux imbed/linux_api_test/process/environ.c"

CMakeFiles/environ.dir/environ.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/environ.dir/environ.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/home/tan/Documents/linux imbed/linux_api_test/process/environ.c" > CMakeFiles/environ.dir/environ.c.i

CMakeFiles/environ.dir/environ.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/environ.dir/environ.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/home/tan/Documents/linux imbed/linux_api_test/process/environ.c" -o CMakeFiles/environ.dir/environ.c.s

CMakeFiles/environ.dir/environ.c.o.requires:

.PHONY : CMakeFiles/environ.dir/environ.c.o.requires

CMakeFiles/environ.dir/environ.c.o.provides: CMakeFiles/environ.dir/environ.c.o.requires
	$(MAKE) -f CMakeFiles/environ.dir/build.make CMakeFiles/environ.dir/environ.c.o.provides.build
.PHONY : CMakeFiles/environ.dir/environ.c.o.provides

CMakeFiles/environ.dir/environ.c.o.provides.build: CMakeFiles/environ.dir/environ.c.o


# Object files for target environ
environ_OBJECTS = \
"CMakeFiles/environ.dir/environ.c.o"

# External object files for target environ
environ_EXTERNAL_OBJECTS =

environ: CMakeFiles/environ.dir/environ.c.o
environ: CMakeFiles/environ.dir/build.make
environ: CMakeFiles/environ.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/tan/Documents/linux imbed/linux_api_test/process/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable environ"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/environ.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/environ.dir/build: environ

.PHONY : CMakeFiles/environ.dir/build

CMakeFiles/environ.dir/requires: CMakeFiles/environ.dir/environ.c.o.requires

.PHONY : CMakeFiles/environ.dir/requires

CMakeFiles/environ.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/environ.dir/cmake_clean.cmake
.PHONY : CMakeFiles/environ.dir/clean

CMakeFiles/environ.dir/depend:
	cd "/home/tan/Documents/linux imbed/linux_api_test/process/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/tan/Documents/linux imbed/linux_api_test/process" "/home/tan/Documents/linux imbed/linux_api_test/process" "/home/tan/Documents/linux imbed/linux_api_test/process/build" "/home/tan/Documents/linux imbed/linux_api_test/process/build" "/home/tan/Documents/linux imbed/linux_api_test/process/build/CMakeFiles/environ.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/environ.dir/depend

