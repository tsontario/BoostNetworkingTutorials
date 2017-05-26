#include <boost/asio.hpp>
#include <boost/shared_ptr.hpp>
#include <boost/thread.hpp>
#include <boost/thread/mutex.hpp>
#include <boost/bind.hpp>
#include <iostream>

boost::mutex global_stream_lock;

void workerThread(boost::shared_ptr<boost::asio::io_service> io_service, int counter)
{
    global_stream_lock.lock();
    std::cout << "Thread " << counter << " Start." << std::endl;
    global_stream_lock.unlock();

    io_service->run();

    global_stream_lock.lock();
    std::cout << "Thread " << counter << " End." << std::endl;
    global_stream_lock.unlock();
}

void print(int number)
{
    std::cout << "Number: " << number << std::endl;
}

int main()
{
    boost::shared_ptr<boost::asio::io_service> io_service(new boost::asio::io_service);
    boost::shared_ptr<boost::asio::io_service::work> worker(new boost::asio::io_service::work(*io_service));
    boost::asio::io_service::strand strand(*io_service);

    global_stream_lock.lock();
    std::cout << "The program will exit once all the work is finished." << std::endl;
    global_stream_lock.unlock();

    boost::thread_group threads;
    for (int i=1; i<6; ++i)
    {
        threads.create_thread(boost::bind(&workerThread, io_service, i));
        boost::this_thread::sleep_for(boost::chrono::seconds(1));
    }
    io_service->post(strand.wrap(boost::bind(&print, 1)));
    io_service->post(strand.wrap(boost::bind(&print, 2)));
    io_service->post(strand.wrap(boost::bind(&print, 3)));
    io_service->post(strand.wrap(boost::bind(&print, 4)));
    io_service->post(strand.wrap(boost::bind(&print, 5)));

    worker.reset();
    threads.join_all();

    return 0;
}