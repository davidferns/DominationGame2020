# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.15

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2019.3.3\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2019.3.3\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "C:\Users\David Fernandes\CLionProjects\Assignment_2"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Users\David Fernandes\CLionProjects\Assignment_2\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/Assignment_2.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Assignment_2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Assignment_2.dir/flags.make

CMakeFiles/Assignment_2.dir/main.c.obj: CMakeFiles/Assignment_2.dir/flags.make
CMakeFiles/Assignment_2.dir/main.c.obj: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\David Fernandes\CLionProjects\Assignment_2\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Assignment_2.dir/main.c.obj"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\Assignment_2.dir\main.c.obj   -c "C:\Users\David Fernandes\CLionProjects\Assignment_2\main.c"

CMakeFiles/Assignment_2.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Assignment_2.dir/main.c.i"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "C:\Users\David Fernandes\CLionProjects\Assignment_2\main.c" > CMakeFiles\Assignment_2.dir\main.c.i

CMakeFiles/Assignment_2.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Assignment_2.dir/main.c.s"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "C:\Users\David Fernandes\CLionProjects\Assignment_2\main.c" -o CMakeFiles\Assignment_2.dir\main.c.s

CMakeFiles/Assignment_2.dir/game_init.c.obj: CMakeFiles/Assignment_2.dir/flags.make
CMakeFiles/Assignment_2.dir/game_init.c.obj: ../game_init.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\David Fernandes\CLionProjects\Assignment_2\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/Assignment_2.dir/game_init.c.obj"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\Assignment_2.dir\game_init.c.obj   -c "C:\Users\David Fernandes\CLionProjects\Assignment_2\game_init.c"

CMakeFiles/Assignment_2.dir/game_init.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Assignment_2.dir/game_init.c.i"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "C:\Users\David Fernandes\CLionProjects\Assignment_2\game_init.c" > CMakeFiles\Assignment_2.dir\game_init.c.i

CMakeFiles/Assignment_2.dir/game_init.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Assignment_2.dir/game_init.c.s"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "C:\Users\David Fernandes\CLionProjects\Assignment_2\game_init.c" -o CMakeFiles\Assignment_2.dir\game_init.c.s

CMakeFiles/Assignment_2.dir/input_output.c.obj: CMakeFiles/Assignment_2.dir/flags.make
CMakeFiles/Assignment_2.dir/input_output.c.obj: ../input_output.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\David Fernandes\CLionProjects\Assignment_2\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/Assignment_2.dir/input_output.c.obj"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\Assignment_2.dir\input_output.c.obj   -c "C:\Users\David Fernandes\CLionProjects\Assignment_2\input_output.c"

CMakeFiles/Assignment_2.dir/input_output.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Assignment_2.dir/input_output.c.i"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "C:\Users\David Fernandes\CLionProjects\Assignment_2\input_output.c" > CMakeFiles\Assignment_2.dir\input_output.c.i

CMakeFiles/Assignment_2.dir/input_output.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Assignment_2.dir/input_output.c.s"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "C:\Users\David Fernandes\CLionProjects\Assignment_2\input_output.c" -o CMakeFiles\Assignment_2.dir\input_output.c.s

CMakeFiles/Assignment_2.dir/Stack.c.obj: CMakeFiles/Assignment_2.dir/flags.make
CMakeFiles/Assignment_2.dir/Stack.c.obj: ../Stack.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\David Fernandes\CLionProjects\Assignment_2\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/Assignment_2.dir/Stack.c.obj"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\Assignment_2.dir\Stack.c.obj   -c "C:\Users\David Fernandes\CLionProjects\Assignment_2\Stack.c"

CMakeFiles/Assignment_2.dir/Stack.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Assignment_2.dir/Stack.c.i"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "C:\Users\David Fernandes\CLionProjects\Assignment_2\Stack.c" > CMakeFiles\Assignment_2.dir\Stack.c.i

CMakeFiles/Assignment_2.dir/Stack.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Assignment_2.dir/Stack.c.s"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "C:\Users\David Fernandes\CLionProjects\Assignment_2\Stack.c" -o CMakeFiles\Assignment_2.dir\Stack.c.s

# Object files for target Assignment_2
Assignment_2_OBJECTS = \
"CMakeFiles/Assignment_2.dir/main.c.obj" \
"CMakeFiles/Assignment_2.dir/game_init.c.obj" \
"CMakeFiles/Assignment_2.dir/input_output.c.obj" \
"CMakeFiles/Assignment_2.dir/Stack.c.obj"

# External object files for target Assignment_2
Assignment_2_EXTERNAL_OBJECTS =

Assignment_2.exe: CMakeFiles/Assignment_2.dir/main.c.obj
Assignment_2.exe: CMakeFiles/Assignment_2.dir/game_init.c.obj
Assignment_2.exe: CMakeFiles/Assignment_2.dir/input_output.c.obj
Assignment_2.exe: CMakeFiles/Assignment_2.dir/Stack.c.obj
Assignment_2.exe: CMakeFiles/Assignment_2.dir/build.make
Assignment_2.exe: CMakeFiles/Assignment_2.dir/linklibs.rsp
Assignment_2.exe: CMakeFiles/Assignment_2.dir/objects1.rsp
Assignment_2.exe: CMakeFiles/Assignment_2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="C:\Users\David Fernandes\CLionProjects\Assignment_2\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Linking C executable Assignment_2.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Assignment_2.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Assignment_2.dir/build: Assignment_2.exe

.PHONY : CMakeFiles/Assignment_2.dir/build

CMakeFiles/Assignment_2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Assignment_2.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Assignment_2.dir/clean

CMakeFiles/Assignment_2.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Users\David Fernandes\CLionProjects\Assignment_2" "C:\Users\David Fernandes\CLionProjects\Assignment_2" "C:\Users\David Fernandes\CLionProjects\Assignment_2\cmake-build-debug" "C:\Users\David Fernandes\CLionProjects\Assignment_2\cmake-build-debug" "C:\Users\David Fernandes\CLionProjects\Assignment_2\cmake-build-debug\CMakeFiles\Assignment_2.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/Assignment_2.dir/depend
