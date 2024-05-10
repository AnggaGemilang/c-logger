cmake_minimum_required(VERSION 3.21.0)

project(c-logger VERSION 0.1.0 LANGUAGES C CXX)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

set(CMAKE_CXX_STANDARD 11)

include(CTest)

enable_testing()

include_directories(
    "/opt/vcpkg/installed/x64-linux/include"
)

link_directories(
    "/opt/vcpkg/installed/x64-linux/lib"
)

file(GLOB_RECURSE SOURCES src/*.cpp src/*.cc src/*.h src/*.hpp)

list(REMOVE_ITEM SOURCES ${CMAKE_CURRENT_SOURCE_DIR}/src/app.cpp)

add_library(shared-objects OBJECT ${SOURCES})

add_executable(${PROJECT_NAME} ${CMAKE_CURRENT_SOURCE_DIR}/src/app.cpp $<TARGET_OBJECTS:shared-objects>)

find_package(spdlog CONFIG REQUIRED)
target_link_libraries(${PROJECT_NAME} PRIVATE spdlog::spdlog)

set(CPACK_PROJECT_NAME ${PROJECT_NAME})

set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})

include(CPack)