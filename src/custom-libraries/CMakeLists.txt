cmake_minimum_required(VERSION 3.16)
set(PROJECT_GUIDE_NAME custom-libraries)
include(GitUtils.cmake)
include(PrecompiledHeader.cmake)

source_group("main ${PROJECT_GUIDE_NAME} sources" FILES "main.cpp")

# Add executable
add_executable(${PROJECT_GUIDE_NAME} "${CMAKE_CURRENT_SOURCE_DIR}/src/main.cpp")

git_clone(
    PROJECT_NAME    libfresample
    GIT_URL         https://github.com/suirless/libfresample.git
    GIT_BRANCH      main
    DIRECTORY       ${CMAKE_CURRENT_SOURCE_DIR}/deps
)

add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/deps/libfresample)
target_link_libraries(${PROJECT_GUIDE_NAME} fresample)

target_include_directories(${PROJECT_GUIDE_NAME} PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
message(STATUS "Current project guide name - ${PROJECT_GUIDE_NAME}")
