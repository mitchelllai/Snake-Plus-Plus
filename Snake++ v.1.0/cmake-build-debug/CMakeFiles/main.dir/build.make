# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/mitchelllai/Downloads/Snake++ v.1.0"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/mitchelllai/Downloads/Snake++ v.1.0/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/main.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/main.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/main.dir/flags.make

CMakeFiles/main.dir/src/main.cxx.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/src/main.cxx.o: ../src/main.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/mitchelllai/Downloads/Snake++ v.1.0/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/main.dir/src/main.cxx.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/src/main.cxx.o -c "/Users/mitchelllai/Downloads/Snake++ v.1.0/src/main.cxx"

CMakeFiles/main.dir/src/main.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/src/main.cxx.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/mitchelllai/Downloads/Snake++ v.1.0/src/main.cxx" > CMakeFiles/main.dir/src/main.cxx.i

CMakeFiles/main.dir/src/main.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/src/main.cxx.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/mitchelllai/Downloads/Snake++ v.1.0/src/main.cxx" -o CMakeFiles/main.dir/src/main.cxx.s

CMakeFiles/main.dir/src/view.cxx.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/src/view.cxx.o: ../src/view.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/mitchelllai/Downloads/Snake++ v.1.0/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/main.dir/src/view.cxx.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/src/view.cxx.o -c "/Users/mitchelllai/Downloads/Snake++ v.1.0/src/view.cxx"

CMakeFiles/main.dir/src/view.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/src/view.cxx.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/mitchelllai/Downloads/Snake++ v.1.0/src/view.cxx" > CMakeFiles/main.dir/src/view.cxx.i

CMakeFiles/main.dir/src/view.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/src/view.cxx.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/mitchelllai/Downloads/Snake++ v.1.0/src/view.cxx" -o CMakeFiles/main.dir/src/view.cxx.s

CMakeFiles/main.dir/src/controller.cxx.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/src/controller.cxx.o: ../src/controller.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/mitchelllai/Downloads/Snake++ v.1.0/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/main.dir/src/controller.cxx.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/src/controller.cxx.o -c "/Users/mitchelllai/Downloads/Snake++ v.1.0/src/controller.cxx"

CMakeFiles/main.dir/src/controller.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/src/controller.cxx.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/mitchelllai/Downloads/Snake++ v.1.0/src/controller.cxx" > CMakeFiles/main.dir/src/controller.cxx.i

CMakeFiles/main.dir/src/controller.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/src/controller.cxx.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/mitchelllai/Downloads/Snake++ v.1.0/src/controller.cxx" -o CMakeFiles/main.dir/src/controller.cxx.s

CMakeFiles/main.dir/src/geometry.cxx.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/src/geometry.cxx.o: ../src/geometry.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/mitchelllai/Downloads/Snake++ v.1.0/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/main.dir/src/geometry.cxx.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/src/geometry.cxx.o -c "/Users/mitchelllai/Downloads/Snake++ v.1.0/src/geometry.cxx"

CMakeFiles/main.dir/src/geometry.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/src/geometry.cxx.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/mitchelllai/Downloads/Snake++ v.1.0/src/geometry.cxx" > CMakeFiles/main.dir/src/geometry.cxx.i

CMakeFiles/main.dir/src/geometry.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/src/geometry.cxx.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/mitchelllai/Downloads/Snake++ v.1.0/src/geometry.cxx" -o CMakeFiles/main.dir/src/geometry.cxx.s

CMakeFiles/main.dir/src/snake.cxx.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/src/snake.cxx.o: ../src/snake.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/mitchelllai/Downloads/Snake++ v.1.0/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/main.dir/src/snake.cxx.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/src/snake.cxx.o -c "/Users/mitchelllai/Downloads/Snake++ v.1.0/src/snake.cxx"

CMakeFiles/main.dir/src/snake.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/src/snake.cxx.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/mitchelllai/Downloads/Snake++ v.1.0/src/snake.cxx" > CMakeFiles/main.dir/src/snake.cxx.i

