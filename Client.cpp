//
// Created by darek on 27.01.18.
//

#include "Client.hpp"

Client::Client(std::string host, unsigned short port)
    : socket(new NetSock), host(host), port(port) {
    thread = new std::thread(&Client::run, this);
}

Client::~Client() {
//std::cin.ignore(2048, '\n');
}

void Client::run() {
    socket->ListenUDP(0, "0.0.0.0");

    while(true) {
        std::string m;
        getline(std::cin, m);
        m+="\n";
        /*std::cin.clear();
        std::cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');*/
        int ret = socket->WriteUDP(host.c_str(), port, m.c_str(), m.length());
        if (ret != m.length()) {
            std::cout << "Błąd wysyłania! " << std::endl;
        }
    }
}
