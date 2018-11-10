cmake_minimum_required(VERSION 3.12)
project(Laboratorio_1_Codigo_Fonte)

set(CMAKE_CXX_STANDARD 14)

include_directories(.)
include_directories(bin)
include_directories(include)
include_directories(include/glad)
include_directories(include/GLFW)
include_directories(include/KHR)
include_directories(lib)
include_directories(lib-linux)
include_directories(src)

add_executable(Laboratorio_1_Codigo_Fonte
        include/glad/glad.h
        include/GLFW/glfw3.h
        include/GLFW/glfw3native.h
        include/KHR/khrplatform.h
        include/utils.h
        lib/glfw3.dll
        lib/libglfw3.a
        lib/libglfw3dll.a
        lib-linux/libglfw3.a
        src/glad.c
        src/main.cpp
        src/shader_fragment.glsl
        src/shader_vertex.glsl
        Laboratorio_1.cbp
        Laboratorio_1.layout
        LEIAME.txt
        Makefile)
