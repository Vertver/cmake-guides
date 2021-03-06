cmake_minimum_required(VERSION 3.16)

include(SetTargetCompileType.cmake)

set(PROJECT_GUIDE_NAME additional-flags)

source_group("main ${PROJECT_GUIDE_NAME} sources" FILES "main.cpp")

# Add executable
add_executable(${PROJECT_GUIDE_NAME} "main.cpp")
target_link_libraries(${PROJECT_GUIDE_NAME} ${ADDITIONAL_LIBRARY_NAME})
target_compile_definitions(${PROJECT_GUIDE_NAME} PRIVATE PROJECT_SRC_NAME=${PROJECT_GUIDE_NAME})

set_target_mt()

message(STATUS "Current project guide name - ${PROJECT_GUIDE_NAME}")
