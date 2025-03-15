# The Flutter tooling requires that developers have CMake 3.10 or later
# installed. You should not increase this version, as doing so will cause
# the plugin to fail to compile for some customers of the plugin.
cmake_minimum_required(VERSION 3.19)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

project(creator_library VERSION 1.0.0 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++20")

add_library(creator SHARED
  "minefield_creator.cpp"
  "random_generator.cpp"
  "tree234.cpp"
  "creator.cpp"
)

set_target_properties(creator PROPERTIES
  PUBLIC_HEADER creator.h
  OUTPUT_NAME "creator"
)

target_compile_definitions(creator PUBLIC DART_SHARED_LIB)
