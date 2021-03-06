cmake_minimum_required(VERSION 3.16)

function(set_target_mt)

set(COMPILE_FLAGS_MT
    CMAKE_CXX_FLAGS
    CMAKE_CXX_FLAGS_DEBUG
    CMAKE_CXX_FLAGS_RELEASE
    CMAKE_C_FLAGS
    CMAKE_C_FLAGS_DEBUG
    CMAKE_C_FLAGS_RELEASE
)

foreach(COMPILE_FLAG ${COMPILE_FLAGS_MT})
  string(REPLACE "/MD" "/MT" ${COMPILE_FLAG} "${${COMPILE_FLAG}}")
endforeach()

endfunction()

function(set_target_md)
	
set(COMPILE_FLAGS_MT
    CMAKE_CXX_FLAGS
    CMAKE_CXX_FLAGS_DEBUG
    CMAKE_CXX_FLAGS_RELEASE
    CMAKE_C_FLAGS
    CMAKE_C_FLAGS_DEBUG
    CMAKE_C_FLAGS_RELEASE
)

foreach(COMPILE_FLAG ${COMPILE_FLAGS_MT})
  string(REPLACE "/MT" "/MD" ${COMPILE_FLAG} "${${COMPILE_FLAG}}")
endforeach()

endfunction()