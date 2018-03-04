//
// Created by darek on 27.01.18.
//

#include "Server.hpp"
#include "Misc.hpp"

Server::Server(unsigned short port)
        : socket(new NetSock), port(port), buffer_size(512), p_unread(false) {
    if (!socket->ListenAllUDP(port))
        throw SocketException("Błąd przy tworzeniu serwera, sprawdź czy inna aplikacja nie używa danego portu");

    thread = new std::thread(&Server::run, this);
}

Server::~Server() {
    mtx.unlock();
    socket->Disconnect();
    thread->join();
    delete socket;
    delete thread;
}

void Server::run() {
    try {
        while(true) {
            char srcHost[16] = {0};
            unsigned short srcPort = 0;
            char * buffer = new char[buffer_size];
            *buffer = {0};

            int p_size = socket->ReadUDP(buffer, buffer_size, srcHost, &srcPort);

            if(p_size <= 0) {
                std::cerr << "Błąd odczytu!" << std::endl;
                usleep(1000000);
                continue;
            }
            buffer[p_size-1] = 0;
            setPacket(Packet(srcHost, srcPort, Misc::currentTime(), buffer));
        }
    } catch(Exception & e) {
        this->excpt = std::current_exception();
        std::cerr << e.what() << std::endl;
    } catch(...) {
        this->excpt = std::current_exception();
        std::cerr << "Unknown exception" << std::endl;
    }
}

void Server::setPacket(Packet packet) {
    this->mtx.lock();
    this->packet = packet;
    this->p_unread = true;
    this->mtx.unlock();
}

bool Server::isUnread() {
    return this->p_unread;
}

Packet Server::readPacket() {
    this->mtx.lock();
    Packet p = this->packet;
    this->p_unread = false;
    this->mtx.unlock();
    return p;
}

void Server::sendPacket(std::string host, unsigned short port, std::string message) {
    int ret = socket->WriteUDP(host.c_str(), port, message.c_str(), message.length());
    if (ret != message.length())
        std::cout << "Błąd wysyłania! " << std::endl;
}