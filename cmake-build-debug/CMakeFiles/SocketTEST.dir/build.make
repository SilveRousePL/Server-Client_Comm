# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

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
CMAKE_COMMAND = /snap/clion/6/bin/cmake/bin/cmake

# The command to remove a file.
RM = /snap/clion/6/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/darek/CLionProjects/Server-Client_Comm

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/darek/CLionProjects/Server-Client_Comm/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/SocketTEST.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/SocketTEST.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/SocketTEST.dir/flags.make

CMakeFiles/SocketTEST.dir/main.cpp.o: CMakeFiles/SocketTEST.dir/flags.make
CMakeFiles/SocketTEST.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/darek/CLionProjects/Server-Client_Comm/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/SocketTEST.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SocketTEST.dir/main.cpp.o -c /home/darek/CLionProjects/Server-Client_Comm/main.cpp

CMakeFiles/SocketTEST.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SocketTEST.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/darek/CLionProjects/Server-Client_Comm/main.cpp > CMakeFiles/SocketTEST.dir/main.cpp.i

CMakeFiles/SocketTEST.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SocketTEST.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/darek/CLionProjects/Server-Client_Comm/main.cpp -o CMakeFiles/SocketTEST.dir/main.cpp.s

CMakeFiles/SocketTEST.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/SocketTEST.dir/main.cpp.o.requires

CMakeFiles/SocketTEST.dir/main.cpp.o.provides: CMakeFiles/SocketTEST.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/SocketTEST.dir/build.make CMakeFiles/SocketTEST.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/SocketTEST.dir/main.cpp.o.provides

CMakeFiles/SocketTEST.dir/main.cpp.o.provides.build: CMakeFiles/SocketTEST.dir/main.cpp.o


CMakeFiles/SocketTEST.dir/NetSock.cpp.o: CMakeFiles/SocketTEST.dir/flags.make
CMakeFiles/SocketTEST.dir/NetSock.cpp.o: ../NetSock.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/darek/CLionProjects/Server-Client_Comm/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/SocketTEST.dir/NetSock.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SocketTEST.dir/NetSock.cpp.o -c /home/darek/CLionProjects/Server-Client_Comm/NetSock.cpp

CMakeFiles/SocketTEST.dir/NetSock.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SocketTEST.dir/NetSock.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/darek/CLionProjects/Server-Client_Comm/NetSock.cpp > CMakeFiles/SocketTEST.dir/NetSock.cpp.i

CMakeFiles/SocketTEST.dir/NetSock.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SocketTEST.dir/NetSock.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/darek/CLionProjects/Server-Client_Comm/NetSock.cpp -o CMakeFiles/SocketTEST.dir/NetSock.cpp.s

CMakeFiles/SocketTEST.dir/NetSock.cpp.o.requires:

.PHONY : CMakeFiles/SocketTEST.dir/NetSock.cpp.o.requires

CMakeFiles/SocketTEST.dir/NetSock.cpp.o.provides: CMakeFiles/SocketTEST.dir/NetSock.cpp.o.requires
	$(MAKE) -f CMakeFiles/SocketTEST.dir/build.make CMakeFiles/SocketTEST.dir/NetSock.cpp.o.provides.build
.PHONY : CMakeFiles/SocketTEST.dir/NetSock.cpp.o.provides

CMakeFiles/SocketTEST.dir/NetSock.cpp.o.provides.build: CMakeFiles/SocketTEST.dir/NetSock.cpp.o


CMakeFiles/SocketTEST.dir/Server.cpp.o: CMakeFiles/SocketTEST.dir/flags.make
CMakeFiles/SocketTEST.dir/Server.cpp.o: ../Server.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/darek/CLionProjects/Server-Client_Comm/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/SocketTEST.dir/Server.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SocketTEST.dir/Server.cpp.o -c /home/darek/CLionProjects/Server-Client_Comm/Server.cpp

CMakeFiles/SocketTEST.dir/Server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SocketTEST.dir/Server.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/darek/CLionProjects/Server-Client_Comm/Server.cpp > CMakeFiles/SocketTEST.dir/Server.cpp.i

CMakeFiles/SocketTEST.dir/Server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SocketTEST.dir/Server.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/darek/CLionProjects/Server-Client_Comm/Server.cpp -o CMakeFiles/SocketTEST.dir/Server.cpp.s

CMakeFiles/SocketTEST.dir/Server.cpp.o.requires:

.PHONY : CMakeFiles/SocketTEST.dir/Server.cpp.o.requires

