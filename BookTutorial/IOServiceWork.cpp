#include <boost/asio.hpp>
#include <boost/shared_ptr.hpp>
#include <boost/thread.hpp>
#include <boost/bind.hpp>
#include <iostream>

boost::mutex global_stream_lock;

void workerThread(boost::shared_ptr<boost::asio::io_service> io_service, int counter)
{
    global_stream_lock.lock();
    std::cout << "Thread Start.\n";
    global_stream_lock.unlock();

    io_service->run();

    global_stream_lock.lock();
    std::cout << "Thread End.\n";
    global_stream_lock.unlock();
}

size_t fac(size_t n)
{
    if (n <= 1)
    {
        return 1;
    }

    boost::this_thread::sleep_for(boost::chrono::milliseconds(1000));
    return n * fac(n-1);
}

void calculateFactorial(size_t n)
{
    global_stream_lock.lock();
    std::cout << "Calculating " << n << "! factorial" << std::endl;
    global_stream_lock.unlock();

    size_t f = fac(n);

    global_stream_lock.lock();
    std::cout << n << "! factorial = " << f << std::endl;
    global_stream_lock.unlock();
}

int main()
{
    boost::shared_ptr<boost::asio::io_service> io_service(new boost::asio::io_service);
    boost::shared_ptr<boost::asio::io_service::work> worker(new boost::asio::io_service::work(*io_service));

    global_stream_lock.lock();
    std::cout << "This program will exit once all the work is finished." << std::endl;
    global_stream_lock.unlock();

    boost::thread_group threads;

    for (int i=1; i<6; ++i)
    {
        threads.create_thread(boost::bind(&workerThread, io_service, i));
    }

    io_service->post(boost::bind(&calculateFactorial, 5));
    io_service->post(boost::bind(&calculateFactorial, 8));
    io_service->post(boost::bind(&calculateFactorial, 10));

    worker.reset();

    threads.join_all();


    return 0;
}
