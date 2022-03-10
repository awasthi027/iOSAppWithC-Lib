
1. /Users/ashishawasthi/Documents/RandD/iOSAppWithC-Lib/CreateDynamicLib/math-lib/build


cmake -D CMAKE_INSTALL_PREFIX=/Users/ashishawasthi/Documents/RandD/iOSAppWithC-Lib/CreateDynamicLib/math-lib/prefix/ -B build  -D CMAKE_TOOLCHAIN_FILE=../../ios.toolchain.cmake -DPLATFORM=OS64



2. cmake --build build 

3. cmake --install build 
