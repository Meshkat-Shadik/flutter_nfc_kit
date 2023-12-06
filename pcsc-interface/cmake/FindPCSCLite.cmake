if(NOT PCSCLITE_FOUND)

# try to use pkgconfig first
find_package(PkgConfig)
pkg_check_modules(PKGCFG_PCSCLITE libpcsclite)

if (PKGCFG_PCSCLITE_FOUND)

  set(PCSCLITE_LIBRARIES ${PKGCFG_PCSCLITE_LIBRARIES})
  set(PCSCLITE_INCLUDE_DIRS ${PKGCFG_PCSCLITE_INCLUDE_DIRS})

else (PKGCFG_PCSCLITE_FOUND)

  find_library(PCSCLITE_LIBRARIES
    NAMES pcsclite
    PATHS /usr/local/lib
          /usr/lib
          ${CMAKE_INSTALL_PREFIX}/lib
  )
  
  find_path(PCSCLITE_INCLUDE_DIRS
    NAMES winscard.h
    PATHS /usr/include/PCSC
          /usr/local/include/PCSC
          ${CMAKE_INSTALL_PREFIX}/include/PCSC
  )

endif (PKGCFG_PCSCLITE_FOUND)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(PCSCLite DEFAULT_MSG PCSCLITE_LIBRARIES PCSCLITE_INCLUDE_DIRS)

message(STATUS "Found PCSCLite library: " ${PCSCLITE_LIBRARIES})
message(STATUS "Found PCSCLite headers: " ${PCSCLITE_INCLUDE_DIRS})

endif(NOT PCSCLITE_FOUND)
