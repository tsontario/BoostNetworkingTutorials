//
// Created by Timothy Smith on 2017-05-25.
//
#include <boost/thread.hpp>
#include <boost/chrono.hpp>
#include <boost/asio.hpp>
#include <iostream>

void print1()
{
    for (int i=0; i<5; ++i)
    {
        boost::this_thread::sleep_for(boost::chrono::milliseconds{500});
        std::cout << "Print1" << ", Line: " << i << std::endl;
    }
}

void print2()
{
    for (int i=0; i<5; ++i)
    {
        boost::this_thread::sleep_for(boost::chrono::milliseconds{500});
        std::cout << "Print2" << ", Line: " << i << std::endl;
    }
}

int main()
{
    boost::thread_group threads;
    threads.create_thread(print1);
    threads.create_thread(print2);
    threads.join_all();


    std::cout << "Hello world" << std::endl;

    return 0;
}