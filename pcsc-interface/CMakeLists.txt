set(LIBRARY_NAME "pcsc-interface")

if (UNIX)
  list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")
  find_package(PCSCLite REQUIRED)
endif (UNIX)

file(GLOB_RECURSE _HDRS "include/*.h")
file(GLOB_RECURSE _SRCS "src/*.cc")

add_library(${LIBRARY_NAME} STATIC ${_HDRS} ${_SRCS})
target_include_directories(${LIBRARY_NAME} PUBLIC "include")

if (UNIX)
  target_link_libraries(${LIBRARY_NAME} PUBLIC ${PCSCLITE_LIBRARIES})
  target_include_directories(${LIBRARY_NAME} PUBLIC ${PCSCLITE_INCLUDE_DIRS})
endif (UNIX)
