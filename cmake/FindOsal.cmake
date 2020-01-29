set(Osal_ROOT_DIRS ${PROJ_REPO_TOP_DIR}/modules/osal)

set(_WINDOWS FALSE)
if("${CMAKE_SYSTEM_NAME}" MATCHES "Windows")
    set(_WINDOWS TRUE)
endif()

set(_LINUX FALSE)
if("${CMAKE_SYSTEM_NAME}" MATCHES "Linux")
    set(_LINUX TRUE)
endif()

find_path(Osal_INCLUDE_DIR
    NAMES "osal_api.h"
    PATHS "${Osal_ROOT_DIRS}/*")

find_library(Osal_LIBRARIES
    NAMES "libosal.a"
    HINTS "${Osal_ROOT_DIRS}/output")

if(Osal_INCLUDE_DIR)
    if(NOT Osal_LIBRARIES)
    endif()
    set(Osal_FOUND true)
    set(Osal_INCLUDE_DIRS ${Osal_INCLUDE_DIR})
endif()

