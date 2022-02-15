cmake_minimum_required(VERSION 3.12)
SET(CMAKE_POLICY_DEFAULT_CMP0074 NEW)
if (NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE "Release")
endif(NOT CMAKE_BUILD_TYPE)
message(STATUS "Build Type: ${CMAKE_BUILD_TYPE}")
#Release
set(CMAKE_CUDA_FLAGS "-arch=compute_75 -code=sm_75")
#debug
#set(CMAKE_CUDA_FLAGS "–g –G -arch=compute_70 -code=sm_70 ")

if(MSVC)
	set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /MP /bigobj") ### Enable parallel compilation
else()
	set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++14") #### eigen requires a modern C++ compiler that supports c++11 or later
	
	set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wno-deprecated-declarations -Wno-unused-parameter -Wno-unused-result -fPIC -fcompare-debug-second")
	set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wno-deprecated-declarations -Wno-unused-parameter -Wno-unused-result -fcompare-debug-second")
    set(CMAKE_CXX_FLAGS_DEBUG "-O0 -ggdb3 ")
    set(CMAKE_CXX_FLAGS_RELEASE "-O2 ")
endif()


project(G3d LANGUAGES CXX CUDA)

find_package(CUDA  REQUIRED)
include_directories("${CUDA_INCLUDE_DIRS}")

set(Source_DIR "${PROJECT_SOURCE_DIR}/src")

add_subdirectory(${Source_DIR})