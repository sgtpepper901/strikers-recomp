cmake_minimum_required(VERSION 3.22)
project(super_mario_strikers_runtime LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

if(NOT DEFINED GCGLUE_SDK_ROOT)
  get_filename_component(GCGLUE_SDK_ROOT "${CMAKE_CURRENT_SOURCE_DIR}/.." ABSOLUTE)
endif()

add_subdirectory("${GCGLUE_SDK_ROOT}/runtime" gcglue-runtime)
include(generated/gcglue.cmake)

add_executable(super_mario_strikers
  src/main.cpp
)
target_link_libraries(super_mario_strikers PRIVATE gcglue_runtime ${PROJECT_NAME}_generated)
target_include_directories(super_mario_strikers PRIVATE
  ${CMAKE_CURRENT_SOURCE_DIR}
  ${CMAKE_CURRENT_SOURCE_DIR}/generated
)
