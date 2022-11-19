cmake_minimum_required(VERSION 3.14)

project(fcgi_test LANGUAGES CXX)

set(CMAKE_INCLUDE_CURRENT_DIR ON)

set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

SET (CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake/")

find_package(QT NAMES Qt5 COMPONENTS Core REQUIRED)
find_package(Qt${QT_VERSION_MAJOR} COMPONENTS Core REQUIRED)

find_package(FCGI REQUIRED)

if (NOT FCGI_FOUND)
  message (SEND_ERROR "Fast CGI library is missing! Please install libfcgi-dev")
endif()

include_directories(${FCGI_DIR})

add_executable(fcgi_test
  src/main.cpp
  src/FCGIThread.cpp src/FCGIThread.h
)

target_link_libraries(fcgi_test Qt${QT_VERSION_MAJOR}::Core ${FCGI_LIB})
