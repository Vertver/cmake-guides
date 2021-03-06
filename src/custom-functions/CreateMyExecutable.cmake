cmake_minimum_required(VERSION 3.16)

function(create_my_executable executable_name executable_src_path)

file(GLOB_RECURSE "${executable_src_path}_src"
	"${executable_src_path}/*.cpp"
	"${executable_src_path}/*.hpp"
	"${executable_src_path}/*.cc"
	"${executable_src_path}/*.hh"
	"${executable_src_path}/*.c"
	"${executable_src_path}/*.h"
)

add_executable(${executable_name} "${${executable_src_path}_src}")
source_group("main ${executable_name} sources" FILES "${${executable_src_path}_src}")
message(STATUS "function ${executable_name} created")
endfunction()
