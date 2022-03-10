
cmake_minimum_required(VERSION 3.9)

project(math VERSION 1.0.1 DESCRIPTION "Creating math lib for testing..")




add_library(math SHARED lib/math/Operations.cpp)


set_target_properties(math PROPERTIES
        # # for FRAMEWORK begin
        # FRAMEWORK TRUE
        # FRAMEWORK_VERSION C
        # MACOSX_FRAMEWORK_IDENTIFIER com.cmake.targetname
        # MACOSX_FRAMEWORK_INFO_PLIST ./Info.plist
        # PUBLIC_HEADER targetname.h
        # # for FRAMEWORK end
        IPHONEOS_DEPLOYMENT_TARGET "12.0"
        DYLIB_INSTALL_NAME_BASE "@rpath" # this is the key point
        XCODE_ATTRIBUTE_CODE_SIGN_IDENTITY "iPhone Developer"
        DEVELOPMENT_TEAM "${DEVELOPMENT_TEAM}"
    )

install(TARGETS math DESTINATION lib)

install(FILES lib/math/Operations.hpp DESTINATION include)




