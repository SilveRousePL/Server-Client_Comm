#include <iostream>
#include <unistd.h>
#include "Server.hpp"
#include "Exceptions.hpp"
#include "Client.hpp"

using namespace std;

void f_client(string ip, unsigned short port) {
    NetSock socket;
    unsigned char buffer[255] = {0};

    /*if (!socket.Connect(ip.c_str(), port)) {
        cout << "Błąd połączenia z serwerem!" << endl;
        return;
    }*/
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
}

int main(int argc, const char** argv) {
    Server* server;
    Client* client;
    std::thread* t1;

    int nr = 0;
    cout << "1 - Klient\n2 - Serwer" << endl;
    cin >> nr;
    std::cin.clear();
    std::cin.ignore(10,'\n');
    switch(nr) {
        case 1:
            client = new Client("127.0.0.1", 1333);
            while(true) {
                cout << "Jestem klientem!" << endl;
                usleep(60000000);
            }
        case 2:
            server = new Server(1333);
            while(true) {
                if(!server->isUnread()) continue;
                Packet p = server->readPacket();
                cout << p << endl;
                if(p.data == "HELLO") {
                    server->sendPacket(p.host, p.port, "HELLO FROM SERVER!");
                }

                //cout << "Jestem serwerem!" << endl;
                //usleep(60000000);
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
    return 10;
}