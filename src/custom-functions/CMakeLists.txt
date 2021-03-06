cmake_minimum_required(VERSION 3.16)

set(PROJECT_GUIDE_NAME "custom-functions")
include(CreateMyExecutable.cmake)

create_my_executable(${PROJECT_GUIDE_NAME} "${CMAKE_CURRENT_SOURCE_DIR}/my_src")
