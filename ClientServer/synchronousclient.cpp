#include <boost/asio.hpp>
#include <boost/shared_ptr.hpp>
#include <boost/thread.hpp>
#include <boost/thread/mutex.hpp>
#include <boost/bind.hpp>
#include <boost/lexical_cast.hpp>

boost::mutex global_stream_lock;

// From here we dispatch work to the OS 'Layer'
void workerThread(boost::shared_ptr<boost::asio::io_service> io_service, int counter)
{
    global_stream_lock.lock();
    std::cout << "Thread " << counter << " Start.\n";
    global_stream_lock.unlock();

    while (true)
    {
        try {
            boost::system::error_code ec;

            io_service->run();
            if (ec) {
                global_stream_lock.lock();
                std::cout << ec << std::endl;
                global_stream_lock.unlock();
            }

            break;

        } catch (std::exception& e) {
            global_stream_lock.lock();
            std::cerr << e.what() << std::endl;
            global_stream_lock.unlock();
        }

    }

    global_stream_lock.lock();
    std::cout << "Thread " << counter << " End.\n";
    global_stream_lock.unlock();
}

int main()
{
    boost::shared_ptr<boost::asio::io_service> io_service(new boost::asio::io_service);
    boost::shared_ptr<boost::asio::io_service::work> worker(new boost::asio::io_service::work(*io_service));
    boost::shared_ptr<boost::asio::io_service::strand> strand(new boost::asio::io_service::strand(*io_service));

    global_stream_lock.lock();
    std::cout << "Press <ENTER> to exit.\n";
    global_stream_lock.unlock();

    boost::thread_group threads;
    for (int i=1; i<3; ++i) {
        threads.create_thread(boost::bind(workerThread, io_service, i));
    }

    // Connect to TCP Socket
    boost::asio::ip::tcp::socket socket(*io_service);
    try {
        // Resolver will take a query for IP address and host port
        boost::asio::ip::tcp::resolver resolver(*io_service);
        boost::asio::ip::tcp::resolver::query query(
                "www.packtpub.com",
                "80"
        );

        // The results of our query implement the iterator pattern so we can treat each possible
        // endpoint connection as an element of an iterable collection.
        boost::asio::ip::tcp::resolver::iterator iterator = resolver.resolve(query);
        boost::asio::ip::tcp::endpoint endpoint = *iterator;

        global_stream_lock.lock();
        std::cout << "Connecting to: " << endpoint << std::endl;
        global_stream_lock.unlock();

        // The actual connection to the remote
        socket.connect(endpoint);

        global_stream_lock.lock();
        std::cout << "Connected!" << std::endl;
        global_stream_lock.unlock();


    } catch (std::exception& e) {
        global_stream_lock.lock();
        std::cout << e.what() << std::endl;
        global_stream_lock.unlock();
    }

    std::cin.get();

    boost::system::error_code ec;

    socket.shutdown(boost::asio::ip::tcp::socket::shutdown_both, ec);
    socket.close();
    io_service->stop();
    threads.join_all();

    return 0;
}