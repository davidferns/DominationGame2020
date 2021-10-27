cmake_minimum_required(VERSION 3.15)
project(Assignment_2 C)

set(CMAKE_C_STANDARD 99)

add_executable(Assignment_2 main.c game_init.c cmake-build-debug/game_init.h input_output.c input_output.h Stack.c Stack.h)