# set minimum  cmake version
cmake_minimum_required(VERSION 3.19.1 FATAL_ERROR)

#project name and lenguages
project(recipe-01 LANGUAGES C)

# Introduce a toggle for using a library
set(USE_LIBRARY ON)
message(STATUS "Compile sources into a library? ${USE_LIBRARY}")

# BUIL_SHARED_LIBS is a global flag offered by CMake
# to toggle de behavior of add_library
set(BUILD_SHARED_LIBS OFF)

# list sources
list (APPEND _sources message.h message.c)

if(USE_LIBRARY)
    # add_library will create a static library
    # since BUIL_SHARED_LIBS is OFF

    #generate a library from sources (this is another target and it is a static library)
    add_library(message ${_sources})

    # target to create a executable
    add_executable(hello-world hello-world.c)

    # the target library has to be linked into the executable target
    target_link_libraries(hello-world message)
else()
    add_executable(hello-world hello-world.c message.h message.c)
endif()