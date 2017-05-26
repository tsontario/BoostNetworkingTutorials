#include <boost/asio.hpp>
#include <boost/shared_ptr.hpp>
#include <boost/thread.hpp>
#include <boost/bind.hpp>
#include <iostream>

boost::mutex global_stream_lock;

void workerThread(boost::shared_ptr<boost::asio::io_service> io_service)
{
    global_stream_lock.lock();
    std::cout << "Thread Start.\n";
    global_stream_lock.unlock();

    io_service->run();

    global_stream_lock.lock();
    std::cout << "Thread End.\n";
    global_stream_lock.unlock();
}

void dispatch(int i)
{
    global_stream_lock.lock();
    std::cout << "dispatch() function for i = " << i << std::endl;
    global_stream_lock.unlock();
}

void post(int i)
{
    global_stream_lock.lock();
    std::cout << "post() function for i = " << i << std::endl;
    global_stream_lock.unlock();
}

void running(boost::shared_ptr<boost::asio::io_service> io_service)
{
    for (int i=0; i<5; ++i)
    {
        io_service->post(boost::bind(&post, i));
        io_service->dispatch(boost::bind(&dispatch, i));
        boost::this_thread::sleep_for(boost::chrono::milliseconds(1000));
    }
}

int main()
{
    boost::shared_ptr<boost::asio::io_service> io_service(new boost::asio::io_service);
    boost::shared_ptr<boost::asio::io_service::work> worker(new boost::asio::io_service::work(*io_service));

    global_stream_lock.lock();
    std::cout << "This program will exit once all the work is finished." << std::endl;
    global_stream_lock.unlock();

    boost::thread_group threads;

    threads.create_thread(boost::bind(&workerThread, io_service));
    io_service->dispatch(boost::bind(&running, io_service));


    worker.reset();

    threads.join_all();


    return 0;
}
