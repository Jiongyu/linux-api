cmake_minimum_required (VERSION 2.8)
aux_source_directory(. DIR_SRCS)
project (file_io)


add_executable(demo demo.c)
add_executable(block_keyboard block_keyboard.c)
add_executable(block_mouse block_mouse.c)
add_executable(concurrent_io concurrent_io.c)

