CMAKE_MINIMUM_REQUIRED(VERSION 3.2)

PROJECT(lib2)

# Set include path
INCLUDE_DIRECTORIES(
    ${CMAKE_CURRENT_SOURCE_DIR}/  
	)

ADD_LIBRARY(lib2 SHARED ${CMAKE_CURRENT_SOURCE_DIR}/get_three.cpp)