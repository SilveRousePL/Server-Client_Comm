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
    std::cin.ignore(10,'\n');

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


    /*
    int ret;
    unsigned char buffer[8] = {0};

    if (!s.Connect("127.0.0.1", 1333))
        return 1; // Some error handling.

    // Write some ASCII string.
    ret = s.Write((unsigned char*)"asdf", 4);
    if (ret != 4)
        return 2; // Some error handling.

    // Read some ASCII string.
    ret = s.Read(buffer, sizeof(buffer) - 1);
    if (ret <= 0)
        return 3; // Some error handling.

    // Write out the string.
    puts((char*)buffer);

    s.Disconnect();


    //if(argc > 1 && argv[1] == "-s") {
        server = new Server(1333); */

    /*
    usleep(1000000);
    NetSock client;
    string ip_addr = "127.0.0.1";
    int port = 1333;
    //client.SetMode(NetSock::ASYNCHRONIC);
    if (!client.Connect(ip_addr.c_str(), port)) {
        cout << "Error when connecting to the address " << ip_addr << " on the port " << port << endl;
        cout << "Is the server running?";
    }
    else cout << "Uruchomiono klienta!" << endl;
    while(true) {
        std::string text;
        getline(cin,text);
        //text = Misc::currentTime("%T: ") + text + " \n";
        text += " \n";
        client.Write(text.c_str(), text.length());// != text.length()
            //break;
    }
    //}*/


/*



    while(true) {
        unsigned char buffer[255] = {0};
        if (socket.Read(buffer, sizeof(buffer) - 1) <= 0)
            cout << "Read error!" << endl;


        // Write out the string.
        cout << Misc::currentTime("%T: ") << buffer;
    }
    */

    /*void f_client(string ip, uint16_t port) {
        NetSock socket;
        unsigned char buffer[255] = {0};

        *//*if (!socket.Connect(ip.c_str(), port)) {
            cout << "Błąd połączenia z serwerem!" << endl;
            return;
        }*//*
        socket.ListenUDP(0, "0.0.0.0");
        // Write some ASCII string.
        while(true) {
            string m;
            getline(cin,m);
            m+="\n";
            std::cin.clear();
            int ret = socket.WriteUDP(ip.c_str(), port, m.c_str(), m.length());
            if (ret != m.length()) {
                cout << "Błąd wysyłania! " << endl;
            }
        }
    } */
    return 10;
}