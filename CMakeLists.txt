include_directories(inc)
aux_source_directory(src DIR_SRCS)
add_library (proj_osal ${DIR_SRCS})