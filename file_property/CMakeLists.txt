cmake_minimum_required (VERSION 2.8)
aux_source_directory(. DIR_SRCS)
project (file_property)


add_executable(stat_test stat_test.c)
add_executable(readir readir.c)
add_executable(scandir scandir.c)
