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

# How import C++ .a file on object project

Step 1. Create on folder in the Objectice-C Project file Example lib-files 

Step 2. Create two sub folders include and lib

Step 3. Copy paste .a file in lib folder 

Step 4. Copy paste .hpp c++ header files and .h header objective header files for exmaple in sample project.

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
