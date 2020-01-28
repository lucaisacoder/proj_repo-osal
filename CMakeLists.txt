# CMake 最低版本号要求
cmake_minimum_required (VERSION 2.8)

include_directories(inc)
aux_source_directory(src DIR_SRCS)
add_library (osal STATIC ${DIR_SRCS})