#include <boost/asio.hpp>
#include <boost/thread.hpp>
#include <boost/shared_ptr.hpp>
#include <boost/thread/mutex.hpp>
#include <boost/bind.hpp>
#include <iostream>

boost::mutex global_stream_lock;

void workerThread(boost::shared_ptr<boost::asio::io_service> io_service, int counter)
{
    global_stream_lock.lock();
    std::cout << "Thread " << counter << " Start.\n";
    global_stream_lock.unlock();


    boost::system::error_code ec;
    io_service->run(ec);

    if (ec)
    {
        global_stream_lock.lock();
        std::cout << "Message: " << ec << ".\n";
        global_stream_lock.unlock();
    }
    global_stream_lock.lock();
    std::cout << "Thread " << counter << " End.\n";
    global_stream_lock.unlock();

}

void throwAnException(boost::shared_ptr<boost::asio::io_service> io_service)
{
    global_stream_lock.lock();
    std::cout << "Throw Exception.\n";
    global_stream_lock.unlock();

    io_service->post(boost::bind(&throwAnException, io_service));

    throw std::runtime_error("The exception!!!");
}

int main()
{
    boost::shared_ptr<boost::asio::io_service> io_service(new boost::asio::io_service);
    boost::shared_ptr<boost::asio::io_service::work> work(new boost::asio::io_service::work(*io_service));

    global_stream_lock.lock();
    std::cout << "The program will exit once all work has finished.\n";
    global_stream_lock.unlock();

    boost::thread_group threads;

    for (int i=1; i<6; ++i) {
        threads.create_thread(boost::bind(&workerThread, io_service, i));
    }
    io_service->post(boost::bind(&throwAnException, io_service));

    sleep(2);
    threads.join_all();
    work.reset();

    return 0;
}
