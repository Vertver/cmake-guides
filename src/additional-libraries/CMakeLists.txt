cmake_minimum_required(VERSION 3.16)

set(PROJECT_GUIDE_NAME additional-libraries)
set(ADDITIONAL_LIBRARY_NAME "additional-thing")

file(GLOB LIBRARY_SRC
	"library.c"
	"library.h"
)

source_group("library sources" FILES ${LIBRARY_SRC})
source_group("main ${PROJECT_GUIDE_NAME} sources" FILES "main.cpp")

# Add library
add_library(${ADDITIONAL_LIBRARY_NAME} ${LIBRARY_SRC})
target_include_directories(${ADDITIONAL_LIBRARY_NAME} PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})

# Add executable
add_executable(${PROJECT_GUIDE_NAME} "main.cpp")
target_link_libraries(${PROJECT_GUIDE_NAME} ${ADDITIONAL_LIBRARY_NAME})

message(STATUS "Current project guide name - ${PROJECT_GUIDE_NAME}")
message(STATUS "Current additional library - ${ADDITIONAL_LIBRARY_NAME}")
