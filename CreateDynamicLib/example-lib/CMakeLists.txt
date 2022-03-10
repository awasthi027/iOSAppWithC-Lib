
cmake_minimum_required(VERSION 3.9)

project(hello VERSION 1.0.1 DESCRIPTION "Creating math lib for testing..")


add_library(hello SHARED HelloWorld.cpp)



install(TARGETS hello DESTINATION lib)

install(FILES HelloWorld.hpp DESTINATION include)




