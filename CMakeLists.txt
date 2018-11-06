cmake_minimum_required(VERSION 3.0)

project(bootstrap-cmake)


# 3rd party

set(BUILD_SHARED_LIBS 0 CACHE BOOL "no need shared libs for any 3rdparty libs")

add_subdirectory(3rdparty/gflags)

set(BOOST_SOURCE "${CMAKE_CURRENT_SOURCE_DIR}/3rdparty/boost")
add_subdirectory(3rdparty/boost-cmake)


# my app

set(EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR}/bin)
set(LIBRARY_OUTPUT_PATH ${PROJECT_BINARY_DIR}/lib)

add_subdirectory(src/boost/thread)
add_subdirectory(src/test-gflags)