CMakeFiles/SocketTEST.dir/Server.cpp.o.provides: CMakeFiles/SocketTEST.dir/Server.cpp.o.requires
	$(MAKE) -f CMakeFiles/SocketTEST.dir/build.make CMakeFiles/SocketTEST.dir/Server.cpp.o.provides.build
.PHONY : CMakeFiles/SocketTEST.dir/Server.cpp.o.provides

CMakeFiles/SocketTEST.dir/Server.cpp.o.provides.build: CMakeFiles/SocketTEST.dir/Server.cpp.o


CMakeFiles/SocketTEST.dir/Client.cpp.o: CMakeFiles/SocketTEST.dir/flags.make
CMakeFiles/SocketTEST.dir/Client.cpp.o: ../Client.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/darek/CLionProjects/Server-Client_Comm/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/SocketTEST.dir/Client.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SocketTEST.dir/Client.cpp.o -c /home/darek/CLionProjects/Server-Client_Comm/Client.cpp

CMakeFiles/SocketTEST.dir/Client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SocketTEST.dir/Client.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/darek/CLionProjects/Server-Client_Comm/Client.cpp > CMakeFiles/SocketTEST.dir/Client.cpp.i

CMakeFiles/SocketTEST.dir/Client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SocketTEST.dir/Client.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/darek/CLionProjects/Server-Client_Comm/Client.cpp -o CMakeFiles/SocketTEST.dir/Client.cpp.s

CMakeFiles/SocketTEST.dir/Client.cpp.o.requires:

.PHONY : CMakeFiles/SocketTEST.dir/Client.cpp.o.requires

CMakeFiles/SocketTEST.dir/Client.cpp.o.provides: CMakeFiles/SocketTEST.dir/Client.cpp.o.requires
	$(MAKE) -f CMakeFiles/SocketTEST.dir/build.make CMakeFiles/SocketTEST.dir/Client.cpp.o.provides.build
.PHONY : CMakeFiles/SocketTEST.dir/Client.cpp.o.provides

CMakeFiles/SocketTEST.dir/Client.cpp.o.provides.build: CMakeFiles/SocketTEST.dir/Client.cpp.o


# Object files for target SocketTEST
SocketTEST_OBJECTS = \
"CMakeFiles/SocketTEST.dir/main.cpp.o" \
"CMakeFiles/SocketTEST.dir/NetSock.cpp.o" \
"CMakeFiles/SocketTEST.dir/Server.cpp.o" \
"CMakeFiles/SocketTEST.dir/Client.cpp.o"

# External object files for target SocketTEST
SocketTEST_EXTERNAL_OBJECTS =

SocketTEST: CMakeFiles/SocketTEST.dir/main.cpp.o
SocketTEST: CMakeFiles/SocketTEST.dir/NetSock.cpp.o
SocketTEST: CMakeFiles/SocketTEST.dir/Server.cpp.o
SocketTEST: CMakeFiles/SocketTEST.dir/Client.cpp.o
SocketTEST: CMakeFiles/SocketTEST.dir/build.make
SocketTEST: CMakeFiles/SocketTEST.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/darek/CLionProjects/Server-Client_Comm/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable SocketTEST"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SocketTEST.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/SocketTEST.dir/build: SocketTEST

.PHONY : CMakeFiles/SocketTEST.dir/build

CMakeFiles/SocketTEST.dir/requires: CMakeFiles/SocketTEST.dir/main.cpp.o.requires
CMakeFiles/SocketTEST.dir/requires: CMakeFiles/SocketTEST.dir/NetSock.cpp.o.requires
CMakeFiles/SocketTEST.dir/requires: CMakeFiles/SocketTEST.dir/Server.cpp.o.requires
CMakeFiles/SocketTEST.dir/requires: CMakeFiles/SocketTEST.dir/Client.cpp.o.requires

.PHONY : CMakeFiles/SocketTEST.dir/requires

CMakeFiles/SocketTEST.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/SocketTEST.dir/cmake_clean.cmake
.PHONY : CMakeFiles/SocketTEST.dir/clean

CMakeFiles/SocketTEST.dir/depend:
	cd /home/darek/CLionProjects/Server-Client_Comm/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/darek/CLionProjects/Server-Client_Comm /home/darek/CLionProjects/Server-Client_Comm /home/darek/CLionProjects/Server-Client_Comm/cmake-build-debug /home/darek/CLionProjects/Server-Client_Comm/cmake-build-debug /home/darek/CLionProjects/Server-Client_Comm/cmake-build-debug/CMakeFiles/SocketTEST.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/SocketTEST.dir/depend

