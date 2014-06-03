cmake_minimum_required(VERSION 2.8)

project(tinyxml)

include_directories(.)

add_definitions(-DTIXML_USE_STL)

add_library(tinyxml tinystr.cpp tinyxml.cpp tinyxmlerror.cpp tinyxmlparser.cpp)
target_link_libraries(tinyxml)

install(TARGETS tinyxml 
        RUNTIME DESTINATION bin
        LIBRARY DESTINATION lib
        ARCHIVE DESTINATION lib)

install(FILES "../CMake/Packages/FindTinyXML.cmake" DESTINATION lib)
install(FILES tinyxml.h DESTINATION include)
install(FILES tinystr.h DESTINATION include)

