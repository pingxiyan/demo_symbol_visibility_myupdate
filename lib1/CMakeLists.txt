CMAKE_MINIMUM_REQUIRED(VERSION 3.2)

PROJECT(lib1)

# Avoid same name functions call error.
ADD_DEFINITIONS(--visibility=hidden)

# Set include path
INCLUDE_DIRECTORIES(
    ${CMAKE_CURRENT_SOURCE_DIR}/  
	)

ADD_LIBRARY(lib1 SHARED ${CMAKE_CURRENT_SOURCE_DIR}/get_seven.cpp)