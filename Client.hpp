//
// Created by darek on 27.01.18.
//

#pragma once
#include <thread>
#include <unistd.h>
#include <exception>
#include "NetSock.h"
#include "Exceptions.hpp"

class Client {
public:
    std::thread * thread;
    NetSock * socket;
    std::string host;
    unsigned short port;

    std::exception_ptr excpt = nullptr;

public:
    Client(std::string host, unsigned short port);
    ~Client();

    bool send(std::string message);

private:
    void run();
};
