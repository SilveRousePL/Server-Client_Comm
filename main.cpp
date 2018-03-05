/*
 * Server-Client Communicator C++
 * TODO: Refactor NetSock library
 */

#include <iostream>
#include <unistd.h>
#include "Server.hpp"
#include "Client.hpp"
#include "Exceptions.hpp"

using namespace std;

///Using example
void thr_read_s(Server* s) {
    while(true) {
        if(s->isAnyPacket() == false) continue;
        Packet p = s->popPacket();
        cout << p << endl;
        if(p.data == "HELLO") {
            s->sendPacket("HELLO FROM SERVER!", p.host, p.port);
        }
    }
}

void thr_read_c(Client* c) {
    while(true) {
        if(c->isAnyPacket() == false) continue;
        Packet p = c->popPacket();
        cout << p << endl;
        if(p.data == "HELLO") {
            c->sendPacket("HELLO FROM CLIENT!");
        }
    }
}

int main(int argc, const char** argv) {
    Server* server;
    Client* client;

    thread* thr;

    int nr = 0;
    cout << "1 - Klient\n2 - Serwer" << endl;
    cin >> nr;
    std::cin.clear();
    std::cin.ignore(3,'\n');

    switch(nr) {
        case 1: //CLIENT
            client = new Client("127.0.0.1", 1333);
            thr = new thread(thr_read_c, client);
            while(true) {
                std::string m;
                getline(std::cin, m);
                client->sendPacket(m);
            }
        case 2: //SERVER
            server = new Server(1333);
            thr = new thread(thr_read_s, server);
            while(true) {
                std::string m;
                getline(std::cin, m);
                server->sendPacket(m, server->getLastClientIP(), server->getLastClientPort());
            }
        default:
            cout << "Niepoprawna opcja!" << endl;
    }
    return 0;
}