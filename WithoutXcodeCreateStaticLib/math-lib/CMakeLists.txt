#1 Include minmum cmake version 

cmake_minimum_required(VERSION 3.15)

#2 Include project name

project(CMakeHello
  VERSION
    1.0
  DESCRIPTION
    "Sample Math lib Project"
  LANGUAGES
    C CXX
)

project(CMakeHello)

#4 Add for return type

set(CMAKE_CXX_STANDARD 14)

#3 Add executable source file

#7  Set out directory path in bin folder

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

#8
set(SOURCES main.cpp 
            lib/math/Operations.cpp 
            )
# Headers
set(HEADERS
 lib/math/Operations.hpp
)

# This specific to iOS .h and .mm files only required if we want to use c++ lib in IOS
# ==========================================================================

#9 Disable code sign in Xcode Project

set(CMAKE_XCODE_ATTRIBUTE_CODE_SIGNING_ALLOWED "NO")

#10 Use below command Create static lib 

# Library
if(BUILD_SHARED)
  add_library (math SHARED ${SOURCES} ${HEADERS})
  target_compile_definitions(math PUBLIC IS_BUILDING_SHARED)
  message(STATUS "Building shared version...")
else()
  add_library (math STATIC ${SOURCES} ${HEADERS})
  message(STATUS "Building static version...")
endif()

# ==========================================================================


add_executable(cmake_hello ${SOURCES})

# Copy paste .a at give path

# Installation

install(TARGETS math
          LIBRARY DESTINATION lib
          ARCHIVE DESTINATION lib)

# Copy paste header files from source path to static lib for use

install (FILES ${HEADERS} DESTINATION include)


