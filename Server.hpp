//
// Created by darek on 27.01.18.
//

#pragma once
#include "CSCommonPart.hpp"

class Server : public CSCommonPart {
    uint16_t server_port;
    std::string last_client_ip;
    uint16_t last_client_port;

public:
    Server(uint16_t port);
    virtual ~Server();

    Packet readPacket();
    Packet popPacket();

    std::string getLastClientIP();
    uint16_t getLastClientPort();
};
