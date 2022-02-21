
# How to create .a file from c++ library Took the examle of Sample Math function and created Obejctive C wrapper class from c++ class
# Add compiled c++ library with command 

Step 1 Create sample CMakeLists.txt file basic property follow the instuctions 
Step 1 to 8 in CMakeList.txt file 

Run commands 
Navigate at cmakeLists.txt path -> mkdir build -> cd build -> cmake ..

It will create reference files

Command: make all 

Will create exe file which you can run just open the file on terminal 


 
# How to convert c++ lib file(source code) to iOS .a file 

# Disable code signing in project 

Add in cMakeLists.txt file 

set(CMAKE_XCODE_ATTRIBUTE_CODE_SIGNING_ALLOWED "NO")

# Create .a file taraget 

math is Target name. Library will we create with math.a name


# Library
if(BUILD_SHARED)
  add_library (math SHARED ${SOURCES} ${HEADERS})
  target_compile_definitions(math PUBLIC IS_BUILDING_SHARED)
  message(STATUS "Building shared version...")
else()
  add_library (math STATIC ${SOURCES} ${HEADERS})
  message(STATUS "Building static version...")
endif()


# Command for creating iOS Project and from iOS Project we can get .a file

Command: 

Creating build folder so all file related to xcode configuration will be in build folder

At CMakeLists.txt path 

mkdir build 
cd build 

cmake .. -G Xcode -DCMAKE_TOOLCHAIN_FILE=../../ios.toolchain.cmake -DPLATFORM=OS64

cmake .. Meand compile available file in back path
-G Menas create code project 
-DCMAKE_TOOLCHAIN_FILE file have all configuratio related to file 
-DPLATFORM=OS64 create xcode project with device architecture arm64 


 
# How to access in sample code 

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

#import "OperationsIOS.h"

Step 10. Access c++ lib interface  

    // Do any additional setup after loading the view, typically from a nib.
      OperationsIOS *operation = [OperationsIOS new];
    NSInteger item = (long)[operation sum:10 second:12];
    [text appendString:[NSString stringWithFormat:@"\nAdd Two Number: ==%ld",item]];
    item = (long)[operation mult:10 second:12];
    [text appendString:[NSString stringWithFormat:@"\nMulti Two Number: ==%ld",item]];
    item = (long)[operation div:10 second:12];
    [text appendString:[NSString stringWithFormat:@"\nDivide Two Number: ==%ld",item]];
    item = (long)[operation sub:10 second:12];
   [text appendString:[NSString stringWithFormat:@"\nSuntraction Two Number: ==%ld",item]];
    
