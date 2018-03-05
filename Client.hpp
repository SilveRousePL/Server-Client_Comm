//
// Created by darek on 27.01.18.
//

#pragma once
#include "CSCommonPart.hpp"

class Client : public CSCommonPart {
    std::string server_ip;
    uint16_t server_port;

public:
    Client(std::string server_ip, uint16_t server_port);
    virtual ~Client();

    void sendPacket(std::string message);
};