CMakeFiles/main.dir/src/snake.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/src/snake.cxx.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/mitchelllai/Downloads/Snake++ v.1.0/src/snake.cxx" -o CMakeFiles/main.dir/src/snake.cxx.s

CMakeFiles/main.dir/src/food.cxx.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/src/food.cxx.o: ../src/food.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/mitchelllai/Downloads/Snake++ v.1.0/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/main.dir/src/food.cxx.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/src/food.cxx.o -c "/Users/mitchelllai/Downloads/Snake++ v.1.0/src/food.cxx"

CMakeFiles/main.dir/src/food.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/src/food.cxx.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/mitchelllai/Downloads/Snake++ v.1.0/src/food.cxx" > CMakeFiles/main.dir/src/food.cxx.i

CMakeFiles/main.dir/src/food.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/src/food.cxx.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/mitchelllai/Downloads/Snake++ v.1.0/src/food.cxx" -o CMakeFiles/main.dir/src/food.cxx.s

CMakeFiles/main.dir/src/model.cxx.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/src/model.cxx.o: ../src/model.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/mitchelllai/Downloads/Snake++ v.1.0/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/main.dir/src/model.cxx.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/src/model.cxx.o -c "/Users/mitchelllai/Downloads/Snake++ v.1.0/src/model.cxx"

CMakeFiles/main.dir/src/model.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/src/model.cxx.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/mitchelllai/Downloads/Snake++ v.1.0/src/model.cxx" > CMakeFiles/main.dir/src/model.cxx.i

CMakeFiles/main.dir/src/model.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/src/model.cxx.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/mitchelllai/Downloads/Snake++ v.1.0/src/model.cxx" -o CMakeFiles/main.dir/src/model.cxx.s

# Object files for target main
main_OBJECTS = \
"CMakeFiles/main.dir/src/main.cxx.o" \
"CMakeFiles/main.dir/src/view.cxx.o" \
"CMakeFiles/main.dir/src/controller.cxx.o" \
"CMakeFiles/main.dir/src/geometry.cxx.o" \
"CMakeFiles/main.dir/src/snake.cxx.o" \
"CMakeFiles/main.dir/src/food.cxx.o" \
"CMakeFiles/main.dir/src/model.cxx.o"

# External object files for target main
main_EXTERNAL_OBJECTS =

main: CMakeFiles/main.dir/src/main.cxx.o
main: CMakeFiles/main.dir/src/view.cxx.o
main: CMakeFiles/main.dir/src/controller.cxx.o
main: CMakeFiles/main.dir/src/geometry.cxx.o
main: CMakeFiles/main.dir/src/snake.cxx.o
main: CMakeFiles/main.dir/src/food.cxx.o
main: CMakeFiles/main.dir/src/model.cxx.o
main: CMakeFiles/main.dir/build.make
main: .cs211/lib/ge211/src/libge211.a
main: /usr/local/lib/libSDL2main.a
main: /usr/local/lib/libSDL2.dylib
main: /usr/local/lib/libSDL2_image.dylib
main: /usr/local/lib/libSDL2_mixer.dylib
main: /usr/local/lib/libSDL2_ttf.dylib
main: CMakeFiles/main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/mitchelllai/Downloads/Snake++ v.1.0/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX executable main"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/main.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/main.dir/build: main

.PHONY : CMakeFiles/main.dir/build

CMakeFiles/main.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/main.dir/cmake_clean.cmake
.PHONY : CMakeFiles/main.dir/clean

CMakeFiles/main.dir/depend:
	cd "/Users/mitchelllai/Downloads/Snake++ v.1.0/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/mitchelllai/Downloads/Snake++ v.1.0" "/Users/mitchelllai/Downloads/Snake++ v.1.0" "/Users/mitchelllai/Downloads/Snake++ v.1.0/cmake-build-debug" "/Users/mitchelllai/Downloads/Snake++ v.1.0/cmake-build-debug" "/Users/mitchelllai/Downloads/Snake++ v.1.0/cmake-build-debug/CMakeFiles/main.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/main.dir/depend

