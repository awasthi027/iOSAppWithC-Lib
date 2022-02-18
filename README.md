# iOSAppWithC-Lib
Create C++ Library and Integrate with iOS Swift Code


#How to create C++ Library(.a) file which we can use in Objective-C Project.
1. Write Objective-C Interface and Implementation follow the example HelloWorldIOS.h and HelloWorldIOS.mm 
2. Write C++ Interface and Implementation follow the example HelloWorld.hpp and HellowWorld.cpp

3. Create CMakeLists.txt file and add the headers dependencies 



# To Create C++ .a file 

Step1. Navigate at your CMakeLists.txt file

Step2. Create one folder at same mkdir build 

Step 3. cd build

Step 4. Keep ios.toolchain.cmake atgiven in command

Step 5. run command 

cmake .. -G Xcode -DCMAKE_TOOLCHAIN_FILE=../../ios.toolchain.cmake -DPLATFORM=OS64

Step 6. It will generate xcode project in build folder compile all build manualally or run below command 

cmake --build . --config Release

Take .a file from build foler and import in Sample application.

# How import C++ .a file in IOS  project

Step 1. Create on folder in the Objectice-C Project file Example lib-files 

Step 2. Create two sub folders include and lib

Step 3. Copy paste .a file in lib folder 

Step 4. Copy paste .h header objective header files for exmaple in sample project.

Step 5. Add lib-files folder in project reference 

Step 6. Add other linker flag -lc++

Step 7. Add Header serach path Exmaple $(PROJECT_DIR)/SampleApp/lib-files/include again depend on your header location 

Step 8. Add libary search path $(PROJECT_DIR)/SampleApp/lib-files/lib again depend on your lib file  location 

Step 9. Import 

#import "HelloWorldIOS.h"

Step 10. Access c++ lib interface  

    // Do any additional setup after loading the view, typically from a nib.
    HelloWorldIOS *helloWorld = [HelloWorldIOS new];
    self.helloWorldLabel.text = [helloWorld getHelloWorld];





# More Information for creating iOS lib 

#Platform flag options (-DPLATFORM=flag)

Platform flag options (-DPLATFORM=flag)
OS - to build for iOS (armv7, armv7s, arm64) DEPRECATED in favour of OS64
OS64 - to build for iOS (arm64 only)
OS64COMBINED - to build for iOS & iOS Simulator (FAT lib) (arm64, x86_64)
SIMULATOR - to build for iOS simulator 32 bit (i386) DEPRECATED
SIMULATOR64 - to build for iOS simulator 64 bit (x86_64)
SIMULATORARM64 - to build for iOS simulator 64 bit (arm64)
TVOS - to build for tvOS (arm64)
TVOSCOMBINED - to build for tvOS & tvOS Simulator (arm64, x86_64)
SIMULATOR_TVOS - to build for tvOS Simulator (x86_64)
WATCHOS - to build for watchOS (armv7k, arm64_32)
WATCHOSCOMBINED - to build for watchOS & Simulator (armv7k, arm64_32, i386)
SIMULATOR_WATCHOS - to build for watchOS Simulator (i386)
MAC - to build for macOS (x86_64)
MAC_ARM64 - to build for macOS on Apple Silicon (arm64)
MAC_CATALYST - to build iOS for Mac (Catalyst, x86_64)


# More infomation 

https://github.com/leetal/ios-cmake
