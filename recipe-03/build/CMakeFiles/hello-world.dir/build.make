# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.19.1/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.19.1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/cmillan/Library/Mobile Documents/com~apple~CloudDocs/Dev/c/cmake-cookbook/recipe-03"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/cmillan/Library/Mobile Documents/com~apple~CloudDocs/Dev/c/cmake-cookbook/recipe-03/build"

# Include any dependencies generated for this target.
include CMakeFiles/hello-world.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/hello-world.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/hello-world.dir/flags.make

CMakeFiles/hello-world.dir/hello-world.c.o: CMakeFiles/hello-world.dir/flags.make
CMakeFiles/hello-world.dir/hello-world.c.o: ../hello-world.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/cmillan/Library/Mobile Documents/com~apple~CloudDocs/Dev/c/cmake-cookbook/recipe-03/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/hello-world.dir/hello-world.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/hello-world.dir/hello-world.c.o -c "/Users/cmillan/Library/Mobile Documents/com~apple~CloudDocs/Dev/c/cmake-cookbook/recipe-03/hello-world.c"

CMakeFiles/hello-world.dir/hello-world.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/hello-world.dir/hello-world.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/cmillan/Library/Mobile Documents/com~apple~CloudDocs/Dev/c/cmake-cookbook/recipe-03/hello-world.c" > CMakeFiles/hello-world.dir/hello-world.c.i

CMakeFiles/hello-world.dir/hello-world.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/hello-world.dir/hello-world.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/cmillan/Library/Mobile Documents/com~apple~CloudDocs/Dev/c/cmake-cookbook/recipe-03/hello-world.c" -o CMakeFiles/hello-world.dir/hello-world.c.s

# Object files for target hello-world
hello__world_OBJECTS = \
"CMakeFiles/hello-world.dir/hello-world.c.o"

# External object files for target hello-world
hello__world_EXTERNAL_OBJECTS =

hello-world: CMakeFiles/hello-world.dir/hello-world.c.o
hello-world: CMakeFiles/hello-world.dir/build.make
hello-world: libmessage.a
hello-world: CMakeFiles/hello-world.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/cmillan/Library/Mobile Documents/com~apple~CloudDocs/Dev/c/cmake-cookbook/recipe-03/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable hello-world"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hello-world.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/hello-world.dir/build: hello-world

.PHONY : CMakeFiles/hello-world.dir/build

CMakeFiles/hello-world.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/hello-world.dir/cmake_clean.cmake
.PHONY : CMakeFiles/hello-world.dir/clean

CMakeFiles/hello-world.dir/depend:
	cd "/Users/cmillan/Library/Mobile Documents/com~apple~CloudDocs/Dev/c/cmake-cookbook/recipe-03/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/cmillan/Library/Mobile Documents/com~apple~CloudDocs/Dev/c/cmake-cookbook/recipe-03" "/Users/cmillan/Library/Mobile Documents/com~apple~CloudDocs/Dev/c/cmake-cookbook/recipe-03" "/Users/cmillan/Library/Mobile Documents/com~apple~CloudDocs/Dev/c/cmake-cookbook/recipe-03/build" "/Users/cmillan/Library/Mobile Documents/com~apple~CloudDocs/Dev/c/cmake-cookbook/recipe-03/build" "/Users/cmillan/Library/Mobile Documents/com~apple~CloudDocs/Dev/c/cmake-cookbook/recipe-03/build/CMakeFiles/hello-world.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/hello-world.dir/depend
