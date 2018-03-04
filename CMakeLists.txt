cmake_minimum_required(VERSION 3.9)
project(Server-Client_Comm)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_FLAGS -pthread)

add_executable(Server-Client_Comm
        main.cpp
        NetSock.cpp
        NetSock.h
        Server.cpp
        Server.hpp
        Client.cpp
        Client.hpp
        Packet.hpp
        Misc.hpp
        Exceptions.hpp)