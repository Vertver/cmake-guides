cmake_minimum_required(VERSION 3.16)

set(PROJECT_GUIDE_NAME simple-exec)

file (GLOB "${PROJECT_GUIDE_NAME}_SRC"
	"${CMAKE_CURRENT_SOURCE_DIR}/*.cpp"
	"${CMAKE_CURRENT_SOURCE_DIR}/*.h"
)

source_group("main ${PROJECT_GUIDE_NAME} sources" FILES "${PROJECT_GUIDE_NAME}_SRC")

add_executable(${PROJECT_GUIDE_NAME} "${${PROJECT_GUIDE_NAME}_SRC}")

message(STATUS "Current project guide name - ${PROJECT_GUIDE_NAME}")