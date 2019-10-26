cmake_minimum_required (VERSION 2.8)
aux_source_directory(. DIR_SRCS)
project (thread)

find_package(Threads)

add_executable(creat_new creat_new.c)
target_link_libraries(creat_new ${CMAKE_THREAD_LIBS_INIT})

add_executable(signal signal.c)
target_link_libraries(signal ${CMAKE_THREAD_LIBS_INIT})

add_executable(mute_lock mute_lock.c)
target_link_libraries(mute_lock ${CMAKE_THREAD_LIBS_INIT})

add_executable(cond cond.c)
target_link_libraries(cond ${CMAKE_THREAD_LIBS_INIT})