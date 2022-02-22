
# Create static lib with the c++ with help of cmake and get .a file and headers file for use. Without xcode user 

** Step1.

1.  -D specify destination path and CMAKE_INSTALL_PREFIX= giv path where you want to copy paste .a file and header files with install command camke --install build
-B for build and this build is folder 

-D again specify destination path for toolChain file Toolchain file for iOS compilation build 

-DPLATFORM= comiple for dzire architecture 
OS64 meand compile for arm64 

cmake -D CMAKE_INSTALL_PREFIX=/Users/ashishawasthi/Documents/RandD/iOSAppWithC-Lib/WithoutXcodeCreateStaticLib/math-lib/prefix/ -B build  -D CMAKE_TOOLCHAIN_FILE=../../ios.toolchain.cmake -DPLATFORM=OS64

** Step2. create build 

cmake --build build 

** Step2. Copy paste build at given path 

cmake --install build


**FAQ 

** How to create .a file without xcode file user 

Follow above step from 1 to 3 

** Do we required to do configuration for installation in cmake file  

Yes

//Installation

install(TARGETS math
          LIBRARY DESTINATION lib
          ARCHIVE DESTINATION lib)

 //Copy paste header files from source path to static lib for use

install (FILES ${HEADERS} DESTINATION include)

