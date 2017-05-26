cmake_minimum_required(VERSION 3.7)
project(Booster)

set(CMAKE_CXX_STANDARD 14)
find_package(Boost COMPONENTS system filesystem thread REQUIRED)
include_directories(${Boost_INCLUDE_DIRS})

set(SOURCE_FILES udp_client_server/UDPClient.cpp udp_client_server/UDPClient.h udp_client_server/KeyProgram.cpp udp_client_server/UDPServer.cpp udp_client_server/UDPServer.h)
add_executable(Booster ${SOURCE_FILES})
add_executable(Main BookTutorial/AsyncThreadGroup.cpp)
add_executable(IOService BookTutorial/IOService.cpp)
add_executable(BindTutorial BookTutorial/BindTutorial.cpp)
add_executable(IOServiceWork BookTutorial/IOServiceWork.cpp)

target_link_libraries(Booster ${Boost_LIBRARIES})
target_link_libraries(Main ${Boost_LIBRARIES})
target_link_libraries(IOService ${Boost_LIBRARIES})
target_link_libraries(BindTutorial ${Boost_LIBRARIES})
target_link_libraries(IOServiceWork ${Boost_LIBRARIES})

