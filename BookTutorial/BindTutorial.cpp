#include <boost/bind.hpp>
#include <boost/asio.hpp>
#include <boost/shared_ptr.hpp>
#include <boost/thread.hpp>
#include <iostream>
#include <string>

boost::mutex global_stream_lock;

void workerThread(boost::shared_ptr<boost::asio::io_service> io_service, int counter)
{
    global_stream_lock.lock();
    std::cout << "Counter: " << counter << std::endl;
    global_stream_lock.unlock();
    io_service->run();
    global_stream_lock.lock();
    std::cout << "End." << std::endl;
    global_stream_lock.unlock();
}

int main()
{
    boost::shared_ptr<boost::asio::io_service> io_service(new boost::asio::io_service);
    boost::shared_ptr<boost::asio::io_service::work> worker(new boost::asio::io_service::work(*io_service));
    boost::thread_group threads;

    for (int i=0; i<5; ++i)
    {
        threads.create_thread(boost::bind(&workerThread, io_service, i));
    }

    std::cin.get();
    io_service->stop();
    threads.join_all();
    return 0;
}
