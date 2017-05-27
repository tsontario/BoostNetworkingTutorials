// Create a basic server to receive a message from asynchronousclient.cpp
#include "../Common.h"

void workerThread(boost::shared_ptr<boost::asio::io_service> io_service, int counter)
{
    std::cout << "Thread " << counter << " Start.\n";

    while (true)
    {
        try {
            boost::system::error_code ec;

            io_service->run(ec);

            if (ec) {
                std::cerr << ec << std::endl;
            }

            break;
        } catch (std::exception& e) {
            std::cout << e.what() << std::endl;
        }
    }

    std::cout << "Thread " << counter << " End.\n";
}

void onAccept(const boost::system::error_code& ec)
{

    if (ec)
    {
        std::cout << "onAccept() error: " << ec << std::endl;
    }
    std::cout << "Accepted!\n";
}

int main()
{

    // Initialize the IO_Service object and give it the keep-alive worker
    boost::shared_ptr<boost::asio::io_service> io_service(new boost::asio::io_service);
    boost::shared_ptr<boost::asio::io_service::work> worker(new boost::asio::io_service::work(*io_service));

    boost::shared_ptr<boost::asio::ip::tcp::acceptor> acceptor(new boost::asio::ip::tcp::acceptor(*io_service));
    boost::shared_ptr<boost::asio::ip::tcp::socket> socket(new boost::asio::ip::tcp::socket(*io_service));

    boost::thread_group threads;
    for (int i=1; i<3; ++i)
    {
        threads.create_thread(boost::bind(workerThread, io_service, i));
    }

    try {
        boost::asio::ip::tcp::resolver resolver(*io_service);
        boost::asio::ip::tcp::resolver::query query("localhost", "8000");
        boost::asio::ip::tcp::endpoint endpoint = *resolver.resolve(query);

        acceptor->open(endpoint.protocol());
        acceptor->set_option(boost::asio::ip::tcp::acceptor::reuse_address(false));

        acceptor->bind(endpoint);
        acceptor->listen(boost::asio::socket_base::max_connections);
        acceptor->async_accept(*socket, boost::bind(onAccept, _1));
        std::cout << "Listening on server...\n";
    } catch (std::exception e) {
        std::cerr << e.what() << std::endl;
    }

    // Server listens until we press enter and trigger the cleanup
    std::cin.get();

    boost::system::error_code ec;
    acceptor->close(ec);
    socket->shutdown(boost::asio::ip::tcp::socket::shutdown_both);
    socket->close(ec);
    io_service->stop();
    threads.join_all();

    return 0;
}

