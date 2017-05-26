//
// Created by Timothy Smith on 2017-05-24.
//

#include <boost/asio/io_service.hpp>
#include <boost/array.hpp>
#include <boost/asio/ip/udp.hpp>

#ifndef BOOSTER_UDPSERVER_H
#define BOOSTER_UDPSERVER_H

#endif //BOOSTER_UDPSERVER_H

class udp_server
{
public:
    udp_server(boost::asio::io_service& io_service);

private:
    void start_receive();
    void handle_receive(const boost::system::error_code& error, std::size_t);
    void handle_send(boost::shared_ptr<std::string>, const boost::system::error_code&, std::size_t);

    boost::asio::ip::udp::socket socket_;
    boost::array<char, 1> recv_buffer_;
    boost::asio::ip::udp::endpoint remote_endpoint_;
};