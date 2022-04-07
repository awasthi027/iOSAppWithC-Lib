# How to convert TomTom package

** First create lib from sqlite datta package and compile
 
** Navigate at path from where we have to cmake command 

** Step 1

  src->cpp- from here we can run cmake command database package iOS

Command:

 * This is the path where you want to keep build library for use 
 
 /Users/ashishawasthi/Desktop/prefix_arm64

* build folder This foldet where you will have build compilation files 

  build_arm64  


* if compile for arm architecture you need have tookchain file and  place file at common path and give the path in the command

* -DPLATFORM compile for arch64 architecuer 

cmake -D CMAKE_INSTALL_PREFIX=/Users/ashishawasthi/Desktop/prefix_arm64 -B build_arm64 -D NDS_SQLITE3_WITH_COLLATIONS_ICU=off -D CMAKE_TOOLCHAIN_FILE=ios.toolchain.cmake -DPLATFORM=OS64 .

** Step 2

cmake --build build_arm64 

** Step 3

 cmake --install build_arm64


# Find toolchain from tomtom package. Its not part of tomtom. Its extenal file and keeping tom tom folder. Needed for arm compilers




** Now we have  to do same  things ndsuc packages 
 
** Navigate at path from where we have to cmake command ndsuc Package
ndsuc-src-2021.2.0->src

** Step 1

* CMAKE_INSTALL_PREFIX its path of build 

/Users/ashishawasthi/Desktop/prefix_arm64 

 This is the path where you want to keep build library for use 

* prefix_arm64 folder name for build 

build folder This foldet where you will have build compilation files 

* CMAKE_TOOLCHAIN_FILE= we have give tookchain file path

* -DPLATFORM compile for arch64 architecture 

cmake -D CMAKE_INSTALL_PREFIX=/Users/ashishawasthi/Desktop/prefix_arm64 -B build_arm64 -D CMAKE_TOOLCHAIN_FILE=ios.toolchain.cmake -DPLATFORM=OS64 .

** Step 2

cmake --build build_arm64 


** Step 3

 cmake --install build_arm64


# After that it will create dylib and .a files and include header files

prefix_arm64 
           -> include folder
           ->lib

1. libnds_sqlite3_crypto.dylib
2. libnds_sqlite3.dylib
3.libndsuc.a 

** Header files 

include
      ->nds_extensions.h
      ->nds_sqlite3.h
      ->nds_sqlite3ext.h
      ->ndsuc directory files



# FAQ 

* We have do follow the steps for sqlite and ndsuc then only will get library for use 

1. libnds_sqlite3_crypto.dylib
2. libnds_sqlite3.dylib
3.libndsuc.a 


** While adding .a file in sample application you make get error 


Undefined symbol: _sqlite3_libversion
Undefined symbol: _sqlite3_value_text


Just add thie in other linker flag in sample application -lsqlite3


** Header files 

include
      ->nds_extensions.h
      ->nds_sqlite3.h
      ->nds_sqlite3ext.h
      ->ndsuc directory files




For creating static Lib follow below steps


You may try to build the static libraries with modification below:

For libnds_sqlite3.a, add "-DNDS_SQLITE3_BUILD_STATIC_LIB=ON" to the command line of cmake config
For libnds_sqlite3_crypto.a, modify the source code in xxx/cpp/crypto/CMakeLists.txt. Replace 'SHARED' by 'STATIC' at line 9 


cmake -D CMAKE_INSTALL_PREFIX=/Users/ashishawasthi/Desktop/prefix -B build_arm64 -D NDS_SQLITE3_WITH_COLLATIONS_ICU=off -DNDS_SQLITE3_BUILD_STATIC_LIB=ON -D CMAKE_TOOLCHAIN_FILE=ios.toolchain.cmake -DPLATFORM=OS64 .
