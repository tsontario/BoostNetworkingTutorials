//
// Created by Timothy Smith on 2017-05-24.
//
#include "UDPServer.h"
#include <boost/asio.hpp>
#include <boost/bind.hpp>

using boost::asio::ip::udp;

// Demonstration function
std::string make_daytime_string()
{
    using namespace std;
    time_t now = time(0);
    return ctime(&now);
}

/* Constructor */
udp_server::udp_server(boost::asio::io_service& io_service) :
        socket_(io_service, udp::endpoint(udp::v4(), 8000))
{
    start_receive();
}

void udp_server::start_receive()
{
    socket_.async_receive_from(
            boost::asio::buffer(recv_buffer_), remote_endpoint_,
            boost::bind(&udp_server::handle_receive,
                        this,
                        boost::asio::placeholders::error,
                        boost::asio::placeholders::bytes_transferred)
    );
}

void udp_server::handle_receive(const boost::system::error_code& error, std::size_t)
{
    if (!error || error == boost::asio::error::message_size)
    {
        boost::shared_ptr<std::string> message(
                new std::string(make_daytime_string()));

        socket_.async_send_to(boost::asio::buffer(*message), remote_endpoint_,
                              boost::bind(&udp_server::handle_send, this, message,
                                          boost::asio::placeholders::error,
                                          boost::asio::placeholders::bytes_transferred)
        );

        start_receive();
    }
}

void udp_server::handle_send(boost::shared_ptr<std::string>, const boost::system::error_code&, std::size_t)
{
}

