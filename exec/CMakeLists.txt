cmake_minimum_required (VERSION 2.8)
aux_source_directory(. DIR_SRCS)
project (exec_test)


add_executable(exec_demo exec_demo.c)
add_executable(exec exec.c)

