# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/angga/Documents/LEN/c-logger

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/angga/Documents/LEN/c-logger/build

# Include any dependencies generated for this target.
include CMakeFiles/shared-objects.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/shared-objects.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/shared-objects.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/shared-objects.dir/flags.make

CMakeFiles/shared-objects.dir/src/services/example.cpp.o: CMakeFiles/shared-objects.dir/flags.make
CMakeFiles/shared-objects.dir/src/services/example.cpp.o: ../src/services/example.cpp
CMakeFiles/shared-objects.dir/src/services/example.cpp.o: CMakeFiles/shared-objects.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/angga/Documents/LEN/c-logger/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/shared-objects.dir/src/services/example.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/shared-objects.dir/src/services/example.cpp.o -MF CMakeFiles/shared-objects.dir/src/services/example.cpp.o.d -o CMakeFiles/shared-objects.dir/src/services/example.cpp.o -c /home/angga/Documents/LEN/c-logger/src/services/example.cpp

CMakeFiles/shared-objects.dir/src/services/example.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/shared-objects.dir/src/services/example.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/angga/Documents/LEN/c-logger/src/services/example.cpp > CMakeFiles/shared-objects.dir/src/services/example.cpp.i

CMakeFiles/shared-objects.dir/src/services/example.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/shared-objects.dir/src/services/example.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/angga/Documents/LEN/c-logger/src/services/example.cpp -o CMakeFiles/shared-objects.dir/src/services/example.cpp.s

CMakeFiles/shared-objects.dir/src/utils/logger.cpp.o: CMakeFiles/shared-objects.dir/flags.make
CMakeFiles/shared-objects.dir/src/utils/logger.cpp.o: ../src/utils/logger.cpp
CMakeFiles/shared-objects.dir/src/utils/logger.cpp.o: CMakeFiles/shared-objects.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/angga/Documents/LEN/c-logger/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/shared-objects.dir/src/utils/logger.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/shared-objects.dir/src/utils/logger.cpp.o -MF CMakeFiles/shared-objects.dir/src/utils/logger.cpp.o.d -o CMakeFiles/shared-objects.dir/src/utils/logger.cpp.o -c /home/angga/Documents/LEN/c-logger/src/utils/logger.cpp

CMakeFiles/shared-objects.dir/src/utils/logger.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/shared-objects.dir/src/utils/logger.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/angga/Documents/LEN/c-logger/src/utils/logger.cpp > CMakeFiles/shared-objects.dir/src/utils/logger.cpp.i

CMakeFiles/shared-objects.dir/src/utils/logger.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/shared-objects.dir/src/utils/logger.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/angga/Documents/LEN/c-logger/src/utils/logger.cpp -o CMakeFiles/shared-objects.dir/src/utils/logger.cpp.s

shared-objects: CMakeFiles/shared-objects.dir/src/services/example.cpp.o
shared-objects: CMakeFiles/shared-objects.dir/src/utils/logger.cpp.o
shared-objects: CMakeFiles/shared-objects.dir/build.make
.PHONY : shared-objects

# Rule to build all files generated by this target.
CMakeFiles/shared-objects.dir/build: shared-objects
.PHONY : CMakeFiles/shared-objects.dir/build

CMakeFiles/shared-objects.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/shared-objects.dir/cmake_clean.cmake
.PHONY : CMakeFiles/shared-objects.dir/clean

CMakeFiles/shared-objects.dir/depend:
	cd /home/angga/Documents/LEN/c-logger/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/angga/Documents/LEN/c-logger /home/angga/Documents/LEN/c-logger /home/angga/Documents/LEN/c-logger/build /home/angga/Documents/LEN/c-logger/build /home/angga/Documents/LEN/c-logger/build/CMakeFiles/shared-objects.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/shared-objects.dir/depend
