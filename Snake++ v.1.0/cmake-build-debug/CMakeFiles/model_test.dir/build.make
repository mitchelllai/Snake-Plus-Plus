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
include CMakeFiles/model_test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/model_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/model_test.dir/flags.make

CMakeFiles/model_test.dir/test/model_test.cxx.o: CMakeFiles/model_test.dir/flags.make
CMakeFiles/model_test.dir/test/model_test.cxx.o: ../test/model_test.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/mitchelllai/Downloads/Snake++ v.1.0/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/model_test.dir/test/model_test.cxx.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/model_test.dir/test/model_test.cxx.o -c "/Users/mitchelllai/Downloads/Snake++ v.1.0/test/model_test.cxx"

CMakeFiles/model_test.dir/test/model_test.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/model_test.dir/test/model_test.cxx.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/mitchelllai/Downloads/Snake++ v.1.0/test/model_test.cxx" > CMakeFiles/model_test.dir/test/model_test.cxx.i

CMakeFiles/model_test.dir/test/model_test.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/model_test.dir/test/model_test.cxx.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/mitchelllai/Downloads/Snake++ v.1.0/test/model_test.cxx" -o CMakeFiles/model_test.dir/test/model_test.cxx.s

CMakeFiles/model_test.dir/src/geometry.cxx.o: CMakeFiles/model_test.dir/flags.make
CMakeFiles/model_test.dir/src/geometry.cxx.o: ../src/geometry.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/mitchelllai/Downloads/Snake++ v.1.0/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/model_test.dir/src/geometry.cxx.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/model_test.dir/src/geometry.cxx.o -c "/Users/mitchelllai/Downloads/Snake++ v.1.0/src/geometry.cxx"

CMakeFiles/model_test.dir/src/geometry.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/model_test.dir/src/geometry.cxx.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/mitchelllai/Downloads/Snake++ v.1.0/src/geometry.cxx" > CMakeFiles/model_test.dir/src/geometry.cxx.i

CMakeFiles/model_test.dir/src/geometry.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/model_test.dir/src/geometry.cxx.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/mitchelllai/Downloads/Snake++ v.1.0/src/geometry.cxx" -o CMakeFiles/model_test.dir/src/geometry.cxx.s

CMakeFiles/model_test.dir/src/snake.cxx.o: CMakeFiles/model_test.dir/flags.make
CMakeFiles/model_test.dir/src/snake.cxx.o: ../src/snake.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/mitchelllai/Downloads/Snake++ v.1.0/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/model_test.dir/src/snake.cxx.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/model_test.dir/src/snake.cxx.o -c "/Users/mitchelllai/Downloads/Snake++ v.1.0/src/snake.cxx"

CMakeFiles/model_test.dir/src/snake.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/model_test.dir/src/snake.cxx.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/mitchelllai/Downloads/Snake++ v.1.0/src/snake.cxx" > CMakeFiles/model_test.dir/src/snake.cxx.i

CMakeFiles/model_test.dir/src/snake.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/model_test.dir/src/snake.cxx.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/mitchelllai/Downloads/Snake++ v.1.0/src/snake.cxx" -o CMakeFiles/model_test.dir/src/snake.cxx.s

CMakeFiles/model_test.dir/src/food.cxx.o: CMakeFiles/model_test.dir/flags.make
CMakeFiles/model_test.dir/src/food.cxx.o: ../src/food.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/mitchelllai/Downloads/Snake++ v.1.0/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/model_test.dir/src/food.cxx.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/model_test.dir/src/food.cxx.o -c "/Users/mitchelllai/Downloads/Snake++ v.1.0/src/food.cxx"

CMakeFiles/model_test.dir/src/food.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/model_test.dir/src/food.cxx.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/mitchelllai/Downloads/Snake++ v.1.0/src/food.cxx" > CMakeFiles/model_test.dir/src/food.cxx.i

CMakeFiles/model_test.dir/src/food.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/model_test.dir/src/food.cxx.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/mitchelllai/Downloads/Snake++ v.1.0/src/food.cxx" -o CMakeFiles/model_test.dir/src/food.cxx.s

CMakeFiles/model_test.dir/src/model.cxx.o: CMakeFiles/model_test.dir/flags.make
CMakeFiles/model_test.dir/src/model.cxx.o: ../src/model.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/mitchelllai/Downloads/Snake++ v.1.0/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/model_test.dir/src/model.cxx.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/model_test.dir/src/model.cxx.o -c "/Users/mitchelllai/Downloads/Snake++ v.1.0/src/model.cxx"

CMakeFiles/model_test.dir/src/model.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/model_test.dir/src/model.cxx.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/mitchelllai/Downloads/Snake++ v.1.0/src/model.cxx" > CMakeFiles/model_test.dir/src/model.cxx.i

CMakeFiles/model_test.dir/src/model.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/model_test.dir/src/model.cxx.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/mitchelllai/Downloads/Snake++ v.1.0/src/model.cxx" -o CMakeFiles/model_test.dir/src/model.cxx.s

# Object files for target model_test
model_test_OBJECTS = \
"CMakeFiles/model_test.dir/test/model_test.cxx.o" \
"CMakeFiles/model_test.dir/src/geometry.cxx.o" \
"CMakeFiles/model_test.dir/src/snake.cxx.o" \
"CMakeFiles/model_test.dir/src/food.cxx.o" \
"CMakeFiles/model_test.dir/src/model.cxx.o"

# External object files for target model_test
model_test_EXTERNAL_OBJECTS =

model_test: CMakeFiles/model_test.dir/test/model_test.cxx.o
model_test: CMakeFiles/model_test.dir/src/geometry.cxx.o
model_test: CMakeFiles/model_test.dir/src/snake.cxx.o
model_test: CMakeFiles/model_test.dir/src/food.cxx.o
model_test: CMakeFiles/model_test.dir/src/model.cxx.o
model_test: CMakeFiles/model_test.dir/build.make
model_test: .cs211/lib/catch/libcatch.a
model_test: .cs211/lib/ge211/src/libge211.a
model_test: /usr/local/lib/libSDL2main.a
model_test: /usr/local/lib/libSDL2.dylib
model_test: /usr/local/lib/libSDL2_image.dylib
model_test: /usr/local/lib/libSDL2_mixer.dylib
model_test: /usr/local/lib/libSDL2_ttf.dylib
model_test: CMakeFiles/model_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/mitchelllai/Downloads/Snake++ v.1.0/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable model_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/model_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/model_test.dir/build: model_test

.PHONY : CMakeFiles/model_test.dir/build

CMakeFiles/model_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/model_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/model_test.dir/clean

CMakeFiles/model_test.dir/depend:
	cd "/Users/mitchelllai/Downloads/Snake++ v.1.0/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/mitchelllai/Downloads/Snake++ v.1.0" "/Users/mitchelllai/Downloads/Snake++ v.1.0" "/Users/mitchelllai/Downloads/Snake++ v.1.0/cmake-build-debug" "/Users/mitchelllai/Downloads/Snake++ v.1.0/cmake-build-debug" "/Users/mitchelllai/Downloads/Snake++ v.1.0/cmake-build-debug/CMakeFiles/model_test.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/model_test.dir/depend

