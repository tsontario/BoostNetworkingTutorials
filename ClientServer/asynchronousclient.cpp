#include "../Common.h"

boost::mutex global_stream_lock;

void workerThread(boost::shared_ptr<boost::asio::io_service> io_service, int counter) {
    global_stream_lock.lock();
    std::cout << "Thread " << counter << " Start.\n";
    global_stream_lock.unlock();

    while (true) {
        try {
            boost::system::error_code ec;
            io_service->run(ec);

            if (ec) {
                global_stream_lock.lock();
                std::cout << ec << ".\n";
            }

            break;
        } catch (std::exception e) {
            std::cerr << e.what() << std::endl;
        }
    }

    global_stream_lock.lock();
    std::cout << "Thread " << counter << " End.\n";
    global_stream_lock.unlock();
}

void onConnect(const boost::system::error_code& ec)
{
    if (ec) {
        global_stream_lock.lock();
        std::cout << "Error: " << ec << std::endl;
        global_stream_lock.unlock();
    } else {
        global_stream_lock.lock();
        std::cout << "Connected in ONCONNECT!\n";
        global_stream_lock.unlock();
    }
}


int main()
{
    boost::shared_ptr<boost::asio::io_service> io_service(new boost::asio::io_service);
    boost::shared_ptr<boost::asio::io_service::work> worker(new boost::asio::io_service::work(*io_service));
    boost::shared_ptr<boost::asio::strand> strand(new boost::asio::strand(*io_service));

    global_stream_lock.lock();
    std::cout << "Press <ENTER> to exit.\n";
    global_stream_lock.unlock();

    boost::thread_group threads;
    for (int i=1; i<3; ++i) {
        threads.create_thread(boost::bind(workerThread, io_service, i));
    }

    boost::shared_ptr<boost::asio::ip::tcp::socket> sckt(new boost::asio::ip::tcp::socket(*io_service));

    try {
        boost::asio::ip::tcp::resolver resolver(*io_service);
        boost::asio::ip::tcp::resolver::query query("127.0.0.1", "8000");
        boost::asio::ip::tcp::resolver::iterator iterator = resolver.resolve(query);

        // Now that addresses are resolved, get a connection to the endpoint
        boost::asio::ip::tcp::endpoint endpoint = *iterator;

        global_stream_lock.lock();
        std::cout << "Connecting to " << endpoint << ".\n";
        global_stream_lock.unlock();

        sckt->async_connect(endpoint, boost::bind(onConnect, _1));

        global_stream_lock.lock();
        std::cout << "Connected!" << std::endl;
        global_stream_lock.unlock();

    } catch (std::exception e) {
        std::cerr << e.what() << std::endl;
    }

    std::cin.get();

    boost::system::error_code ec;
    sckt->shutdown(boost::asio::ip::tcp::socket::shutdown_both, ec);
    sckt->close();
    io_service->stop();
    threads.join_all();

    return 0;
}