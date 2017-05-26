//
// Created by Timothy Smith on 2017-05-25.
//

#include <boost/asio.hpp>
#include <boost/thread.hpp>
#include <boost/timer.hpp>
#include <iostream>
#include <boost/shared_ptr.hpp>

boost::asio::io_service io_service;
int a{0};


void quitThread()
{
    std::cin.get();
}

void writerThread()
{

    std::cout << ++a << ".\n";
    std::cout << "End.\n";
}

int main()
{
    boost::thread_group threads;
    boost::shared_ptr<boost::asio::io_service::work> work(new boost::asio::io_service::work(io_service));

    threads.create_thread(writerThread);

    std::cout << "Press <ENTER> key to exit." << std::endl;

    for (int i=0; i<25; ++i)
    {
        threads.create_thread(writerThread);
    }

    io_service.poll();
    std::cin.get();
    io_service.stop();

    threads.join_all();


    return 0;
}