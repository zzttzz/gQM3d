cmake_minimum_required(VERSION 3.12)
set(ProjectName "testcuda")
project(testcuda)

file(GLOB SOURCES ./*.h ./*.hpp ./*.cpp ./*.c)

add_library(cudaMatMul c_cpp_cu1.cu)
target_compile_features(cudaMatMul PUBLIC cxx_std_11)
add_executable(testcuda c_cpp_cu3.cpp)
target_link_libraries(testcuda cudaMatMul)
