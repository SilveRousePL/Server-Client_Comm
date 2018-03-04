//
// Created by darek on 27.01.18.
//

#pragma once
#include <thread>
#include <unistd.h>
#include <mutex>
#include <exception>
#include "NetSock.h"
#include "Exceptions.hpp"
#include "Packet.hpp"

class Server {

    std::thread * thread;
    NetSock * socket;
    unsigned short port;
    size_t buffer_size;

    bool p_unread;
    Packet packet;

    std::mutex mtx;
    std::exception_ptr excpt;

public:
    Server(unsigned short port);
    ~Server();

    bool isUnread();
    Packet readPacket();

    void sendPacket(std::string host, unsigned short port, std::string message);

    unsigned short getPort();


private:
    void run();
    // std::string host, unsigned short port, std::string time, char* data
    void setPacket(Packet p);
};
