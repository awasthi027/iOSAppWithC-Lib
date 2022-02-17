# How to create Compile and Run C++ Code with Help Cmake Script.
# Reference Link (https://medium.com/@onur.dundar1/cmake-tutorial-585dd180109b) 

# We can run c++ project without Cmake file

  Command: g++ main.cpp -o cmake_hello
  
  It will run the command and create exe file. which you can execute from terminal.
  
  Commands
  
  cmake CMakeLists.txt # create C make depdency 
  
  make all # create exc file. When can run from terminal
  
  
  
  # keep build file in one folder and create build 
  commands 
  
  mkdir build 
  cd build 
  cmake ..
  
All build file will be created in build folder
  
  
  Same thing achieve this command 
  
  $ cmake -H. -Bbuild
# H indicates source directory
# B indicates build directory
# For CLion, you can navigate to CLion -> Preferences -> Build, Execution and Deployment -> CMake -> Generation Path
