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
CMAKE_COMMAND = /home/xwanghan/.local/lib/python3.8/site-packages/cmake/data/bin/cmake

# The command to remove a file.
RM = /home/xwanghan/.local/lib/python3.8/site-packages/cmake/data/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /mnt/d/study/marl/hanabi-learning-environment-master

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/d/study/marl/hanabi-learning-environment-master

# Include any dependencies generated for this target.
include hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/compiler_depend.make

# Include the progress variables for this target.
include hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/progress.make

# Include the compile flags for this target's objects.
include hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/flags.make

hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/hanabi_card.cc.o: hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/flags.make
hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/hanabi_card.cc.o: hanabi_learning_environment/hanabi_lib/hanabi_card.cc
hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/hanabi_card.cc.o: hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/study/marl/hanabi-learning-environment-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/hanabi_card.cc.o"
	cd /mnt/d/study/marl/hanabi-learning-environment-master/hanabi_learning_environment/hanabi_lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/hanabi_card.cc.o -MF CMakeFiles/hanabi.dir/hanabi_card.cc.o.d -o CMakeFiles/hanabi.dir/hanabi_card.cc.o -c /mnt/d/study/marl/hanabi-learning-environment-master/hanabi_learning_environment/hanabi_lib/hanabi_card.cc

hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/hanabi_card.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hanabi.dir/hanabi_card.cc.i"
	cd /mnt/d/study/marl/hanabi-learning-environment-master/hanabi_learning_environment/hanabi_lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/d/study/marl/hanabi-learning-environment-master/hanabi_learning_environment/hanabi_lib/hanabi_card.cc > CMakeFiles/hanabi.dir/hanabi_card.cc.i

hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/hanabi_card.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hanabi.dir/hanabi_card.cc.s"
	cd /mnt/d/study/marl/hanabi-learning-environment-master/hanabi_learning_environment/hanabi_lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/d/study/marl/hanabi-learning-environment-master/hanabi_learning_environment/hanabi_lib/hanabi_card.cc -o CMakeFiles/hanabi.dir/hanabi_card.cc.s

hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/hanabi_game.cc.o: hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/flags.make
hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/hanabi_game.cc.o: hanabi_learning_environment/hanabi_lib/hanabi_game.cc
hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/hanabi_game.cc.o: hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/study/marl/hanabi-learning-environment-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/hanabi_game.cc.o"
	cd /mnt/d/study/marl/hanabi-learning-environment-master/hanabi_learning_environment/hanabi_lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/hanabi_game.cc.o -MF CMakeFiles/hanabi.dir/hanabi_game.cc.o.d -o CMakeFiles/hanabi.dir/hanabi_game.cc.o -c /mnt/d/study/marl/hanabi-learning-environment-master/hanabi_learning_environment/hanabi_lib/hanabi_game.cc

hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/hanabi_game.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hanabi.dir/hanabi_game.cc.i"
	cd /mnt/d/study/marl/hanabi-learning-environment-master/hanabi_learning_environment/hanabi_lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/d/study/marl/hanabi-learning-environment-master/hanabi_learning_environment/hanabi_lib/hanabi_game.cc > CMakeFiles/hanabi.dir/hanabi_game.cc.i

hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/hanabi_game.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hanabi.dir/hanabi_game.cc.s"
	cd /mnt/d/study/marl/hanabi-learning-environment-master/hanabi_learning_environment/hanabi_lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/d/study/marl/hanabi-learning-environment-master/hanabi_learning_environment/hanabi_lib/hanabi_game.cc -o CMakeFiles/hanabi.dir/hanabi_game.cc.s

hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/hanabi_hand.cc.o: hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/flags.make
hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/hanabi_hand.cc.o: hanabi_learning_environment/hanabi_lib/hanabi_hand.cc
hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/hanabi_hand.cc.o: hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/study/marl/hanabi-learning-environment-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/hanabi_hand.cc.o"
	cd /mnt/d/study/marl/hanabi-learning-environment-master/hanabi_learning_environment/hanabi_lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/hanabi_hand.cc.o -MF CMakeFiles/hanabi.dir/hanabi_hand.cc.o.d -o CMakeFiles/hanabi.dir/hanabi_hand.cc.o -c /mnt/d/study/marl/hanabi-learning-environment-master/hanabi_learning_environment/hanabi_lib/hanabi_hand.cc

hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/hanabi_hand.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hanabi.dir/hanabi_hand.cc.i"
	cd /mnt/d/study/marl/hanabi-learning-environment-master/hanabi_learning_environment/hanabi_lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/d/study/marl/hanabi-learning-environment-master/hanabi_learning_environment/hanabi_lib/hanabi_hand.cc > CMakeFiles/hanabi.dir/hanabi_hand.cc.i

hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/hanabi_hand.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hanabi.dir/hanabi_hand.cc.s"
	cd /mnt/d/study/marl/hanabi-learning-environment-master/hanabi_learning_environment/hanabi_lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/d/study/marl/hanabi-learning-environment-master/hanabi_learning_environment/hanabi_lib/hanabi_hand.cc -o CMakeFiles/hanabi.dir/hanabi_hand.cc.s

hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/hanabi_history_item.cc.o: hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/flags.make
hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/hanabi_history_item.cc.o: hanabi_learning_environment/hanabi_lib/hanabi_history_item.cc
hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/hanabi_history_item.cc.o: hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/study/marl/hanabi-learning-environment-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/hanabi_history_item.cc.o"
	cd /mnt/d/study/marl/hanabi-learning-environment-master/hanabi_learning_environment/hanabi_lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/hanabi_history_item.cc.o -MF CMakeFiles/hanabi.dir/hanabi_history_item.cc.o.d -o CMakeFiles/hanabi.dir/hanabi_history_item.cc.o -c /mnt/d/study/marl/hanabi-learning-environment-master/hanabi_learning_environment/hanabi_lib/hanabi_history_item.cc

hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/hanabi_history_item.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hanabi.dir/hanabi_history_item.cc.i"
	cd /mnt/d/study/marl/hanabi-learning-environment-master/hanabi_learning_environment/hanabi_lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/d/study/marl/hanabi-learning-environment-master/hanabi_learning_environment/hanabi_lib/hanabi_history_item.cc > CMakeFiles/hanabi.dir/hanabi_history_item.cc.i

hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/hanabi_history_item.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hanabi.dir/hanabi_history_item.cc.s"
	cd /mnt/d/study/marl/hanabi-learning-environment-master/hanabi_learning_environment/hanabi_lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/d/study/marl/hanabi-learning-environment-master/hanabi_learning_environment/hanabi_lib/hanabi_history_item.cc -o CMakeFiles/hanabi.dir/hanabi_history_item.cc.s

hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/hanabi_move.cc.o: hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/flags.make
hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/hanabi_move.cc.o: hanabi_learning_environment/hanabi_lib/hanabi_move.cc
hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/hanabi_move.cc.o: hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/study/marl/hanabi-learning-environment-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/hanabi_move.cc.o"
	cd /mnt/d/study/marl/hanabi-learning-environment-master/hanabi_learning_environment/hanabi_lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/hanabi_move.cc.o -MF CMakeFiles/hanabi.dir/hanabi_move.cc.o.d -o CMakeFiles/hanabi.dir/hanabi_move.cc.o -c /mnt/d/study/marl/hanabi-learning-environment-master/hanabi_learning_environment/hanabi_lib/hanabi_move.cc

hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/hanabi_move.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hanabi.dir/hanabi_move.cc.i"
	cd /mnt/d/study/marl/hanabi-learning-environment-master/hanabi_learning_environment/hanabi_lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/d/study/marl/hanabi-learning-environment-master/hanabi_learning_environment/hanabi_lib/hanabi_move.cc > CMakeFiles/hanabi.dir/hanabi_move.cc.i

hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/hanabi_move.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hanabi.dir/hanabi_move.cc.s"
	cd /mnt/d/study/marl/hanabi-learning-environment-master/hanabi_learning_environment/hanabi_lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/d/study/marl/hanabi-learning-environment-master/hanabi_learning_environment/hanabi_lib/hanabi_move.cc -o CMakeFiles/hanabi.dir/hanabi_move.cc.s

hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/hanabi_observation.cc.o: hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/flags.make
hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/hanabi_observation.cc.o: hanabi_learning_environment/hanabi_lib/hanabi_observation.cc
hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/hanabi_observation.cc.o: hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/study/marl/hanabi-learning-environment-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/hanabi_observation.cc.o"
	cd /mnt/d/study/marl/hanabi-learning-environment-master/hanabi_learning_environment/hanabi_lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/hanabi_observation.cc.o -MF CMakeFiles/hanabi.dir/hanabi_observation.cc.o.d -o CMakeFiles/hanabi.dir/hanabi_observation.cc.o -c /mnt/d/study/marl/hanabi-learning-environment-master/hanabi_learning_environment/hanabi_lib/hanabi_observation.cc

hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/hanabi_observation.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hanabi.dir/hanabi_observation.cc.i"
	cd /mnt/d/study/marl/hanabi-learning-environment-master/hanabi_learning_environment/hanabi_lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/d/study/marl/hanabi-learning-environment-master/hanabi_learning_environment/hanabi_lib/hanabi_observation.cc > CMakeFiles/hanabi.dir/hanabi_observation.cc.i

hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/hanabi_observation.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hanabi.dir/hanabi_observation.cc.s"
	cd /mnt/d/study/marl/hanabi-learning-environment-master/hanabi_learning_environment/hanabi_lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/d/study/marl/hanabi-learning-environment-master/hanabi_learning_environment/hanabi_lib/hanabi_observation.cc -o CMakeFiles/hanabi.dir/hanabi_observation.cc.s

hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/hanabi_state.cc.o: hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/flags.make
hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/hanabi_state.cc.o: hanabi_learning_environment/hanabi_lib/hanabi_state.cc
hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/hanabi_state.cc.o: hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/study/marl/hanabi-learning-environment-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/hanabi_state.cc.o"
	cd /mnt/d/study/marl/hanabi-learning-environment-master/hanabi_learning_environment/hanabi_lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/hanabi_state.cc.o -MF CMakeFiles/hanabi.dir/hanabi_state.cc.o.d -o CMakeFiles/hanabi.dir/hanabi_state.cc.o -c /mnt/d/study/marl/hanabi-learning-environment-master/hanabi_learning_environment/hanabi_lib/hanabi_state.cc

hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/hanabi_state.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hanabi.dir/hanabi_state.cc.i"
	cd /mnt/d/study/marl/hanabi-learning-environment-master/hanabi_learning_environment/hanabi_lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/d/study/marl/hanabi-learning-environment-master/hanabi_learning_environment/hanabi_lib/hanabi_state.cc > CMakeFiles/hanabi.dir/hanabi_state.cc.i

hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/hanabi_state.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hanabi.dir/hanabi_state.cc.s"
	cd /mnt/d/study/marl/hanabi-learning-environment-master/hanabi_learning_environment/hanabi_lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/d/study/marl/hanabi-learning-environment-master/hanabi_learning_environment/hanabi_lib/hanabi_state.cc -o CMakeFiles/hanabi.dir/hanabi_state.cc.s

hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/util.cc.o: hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/flags.make
hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/util.cc.o: hanabi_learning_environment/hanabi_lib/util.cc
hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/util.cc.o: hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/study/marl/hanabi-learning-environment-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/util.cc.o"
	cd /mnt/d/study/marl/hanabi-learning-environment-master/hanabi_learning_environment/hanabi_lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/util.cc.o -MF CMakeFiles/hanabi.dir/util.cc.o.d -o CMakeFiles/hanabi.dir/util.cc.o -c /mnt/d/study/marl/hanabi-learning-environment-master/hanabi_learning_environment/hanabi_lib/util.cc

hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/util.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hanabi.dir/util.cc.i"
	cd /mnt/d/study/marl/hanabi-learning-environment-master/hanabi_learning_environment/hanabi_lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/d/study/marl/hanabi-learning-environment-master/hanabi_learning_environment/hanabi_lib/util.cc > CMakeFiles/hanabi.dir/util.cc.i

hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/util.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hanabi.dir/util.cc.s"
	cd /mnt/d/study/marl/hanabi-learning-environment-master/hanabi_learning_environment/hanabi_lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/d/study/marl/hanabi-learning-environment-master/hanabi_learning_environment/hanabi_lib/util.cc -o CMakeFiles/hanabi.dir/util.cc.s

hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/canonical_encoders.cc.o: hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/flags.make
hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/canonical_encoders.cc.o: hanabi_learning_environment/hanabi_lib/canonical_encoders.cc
hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/canonical_encoders.cc.o: hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/study/marl/hanabi-learning-environment-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/canonical_encoders.cc.o"
	cd /mnt/d/study/marl/hanabi-learning-environment-master/hanabi_learning_environment/hanabi_lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/canonical_encoders.cc.o -MF CMakeFiles/hanabi.dir/canonical_encoders.cc.o.d -o CMakeFiles/hanabi.dir/canonical_encoders.cc.o -c /mnt/d/study/marl/hanabi-learning-environment-master/hanabi_learning_environment/hanabi_lib/canonical_encoders.cc

hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/canonical_encoders.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hanabi.dir/canonical_encoders.cc.i"
	cd /mnt/d/study/marl/hanabi-learning-environment-master/hanabi_learning_environment/hanabi_lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/d/study/marl/hanabi-learning-environment-master/hanabi_learning_environment/hanabi_lib/canonical_encoders.cc > CMakeFiles/hanabi.dir/canonical_encoders.cc.i

hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/canonical_encoders.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hanabi.dir/canonical_encoders.cc.s"
	cd /mnt/d/study/marl/hanabi-learning-environment-master/hanabi_learning_environment/hanabi_lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/d/study/marl/hanabi-learning-environment-master/hanabi_learning_environment/hanabi_lib/canonical_encoders.cc -o CMakeFiles/hanabi.dir/canonical_encoders.cc.s

# Object files for target hanabi
hanabi_OBJECTS = \
"CMakeFiles/hanabi.dir/hanabi_card.cc.o" \
"CMakeFiles/hanabi.dir/hanabi_game.cc.o" \
"CMakeFiles/hanabi.dir/hanabi_hand.cc.o" \
"CMakeFiles/hanabi.dir/hanabi_history_item.cc.o" \
"CMakeFiles/hanabi.dir/hanabi_move.cc.o" \
"CMakeFiles/hanabi.dir/hanabi_observation.cc.o" \
"CMakeFiles/hanabi.dir/hanabi_state.cc.o" \
"CMakeFiles/hanabi.dir/util.cc.o" \
"CMakeFiles/hanabi.dir/canonical_encoders.cc.o"

# External object files for target hanabi
hanabi_EXTERNAL_OBJECTS =

hanabi_learning_environment/hanabi_lib/libhanabi.a: hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/hanabi_card.cc.o
hanabi_learning_environment/hanabi_lib/libhanabi.a: hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/hanabi_game.cc.o
hanabi_learning_environment/hanabi_lib/libhanabi.a: hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/hanabi_hand.cc.o
hanabi_learning_environment/hanabi_lib/libhanabi.a: hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/hanabi_history_item.cc.o
hanabi_learning_environment/hanabi_lib/libhanabi.a: hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/hanabi_move.cc.o
hanabi_learning_environment/hanabi_lib/libhanabi.a: hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/hanabi_observation.cc.o
hanabi_learning_environment/hanabi_lib/libhanabi.a: hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/hanabi_state.cc.o
hanabi_learning_environment/hanabi_lib/libhanabi.a: hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/util.cc.o
hanabi_learning_environment/hanabi_lib/libhanabi.a: hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/canonical_encoders.cc.o
hanabi_learning_environment/hanabi_lib/libhanabi.a: hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/build.make
hanabi_learning_environment/hanabi_lib/libhanabi.a: hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/d/study/marl/hanabi-learning-environment-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking CXX static library libhanabi.a"
	cd /mnt/d/study/marl/hanabi-learning-environment-master/hanabi_learning_environment/hanabi_lib && $(CMAKE_COMMAND) -P CMakeFiles/hanabi.dir/cmake_clean_target.cmake
	cd /mnt/d/study/marl/hanabi-learning-environment-master/hanabi_learning_environment/hanabi_lib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hanabi.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/build: hanabi_learning_environment/hanabi_lib/libhanabi.a
.PHONY : hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/build

hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/clean:
	cd /mnt/d/study/marl/hanabi-learning-environment-master/hanabi_learning_environment/hanabi_lib && $(CMAKE_COMMAND) -P CMakeFiles/hanabi.dir/cmake_clean.cmake
.PHONY : hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/clean

hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/depend:
	cd /mnt/d/study/marl/hanabi-learning-environment-master && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/d/study/marl/hanabi-learning-environment-master /mnt/d/study/marl/hanabi-learning-environment-master/hanabi_learning_environment/hanabi_lib /mnt/d/study/marl/hanabi-learning-environment-master /mnt/d/study/marl/hanabi-learning-environment-master/hanabi_learning_environment/hanabi_lib /mnt/d/study/marl/hanabi-learning-environment-master/hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : hanabi_learning_environment/hanabi_lib/CMakeFiles/hanabi.dir/depend
