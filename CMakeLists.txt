cmake_minimum_required(VERSION 3.8)

project(philox-wrapper CXX)
enable_language(CUDA)

include(googletest-download/googletest-download.cmake)
include_directories(include)

add_executable(example example.cu)
target_link_libraries(example gtest gtest_main)

