cmake_minimum_required(VERSION 3.12)
SET(CMAKE_POLICY_DEFAULT_CMP0074 NEW)

if (NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE "Release")
endif(NOT CMAKE_BUILD_TYPE)
message(STATUS "Build Type: ${CMAKE_BUILD_TYPE}")
set(CMAKE_CUDA_FLAGS "-arch=sm_70")
project(G3d LANGUAGES CXX CUDA)

set(Source_DIR "${PROJECT_SOURCE_DIR}/src")

add_subdirectory(${Source_DIR})