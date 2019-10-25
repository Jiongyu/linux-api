cmake_minimum_required (VERSION 2.8)
aux_source_directory(. DIR_SRCS)
project (process)


add_executable(environ environ.c)

add_executable(fork fork.c)

add_executable(fork_wait fork_wait.c)