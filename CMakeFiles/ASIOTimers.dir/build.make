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
include CMakeFiles/ASIOTimers.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ASIOTimers.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ASIOTimers.dir/flags.make

CMakeFiles/ASIOTimers.dir/BookTutorial/ASIOTimers.cpp.o: CMakeFiles/ASIOTimers.dir/flags.make
CMakeFiles/ASIOTimers.dir/BookTutorial/ASIOTimers.cpp.o: BookTutorial/ASIOTimers.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/timothysmith/Code/Booster/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ASIOTimers.dir/BookTutorial/ASIOTimers.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ASIOTimers.dir/BookTutorial/ASIOTimers.cpp.o -c /Users/timothysmith/Code/Booster/BookTutorial/ASIOTimers.cpp

CMakeFiles/ASIOTimers.dir/BookTutorial/ASIOTimers.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ASIOTimers.dir/BookTutorial/ASIOTimers.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/timothysmith/Code/Booster/BookTutorial/ASIOTimers.cpp > CMakeFiles/ASIOTimers.dir/BookTutorial/ASIOTimers.cpp.i

CMakeFiles/ASIOTimers.dir/BookTutorial/ASIOTimers.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ASIOTimers.dir/BookTutorial/ASIOTimers.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/timothysmith/Code/Booster/BookTutorial/ASIOTimers.cpp -o CMakeFiles/ASIOTimers.dir/BookTutorial/ASIOTimers.cpp.s

CMakeFiles/ASIOTimers.dir/BookTutorial/ASIOTimers.cpp.o.requires:

.PHONY : CMakeFiles/ASIOTimers.dir/BookTutorial/ASIOTimers.cpp.o.requires

CMakeFiles/ASIOTimers.dir/BookTutorial/ASIOTimers.cpp.o.provides: CMakeFiles/ASIOTimers.dir/BookTutorial/ASIOTimers.cpp.o.requires
	$(MAKE) -f CMakeFiles/ASIOTimers.dir/build.make CMakeFiles/ASIOTimers.dir/BookTutorial/ASIOTimers.cpp.o.provides.build
.PHONY : CMakeFiles/ASIOTimers.dir/BookTutorial/ASIOTimers.cpp.o.provides

CMakeFiles/ASIOTimers.dir/BookTutorial/ASIOTimers.cpp.o.provides.build: CMakeFiles/ASIOTimers.dir/BookTutorial/ASIOTimers.cpp.o


# Object files for target ASIOTimers
ASIOTimers_OBJECTS = \
"CMakeFiles/ASIOTimers.dir/BookTutorial/ASIOTimers.cpp.o"

# External object files for target ASIOTimers
ASIOTimers_EXTERNAL_OBJECTS =

ASIOTimers: CMakeFiles/ASIOTimers.dir/BookTutorial/ASIOTimers.cpp.o
ASIOTimers: CMakeFiles/ASIOTimers.dir/build.make
ASIOTimers: /usr/local/lib/libboost_system-mt.dylib
ASIOTimers: /usr/local/lib/libboost_filesystem-mt.dylib
ASIOTimers: /usr/local/lib/libboost_thread-mt.dylib
ASIOTimers: CMakeFiles/ASIOTimers.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/timothysmith/Code/Booster/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ASIOTimers"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ASIOTimers.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ASIOTimers.dir/build: ASIOTimers

.PHONY : CMakeFiles/ASIOTimers.dir/build

CMakeFiles/ASIOTimers.dir/requires: CMakeFiles/ASIOTimers.dir/BookTutorial/ASIOTimers.cpp.o.requires

.PHONY : CMakeFiles/ASIOTimers.dir/requires

CMakeFiles/ASIOTimers.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ASIOTimers.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ASIOTimers.dir/clean

CMakeFiles/ASIOTimers.dir/depend:
	cd /Users/timothysmith/Code/Booster && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/timothysmith/Code/Booster /Users/timothysmith/Code/Booster /Users/timothysmith/Code/Booster /Users/timothysmith/Code/Booster /Users/timothysmith/Code/Booster/CMakeFiles/ASIOTimers.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ASIOTimers.dir/depend

