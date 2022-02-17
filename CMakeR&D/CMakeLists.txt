#1 Include minmum cmake version 

cmake_minimum_required(VERSION 3.9.1)

#2 Include project name

project(CMakeHello)

#4 Add for return type

set(CMAKE_CXX_STANDARD 14)

#3 Add executable source file

#5

# or use MATCHES to see if actual system name 
# Darwin is Apple's system name
if(${CMAKE_SYSTEM_NAME} MATCHES Darwin)
    add_definitions(-DCMAKEMACROSAMPLE="=====Apple MacOS")
elseif(${CMAKE_SYSTEM_NAME} MATCHES Windows)
    add_definitions(-DCMAKEMACROSAMPLE="======Windows PC")
endif()

#7  Set out directory path in bin folder

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

#8
set(SOURCES main.cpp 
            lib/math/operations.cpp 
            lib/math/operations.hpp)

add_executable(cmake_hello ${SOURCES})


