# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/timothysmith/Code/Booster

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/timothysmith/Code/Booster

# Include any dependencies generated for this target.
include CMakeFiles/AsynchronousClient.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/AsynchronousClient.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/AsynchronousClient.dir/flags.make

CMakeFiles/AsynchronousClient.dir/ClientServer/asynchronousclient.cpp.o: CMakeFiles/AsynchronousClient.dir/flags.make
CMakeFiles/AsynchronousClient.dir/ClientServer/asynchronousclient.cpp.o: ClientServer/asynchronousclient.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/timothysmith/Code/Booster/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/AsynchronousClient.dir/ClientServer/asynchronousclient.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/AsynchronousClient.dir/ClientServer/asynchronousclient.cpp.o -c /Users/timothysmith/Code/Booster/ClientServer/asynchronousclient.cpp

CMakeFiles/AsynchronousClient.dir/ClientServer/asynchronousclient.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AsynchronousClient.dir/ClientServer/asynchronousclient.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/timothysmith/Code/Booster/ClientServer/asynchronousclient.cpp > CMakeFiles/AsynchronousClient.dir/ClientServer/asynchronousclient.cpp.i

CMakeFiles/AsynchronousClient.dir/ClientServer/asynchronousclient.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AsynchronousClient.dir/ClientServer/asynchronousclient.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/timothysmith/Code/Booster/ClientServer/asynchronousclient.cpp -o CMakeFiles/AsynchronousClient.dir/ClientServer/asynchronousclient.cpp.s

CMakeFiles/AsynchronousClient.dir/ClientServer/asynchronousclient.cpp.o.requires:

.PHONY : CMakeFiles/AsynchronousClient.dir/ClientServer/asynchronousclient.cpp.o.requires

CMakeFiles/AsynchronousClient.dir/ClientServer/asynchronousclient.cpp.o.provides: CMakeFiles/AsynchronousClient.dir/ClientServer/asynchronousclient.cpp.o.requires
	$(MAKE) -f CMakeFiles/AsynchronousClient.dir/build.make CMakeFiles/AsynchronousClient.dir/ClientServer/asynchronousclient.cpp.o.provides.build
.PHONY : CMakeFiles/AsynchronousClient.dir/ClientServer/asynchronousclient.cpp.o.provides

CMakeFiles/AsynchronousClient.dir/ClientServer/asynchronousclient.cpp.o.provides.build: CMakeFiles/AsynchronousClient.dir/ClientServer/asynchronousclient.cpp.o


# Object files for target AsynchronousClient
AsynchronousClient_OBJECTS = \
"CMakeFiles/AsynchronousClient.dir/ClientServer/asynchronousclient.cpp.o"

# External object files for target AsynchronousClient
AsynchronousClient_EXTERNAL_OBJECTS =

AsynchronousClient: CMakeFiles/AsynchronousClient.dir/ClientServer/asynchronousclient.cpp.o
AsynchronousClient: CMakeFiles/AsynchronousClient.dir/build.make
AsynchronousClient: /usr/local/lib/libboost_system-mt.dylib
AsynchronousClient: /usr/local/lib/libboost_filesystem-mt.dylib
AsynchronousClient: /usr/local/lib/libboost_thread-mt.dylib
AsynchronousClient: CMakeFiles/AsynchronousClient.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/timothysmith/Code/Booster/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable AsynchronousClient"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/AsynchronousClient.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/AsynchronousClient.dir/build: AsynchronousClient

.PHONY : CMakeFiles/AsynchronousClient.dir/build

CMakeFiles/AsynchronousClient.dir/requires: CMakeFiles/AsynchronousClient.dir/ClientServer/asynchronousclient.cpp.o.requires

.PHONY : CMakeFiles/AsynchronousClient.dir/requires

CMakeFiles/AsynchronousClient.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/AsynchronousClient.dir/cmake_clean.cmake
.PHONY : CMakeFiles/AsynchronousClient.dir/clean

CMakeFiles/AsynchronousClient.dir/depend:
	cd /Users/timothysmith/Code/Booster && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/timothysmith/Code/Booster /Users/timothysmith/Code/Booster /Users/timothysmith/Code/Booster /Users/timothysmith/Code/Booster /Users/timothysmith/Code/Booster/CMakeFiles/AsynchronousClient.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/AsynchronousClient.dir/depend

