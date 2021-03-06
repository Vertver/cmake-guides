cmake_minimum_required(VERSION 3.16)

set(PROJECT_GUIDE_NAME additional-packages)

find_package(ZLIB REQUIRED)

source_group("main ${PROJECT_GUIDE_NAME} sources" FILES "main.cpp")

# Add executable
add_executable(${PROJECT_GUIDE_NAME} "main.cpp")
target_link_libraries(${PROJECT_GUIDE_NAME} PRIVATE ZLIB::ZLIB)

message(STATUS "Current project guide name - ${PROJECT_GUIDE_NAME}")