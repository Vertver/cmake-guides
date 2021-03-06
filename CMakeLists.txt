# Hello cmake guids
cmake_minimum_required(VERSION 3.16)
project(cmake-guids)

set(BASE_DIR ${CMAKE_CURRENT_SOURCE_DIR})
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${BASE_DIR}/bin)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${BASE_DIR}/bin)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${BASE_DIR}/bin)

add_subdirectory("${CMAKE_CURRENT_SOURCE_DIR}/src/additional-flags")
add_subdirectory("${CMAKE_CURRENT_SOURCE_DIR}/src/additional-libraries")
add_subdirectory("${CMAKE_CURRENT_SOURCE_DIR}/src/additional-packages")
add_subdirectory("${CMAKE_CURRENT_SOURCE_DIR}/src/custom-functions")
add_subdirectory("${CMAKE_CURRENT_SOURCE_DIR}/src/custom-libraries")
add_subdirectory("${CMAKE_CURRENT_SOURCE_DIR}/src/simple-exec")
