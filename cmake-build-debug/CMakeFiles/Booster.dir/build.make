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
CMAKE_BINARY_DIR = /Users/timothysmith/Code/Booster/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Booster.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Booster.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Booster.dir/flags.make

CMakeFiles/Booster.dir/UDPClient.cpp.o: CMakeFiles/Booster.dir/flags.make
CMakeFiles/Booster.dir/UDPClient.cpp.o: ../UDPClient.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/timothysmith/Code/Booster/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Booster.dir/UDPClient.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Booster.dir/UDPClient.cpp.o -c /Users/timothysmith/Code/Booster/UDPClient.cpp

CMakeFiles/Booster.dir/UDPClient.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Booster.dir/UDPClient.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/timothysmith/Code/Booster/UDPClient.cpp > CMakeFiles/Booster.dir/UDPClient.cpp.i

CMakeFiles/Booster.dir/UDPClient.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Booster.dir/UDPClient.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/timothysmith/Code/Booster/UDPClient.cpp -o CMakeFiles/Booster.dir/UDPClient.cpp.s

CMakeFiles/Booster.dir/UDPClient.cpp.o.requires:

.PHONY : CMakeFiles/Booster.dir/UDPClient.cpp.o.requires

CMakeFiles/Booster.dir/UDPClient.cpp.o.provides: CMakeFiles/Booster.dir/UDPClient.cpp.o.requires
	$(MAKE) -f CMakeFiles/Booster.dir/build.make CMakeFiles/Booster.dir/UDPClient.cpp.o.provides.build
.PHONY : CMakeFiles/Booster.dir/UDPClient.cpp.o.provides

CMakeFiles/Booster.dir/UDPClient.cpp.o.provides.build: CMakeFiles/Booster.dir/UDPClient.cpp.o


CMakeFiles/Booster.dir/main.cpp.o: CMakeFiles/Booster.dir/flags.make
CMakeFiles/Booster.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/timothysmith/Code/Booster/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Booster.dir/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Booster.dir/main.cpp.o -c /Users/timothysmith/Code/Booster/main.cpp

CMakeFiles/Booster.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Booster.dir/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/timothysmith/Code/Booster/main.cpp > CMakeFiles/Booster.dir/main.cpp.i

CMakeFiles/Booster.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Booster.dir/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/timothysmith/Code/Booster/main.cpp -o CMakeFiles/Booster.dir/main.cpp.s

CMakeFiles/Booster.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/Booster.dir/main.cpp.o.requires

CMakeFiles/Booster.dir/main.cpp.o.provides: CMakeFiles/Booster.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/Booster.dir/build.make CMakeFiles/Booster.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/Booster.dir/main.cpp.o.provides

CMakeFiles/Booster.dir/main.cpp.o.provides.build: CMakeFiles/Booster.dir/main.cpp.o


CMakeFiles/Booster.dir/UDPServer.cpp.o: CMakeFiles/Booster.dir/flags.make
CMakeFiles/Booster.dir/UDPServer.cpp.o: ../UDPServer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/timothysmith/Code/Booster/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Booster.dir/UDPServer.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Booster.dir/UDPServer.cpp.o -c /Users/timothysmith/Code/Booster/UDPServer.cpp

CMakeFiles/Booster.dir/UDPServer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Booster.dir/UDPServer.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/timothysmith/Code/Booster/UDPServer.cpp > CMakeFiles/Booster.dir/UDPServer.cpp.i

CMakeFiles/Booster.dir/UDPServer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Booster.dir/UDPServer.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/timothysmith/Code/Booster/UDPServer.cpp -o CMakeFiles/Booster.dir/UDPServer.cpp.s

CMakeFiles/Booster.dir/UDPServer.cpp.o.requires:

.PHONY : CMakeFiles/Booster.dir/UDPServer.cpp.o.requires

CMakeFiles/Booster.dir/UDPServer.cpp.o.provides: CMakeFiles/Booster.dir/UDPServer.cpp.o.requires
	$(MAKE) -f CMakeFiles/Booster.dir/build.make CMakeFiles/Booster.dir/UDPServer.cpp.o.provides.build
.PHONY : CMakeFiles/Booster.dir/UDPServer.cpp.o.provides

CMakeFiles/Booster.dir/UDPServer.cpp.o.provides.build: CMakeFiles/Booster.dir/UDPServer.cpp.o


# Object files for target Booster
Booster_OBJECTS = \
"CMakeFiles/Booster.dir/UDPClient.cpp.o" \
"CMakeFiles/Booster.dir/main.cpp.o" \
"CMakeFiles/Booster.dir/UDPServer.cpp.o"

# External object files for target Booster
Booster_EXTERNAL_OBJECTS =

Booster: CMakeFiles/Booster.dir/UDPClient.cpp.o
Booster: CMakeFiles/Booster.dir/main.cpp.o
Booster: CMakeFiles/Booster.dir/UDPServer.cpp.o
Booster: CMakeFiles/Booster.dir/build.make
Booster: /usr/local/lib/libboost_system-mt.dylib
Booster: /usr/local/lib/libboost_filesystem-mt.dylib
Booster: CMakeFiles/Booster.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/timothysmith/Code/Booster/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable Booster"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Booster.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Booster.dir/build: Booster

.PHONY : CMakeFiles/Booster.dir/build

CMakeFiles/Booster.dir/requires: CMakeFiles/Booster.dir/UDPClient.cpp.o.requires
CMakeFiles/Booster.dir/requires: CMakeFiles/Booster.dir/main.cpp.o.requires
CMakeFiles/Booster.dir/requires: CMakeFiles/Booster.dir/UDPServer.cpp.o.requires

.PHONY : CMakeFiles/Booster.dir/requires

CMakeFiles/Booster.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Booster.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Booster.dir/clean

CMakeFiles/Booster.dir/depend:
	cd /Users/timothysmith/Code/Booster/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/timothysmith/Code/Booster /Users/timothysmith/Code/Booster /Users/timothysmith/Code/Booster/cmake-build-debug /Users/timothysmith/Code/Booster/cmake-build-debug /Users/timothysmith/Code/Booster/cmake-build-debug/CMakeFiles/Booster.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Booster.dir/depend
