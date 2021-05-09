# set minimum  cmake version
cmake_minimum_required(VERSION 3.19.1 FATAL_ERROR)

#project name and lenguages
project(recipe-01 LANGUAGES C)

#generate a library from sources (this is another target and it is a static library)
# add_library( name_target) --> result is a libmessage.a (STATIC)
add_library(message 
    STATIC
        message.h
        message.c
   )

# target to create a executable
add_executable(hello-world hello-world.c)

# the target library has to be linked into the executable target
target_link_libraries(hello-world message)