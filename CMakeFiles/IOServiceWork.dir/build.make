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
include CMakeFiles/IOServiceWork.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/IOServiceWork.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/IOServiceWork.dir/flags.make

CMakeFiles/IOServiceWork.dir/BookTutorial/IOServiceWork.cpp.o: CMakeFiles/IOServiceWork.dir/flags.make
CMakeFiles/IOServiceWork.dir/BookTutorial/IOServiceWork.cpp.o: BookTutorial/IOServiceWork.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/timothysmith/Code/Booster/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/IOServiceWork.dir/BookTutorial/IOServiceWork.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/IOServiceWork.dir/BookTutorial/IOServiceWork.cpp.o -c /Users/timothysmith/Code/Booster/BookTutorial/IOServiceWork.cpp

CMakeFiles/IOServiceWork.dir/BookTutorial/IOServiceWork.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/IOServiceWork.dir/BookTutorial/IOServiceWork.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/timothysmith/Code/Booster/BookTutorial/IOServiceWork.cpp > CMakeFiles/IOServiceWork.dir/BookTutorial/IOServiceWork.cpp.i

CMakeFiles/IOServiceWork.dir/BookTutorial/IOServiceWork.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/IOServiceWork.dir/BookTutorial/IOServiceWork.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/timothysmith/Code/Booster/BookTutorial/IOServiceWork.cpp -o CMakeFiles/IOServiceWork.dir/BookTutorial/IOServiceWork.cpp.s

CMakeFiles/IOServiceWork.dir/BookTutorial/IOServiceWork.cpp.o.requires:

.PHONY : CMakeFiles/IOServiceWork.dir/BookTutorial/IOServiceWork.cpp.o.requires

CMakeFiles/IOServiceWork.dir/BookTutorial/IOServiceWork.cpp.o.provides: CMakeFiles/IOServiceWork.dir/BookTutorial/IOServiceWork.cpp.o.requires
	$(MAKE) -f CMakeFiles/IOServiceWork.dir/build.make CMakeFiles/IOServiceWork.dir/BookTutorial/IOServiceWork.cpp.o.provides.build
.PHONY : CMakeFiles/IOServiceWork.dir/BookTutorial/IOServiceWork.cpp.o.provides

CMakeFiles/IOServiceWork.dir/BookTutorial/IOServiceWork.cpp.o.provides.build: CMakeFiles/IOServiceWork.dir/BookTutorial/IOServiceWork.cpp.o


# Object files for target IOServiceWork
IOServiceWork_OBJECTS = \
"CMakeFiles/IOServiceWork.dir/BookTutorial/IOServiceWork.cpp.o"

# External object files for target IOServiceWork
IOServiceWork_EXTERNAL_OBJECTS =

IOServiceWork: CMakeFiles/IOServiceWork.dir/BookTutorial/IOServiceWork.cpp.o
IOServiceWork: CMakeFiles/IOServiceWork.dir/build.make
IOServiceWork: /usr/local/lib/libboost_system-mt.dylib
IOServiceWork: /usr/local/lib/libboost_filesystem-mt.dylib
IOServiceWork: /usr/local/lib/libboost_thread-mt.dylib
IOServiceWork: CMakeFiles/IOServiceWork.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/timothysmith/Code/Booster/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable IOServiceWork"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/IOServiceWork.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/IOServiceWork.dir/build: IOServiceWork

.PHONY : CMakeFiles/IOServiceWork.dir/build

CMakeFiles/IOServiceWork.dir/requires: CMakeFiles/IOServiceWork.dir/BookTutorial/IOServiceWork.cpp.o.requires

.PHONY : CMakeFiles/IOServiceWork.dir/requires

CMakeFiles/IOServiceWork.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/IOServiceWork.dir/cmake_clean.cmake
.PHONY : CMakeFiles/IOServiceWork.dir/clean

CMakeFiles/IOServiceWork.dir/depend:
	cd /Users/timothysmith/Code/Booster && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/timothysmith/Code/Booster /Users/timothysmith/Code/Booster /Users/timothysmith/Code/Booster /Users/timothysmith/Code/Booster /Users/timothysmith/Code/Booster/CMakeFiles/IOServiceWork.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/IOServiceWork.dir/depend

