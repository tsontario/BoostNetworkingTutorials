#include <boost/asio.hpp>
#include <boost/thread.hpp>
#include <boost/thread/mutex.hpp>
#include <boost/bind.hpp>
#include <boost/shared_ptr.hpp>
#include <iostream>

boost::mutex global_stream_lock;

void workerThread(boost::shared_ptr<boost::asio::io_service> io_service, int counter)
{
    global_stream_lock.lock();
    std::cout << "Thread " << counter << " Start.\n";
    global_stream_lock.unlock();

    while (true) {
        try {
            boost::system::error_code ec;
            io_service->run();
            if(ec) {
                global_stream_lock.lock();
                std::cout << "Message: " << ec << ".\n";
                global_stream_lock.unlock();
            }
            break;
        } catch (std::exception& ex) {
            global_stream_lock.lock();
            std::cout << "Message: " << ex.what() << std::endl;
            global_stream_lock.unlock();
        }
    }

    global_stream_lock.lock();
    std::cout << "Thread " << counter << " End.\n";
    global_stream_lock.unlock();
}

void timerHandler(boost::shared_ptr<boost::asio::deadline_timer> tmr,
                  const boost::system::error_code& ec,
                  boost::shared_ptr<boost::asio::io_service::strand> strand
                  )
{
    if (ec) {
        global_stream_lock.lock();
        std::cout << "Error Message: " << ec << ".\n";
        global_stream_lock.unlock();
    } else {
        global_stream_lock.lock();
        std::cout << "You see this line because you have waited for 3 seconds" << std::endl;
        global_stream_lock.unlock();

        tmr->expires_from_now(boost::posix_time::seconds(3));
        tmr->async_wait(strand->wrap(boost::bind(timerHandler, tmr, boost::asio::placeholders::error(), strand)));

    }
}

int main()
{
    boost::shared_ptr<boost::asio::io_service> io_service(new boost::asio::io_service);
    boost::shared_ptr<boost::asio::io_service::work> work(new boost::asio::io_service::work(*io_service));
    boost::shared_ptr<boost::asio::io_service::strand> strand(new boost::asio::io_service::strand(*io_service));
    boost::shared_ptr<boost::asio::io_service::strand> strand1(new boost::asio::io_service::strand(*io_service));

    global_stream_lock.lock();
    std::cout << "Wait for 10 seconds to see what happens, otherwise press <ENTER> to exit" << std::endl;
    global_stream_lock.unlock();

    boost::thread_group threads;
    for (int i=1; i<6; ++i)
    {
        threads.create_thread(boost::bind(&workerThread, io_service, i));
    }



    boost::shared_ptr<boost::asio::deadline_timer> timer(new boost::asio::deadline_timer(*io_service));
    timer->expires_from_now(boost::posix_time::seconds(3));
    timer->async_wait(boost::bind(timerHandler, timer, boost::asio::placeholders::error(), strand));

    std::cin.get();
    io_service->stop();
    work.reset();
    threads.join_all();
}