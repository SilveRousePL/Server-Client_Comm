//
// Created by darek on 04.03.18.
//

#pragma once
#include <iostream>
#include <thread>
#include <mutex>
#include <unistd.h>
#include <exception>
#include <queue>
#include "NetSock.h"
#include "Packet.hpp"
#include "Exceptions.hpp"

class CSCommonPart {
protected:
    std::thread * thread;
    NetSock * socket; //Socket from NetSock library
    size_t buffer_size;
    std::queue<Packet> packets;

    std::mutex mtx;
    std::exception_ptr excpt;

public:
    CSCommonPart();
    ~CSCommonPart();

    bool isAnyPacket();
    Packet readPacket();
    Packet popPacket();
    int32_t sendPacket(std::string message, std::string host, uint16_t port); //RETURN 0: Sukces
    void run();
protected:

    void receivePacket();
    void pushPacket(Packet packet);

};