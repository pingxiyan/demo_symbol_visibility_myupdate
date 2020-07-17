CMAKE_MINIMUM_REQUIRED(VERSION 3.2)

SET (TARGET_NAME testvisibility)
PROJECT(${TARGET_NAME})

# Set include path
ADD_DEFINITIONS(--visibility=hidden)
INCLUDE_DIRECTORIES(
    ${CMAKE_CURRENT_SOURCE_DIR}/../lib1
    ${CMAKE_CURRENT_SOURCE_DIR}/../lib2
	)

# unit test
ADD_EXECUTABLE(${TARGET_NAME} 
    ${CMAKE_CURRENT_SOURCE_DIR}/test.cpp
    )

TARGET_LINK_LIBRARIES(
    ${TARGET_NAME} 
    ${CMAKE_CURRENT_SOURCE_DIR}/../lib1/build/liblib1.so
    ${CMAKE_CURRENT_SOURCE_DIR}/../lib2/build/liblib2.so
    )
