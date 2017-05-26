
#include <ctime>
#include <string>
#include <iostream>
#include <boost/asio.hpp>
#include "UDPServer.h"

int main() {

    try {
        boost::asio::io_service io_service;
        std::cout << "Starting!" << std::endl;

        udp_server server(io_service);
        io_service.run();

    } catch (std::exception& e)
    {
        std::cerr << e.what() << std::endl;
    }
    return 0;
}